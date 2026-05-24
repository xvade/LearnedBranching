#!/usr/bin/env python3
"""
collect_by_file.py
==================
For every Mathlib file that contains at least one terminal aesop call:
  1. Replace ALL tactic-position `aesop [...]` calls with `aesop_collect [...]`
  2. Run the patched file once via `lake env lean`
  3. Capture every aesop_collect message (keyed by source line)
  4. Associate messages with their declaration and call site
  5. Restore the file (writes only to a temp directory; originals untouched)

Files without aesop calls are skipped entirely.  All declarations in a
processed file are included even when they have no aesop calls.
Files that time out in the first pass are retried with a longer timeout;
anything still failing is recorded in meta.persistent_timeouts.

Output schema (compact JSON):
{
  "meta": {
    "generated": "<iso8601>",
    "mathlib_root": "<path>",
    "total_files_with_aesop": N,
    "files_ok": N, "files_crashed": N, "files_timeout": N,
    "persistent_timeouts": [...],
    "total_aesop_collect_messages": N
  },
  "files": {
    "Mathlib/Foo/Bar.lean": {
      "status": "ok",          // ok | timeout | crash | error | no_aesop
      "exit_code": 0,
      "elapsed_s": 45.2,
      "error": null,
      "declarations": [
        {
          "name": "Foo.Bar.myLemma",
          "kind": "lemma",
          "start_line": 40,
          "aesop_calls": [
            {
              "line": 45,
              "call": "aesop",
              "messages": ["aesop_collect: [(goal := ..., ...)]"]
            }
          ]
        }
      ]
    }
  }
}

Usage:
    cd AesopImprovement/mathlib_collect
    python3 collect_by_file.py [options]

Options:
  --mathlib PATH      Mathlib root (default: ../../NeuralTactic/.lake/packages/mathlib)
  --project PATH      Lake project root (default: this directory)
  --out PATH          Output JSON (default: mathlib_by_file.json)
  --workers N         Parallel Lean workers (default: 4)
  --timeout N         First-pass per-file timeout in seconds (default: 300)
  --retry-timeout N   Timeout for retry pass (default: 900)
  --max-files N       Process only the first N files (0 = all)
  --dry-run           List files that would be processed; do not run Lean
"""
from __future__ import annotations

import argparse
import json
import re
import shutil
import subprocess
import sys
import tempfile
import time
from concurrent.futures import ProcessPoolExecutor, as_completed
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).parent.resolve()
sys.path.insert(0, str(HERE))
from collect_mathlib_aesop import (
    AESOP_CALL_RE,
    DECL_START_RE,
    MACRO_RESET_RE,
    collect_aesop_calls,
    strip_comments_mask,
    _extract_decl_name,
    _find_bracket_block,
    _looks_like_tactic,
)

MATHLIB_DEFAULT = str(HERE / "../../NeuralTactic/.lake/packages/mathlib")

KIND_RE   = re.compile(
    r'\b(theorem|lemma|def|example|instance|abbrev|class|structure|inductive)\b'
)
NS_RE     = re.compile(r'^namespace\s+(\S+)')
END_NS_RE = re.compile(r'^end\s+(\S+)')
IMPORT_RE = re.compile(r'^(?:public\s+)?import\b')


# ---------------------------------------------------------------------------
# Patch: replace ALL tactic-position aesop calls with aesop_collect
# ---------------------------------------------------------------------------

def patch_all_aesop(source: str) -> tuple[str, bool]:
    """
    Replace every tactic-position `aesop [...]` with `aesop_collect [...]`.
    Returns (patched_source, changed).  Positions are preserved line-for-line
    so source line numbers in Lean diagnostics remain valid.
    """
    lines   = source.splitlines(keepends=True)
    masked  = strip_comments_mask(lines)
    changed = False

    for i, (raw, code) in enumerate(zip(lines, masked)):
        matches = [
            m for m in AESOP_CALL_RE.finditer(code)
            if not code[:m.start()].rstrip().endswith(("@[", ","))
            and _looks_like_tactic(code, m.start())
        ]
        if not matches:
            continue

        new_raw = raw
        for m in reversed(matches):          # right-to-left keeps positions valid
            orig    = new_raw[m.start():m.end()]
            new_raw = new_raw[:m.start()] + "aesop_collect" + orig[len("aesop"):] + new_raw[m.end():]
        lines[i] = new_raw
        changed  = True

    return "".join(lines), changed


# ---------------------------------------------------------------------------
# Declaration scanner — all decls in a file, with their aesop call sites
# ---------------------------------------------------------------------------

def scan_declarations(path: Path, mathlib_root: Path) -> list[dict]:
    """
    Return every top-level declaration as
      {name, kind, start_line, aesop_calls: [{line, call, messages:[]}]}
    Declarations with no aesop calls have aesop_calls=[].
    """
    try:
        source = path.read_text(encoding="utf-8", errors="replace")
    except Exception:
        return []

    lines  = source.splitlines()
    masked = strip_comments_mask(lines)
    ns:    list[str]        = []
    decls: list[dict]       = []
    cur:   dict | None      = None

    for i, (raw, code) in enumerate(zip(lines, masked)):
        sc = code.strip()
        if not sc:
            continue

        m = NS_RE.match(sc)
        if m:
            if cur is not None:
                decls.append(cur); cur = None
            ns.append(m.group(1))
            continue

        m = END_NS_RE.match(sc)
        if m and ns and m.group(1) == ns[-1]:
            if cur is not None:
                decls.append(cur); cur = None
            ns.pop()
            continue

        if IMPORT_RE.match(sc):
            continue

        if MACRO_RESET_RE.match(code):
            if cur is not None:
                decls.append(cur); cur = None
            continue

        if DECL_START_RE.match(code):
            if cur is not None:
                decls.append(cur)
            km   = KIND_RE.search(sc)
            cur  = {
                "name":       _extract_decl_name(sc, ns),
                "kind":       km.group(1) if km else "unknown",
                "start_line": i + 1,
                "aesop_calls": [],
            }
            # fall through: check for aesop on the same line as the decl keyword

        if cur is not None:
            for m2 in AESOP_CALL_RE.finditer(code):
                before = code[:m2.start()].rstrip()
                if before.endswith(("@[", ",")):
                    continue
                if not _looks_like_tactic(code, m2.start()):
                    continue
                cur["aesop_calls"].append({
                    "line":     i + 1,
                    "call":     raw[m2.start():m2.end()].strip(),
                    "messages": [],
                })

    if cur is not None:
        decls.append(cur)
    return decls


# ---------------------------------------------------------------------------
# Output parser — extract ordered aesop_collect messages from stdout
# ---------------------------------------------------------------------------

def parse_aesop_collect_messages(output: str) -> list[str]:
    """
    Extract every `aesop_collect: [...]` message from `lake env lean` stdout
    in emission order.  Uses balanced-bracket scanning so nested `[...]` in
    allowedUnsafeRules don't truncate the match.

    `lake env lean` emits logInfo messages as bare text with no file/line
    prefix.  One message is emitted per successful aesop_collect call; calls
    that fail (crashes, suppressed logInfo in field defaults) emit nothing.
    """
    messages: list[str] = []
    pos = 0
    marker = "aesop_collect:"
    while True:
        idx = output.find(marker, pos)
        if idx == -1:
            break
        i = idx + len(marker)
        while i < len(output) and output[i] in " \t":
            i += 1
        if i >= len(output) or output[i] != "[":
            pos = idx + 1
            continue
        span = _find_bracket_block(output, i)
        if span is None:
            pos = idx + 1
            continue
        messages.append(output[idx : span[1]])
        pos = span[1]
    return messages


# ---------------------------------------------------------------------------
# Worker — process one Mathlib file
# ---------------------------------------------------------------------------

def process_file(
    rel_path:     str,
    mathlib_root: Path,
    project_root: Path,
    temp_dir:     Path,
    timeout:      float,
) -> dict:
    orig_path = mathlib_root / rel_path

    try:
        source = orig_path.read_text(encoding="utf-8", errors="replace")
    except Exception as exc:
        return {"status": "error", "error": str(exc),
                "exit_code": None, "elapsed_s": 0.0, "declarations": []}

    decls             = scan_declarations(orig_path, mathlib_root)
    patched, changed  = patch_all_aesop(source)

    if not changed:
        return {"status": "no_aesop", "exit_code": None, "elapsed_s": 0.0,
                "error": None, "declarations": decls}

    # Write to temp dir (original is never touched)
    patched_path = temp_dir / rel_path
    patched_path.parent.mkdir(parents=True, exist_ok=True)
    patched_path.write_text(patched, encoding="utf-8")

    start     = time.monotonic()
    timed_out = False
    try:
        proc = subprocess.run(
            ["lake", "env", "lean", str(patched_path)],
            cwd=str(project_root),
            text=True,
            capture_output=True,
            timeout=timeout,
        )
        elapsed   = time.monotonic() - start
        output    = proc.stdout + proc.stderr
        exit_code = proc.returncode
        error     = None
    except subprocess.TimeoutExpired as exc:
        elapsed    = time.monotonic() - start
        so = exc.stdout if isinstance(exc.stdout, str) else (exc.stdout or b"").decode(errors="replace")
        se = exc.stderr if isinstance(exc.stderr, str) else (exc.stderr or b"").decode(errors="replace")
        output    = so + se
        exit_code = None
        timed_out = True
        error     = f"timeout after {timeout}s"

    # Attach messages to call sites positionally.
    # aesop_collect emits one bare-text message per successful call in source
    # order (no file:line header in CLI mode).  Calls that don't produce a
    # message (crashes, suppressed logInfo) leave the remaining calls without
    # messages; those appear as messages=[].
    messages = parse_aesop_collect_messages(output)
    all_calls = [call for decl in decls for call in decl["aesop_calls"]]
    for i, call in enumerate(all_calls):
        call["messages"] = [messages[i]] if i < len(messages) else []

    if timed_out:
        status = "timeout"
    elif exit_code is not None and exit_code < 0:
        status = "crash"
    else:
        status = "ok"

    return {
        "status":       status,
        "exit_code":    exit_code,
        "elapsed_s":    round(elapsed, 2),
        "error":        error,
        "declarations": decls,
    }


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main() -> int:
    parser = argparse.ArgumentParser(
        description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument("--mathlib",       default=MATHLIB_DEFAULT)
    parser.add_argument("--project",       default=str(HERE))
    parser.add_argument("--out",           default=str(HERE / "mathlib_by_file.json"))
    parser.add_argument("--workers",       type=int,   default=4)
    parser.add_argument("--timeout",       type=float, default=300.0)
    parser.add_argument("--retry-timeout", type=float, default=900.0)
    parser.add_argument("--max-files",     type=int,   default=0)
    parser.add_argument("--dry-run",       action="store_true")
    args = parser.parse_args()

    mathlib_root = Path(args.mathlib).resolve()
    project_root = Path(args.project).resolve()
    out_path     = Path(args.out).resolve()

    if not mathlib_root.exists():
        sys.exit(f"Mathlib root not found: {mathlib_root}")

    # Identify which files have terminal aesop calls (skip all others)
    all_lean = sorted(mathlib_root.rglob("*.lean"))
    print(f"Scanning {len(all_lean)} Lean files for aesop calls ...", file=sys.stderr)
    aesop_files = [
        str(p.relative_to(mathlib_root))
        for p in all_lean
        if collect_aesop_calls(p, mathlib_root)
    ]
    if args.max_files:
        aesop_files = aesop_files[:args.max_files]

    print(f"{len(aesop_files)} files have terminal aesop calls.", file=sys.stderr)

    if args.dry_run:
        for f in aesop_files[:20]:
            print(f"  {f}")
        if len(aesop_files) > 20:
            print(f"  ... and {len(aesop_files) - 20} more")
        return 0

    temp_dir = Path(tempfile.mkdtemp(prefix="mbf_"))
    print(f"Temp dir:  {temp_dir}", file=sys.stderr)
    print(f"Workers:   {args.workers}  timeout: {args.timeout}s  "
          f"retry-timeout: {args.retry_timeout}s", file=sys.stderr)

    results:  dict[str, dict] = {}
    timeouts: list[str]       = []
    done = 0

    def _run_pass(file_list: list[str], timeout: float, workers: int) -> None:
        nonlocal done
        with ProcessPoolExecutor(max_workers=workers) as ex:
            futs = {
                ex.submit(process_file, rel, mathlib_root, project_root,
                          temp_dir, timeout): rel
                for rel in file_list
            }
            for fut in as_completed(futs):
                rel = futs[fut]
                done += 1
                try:
                    rec = fut.result()
                except Exception as exc:
                    rec = {"status": "error", "error": str(exc),
                           "exit_code": None, "elapsed_s": 0.0, "declarations": []}
                results[rel] = rec
                if rec["status"] == "timeout":
                    timeouts.append(rel)
                n_calls = sum(len(d["aesop_calls"]) for d in rec.get("declarations", []))
                n_msgs  = sum(
                    len(c["messages"])
                    for d in rec.get("declarations", [])
                    for c in d["aesop_calls"]
                )
                print(
                    f"[{done}/{len(aesop_files)}] {rel}: "
                    f"{rec['status']}  calls={n_calls}  msgs={n_msgs}  "
                    f"({rec.get('elapsed_s', 0):.1f}s)",
                    file=sys.stderr,
                )

    try:
        # First pass
        _run_pass(aesop_files, args.timeout, args.workers)

        # Retry timed-out files with a longer timeout
        if timeouts:
            first_timeouts = list(timeouts)
            timeouts.clear()
            print(
                f"\nRetrying {len(first_timeouts)} timed-out files "
                f"(timeout={args.retry_timeout}s) ...",
                file=sys.stderr,
            )
            _run_pass(first_timeouts, args.retry_timeout,
                      max(1, args.workers // 2))

    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

    # Summary
    persistent_timeouts = [r for r, v in results.items() if v["status"] == "timeout"]
    n_ok      = sum(1 for v in results.values() if v["status"] == "ok")
    n_crash   = sum(1 for v in results.values() if v["status"] == "crash")
    n_timeout = sum(1 for v in results.values() if v["status"] == "timeout")
    total_msgs = sum(
        len(c["messages"])
        for v in results.values()
        for d in v.get("declarations", [])
        for c in d["aesop_calls"]
    )

    payload = {
        "meta": {
            "generated":                    datetime.now(timezone.utc).isoformat(),
            "mathlib_root":                 str(mathlib_root),
            "total_files_with_aesop":       len(aesop_files),
            "files_ok":                     n_ok,
            "files_crashed":                n_crash,
            "files_timeout":                n_timeout,
            "persistent_timeouts":          persistent_timeouts,
            "total_aesop_collect_messages": total_msgs,
        },
        "files": results,
    }

    out_path.parent.mkdir(parents=True, exist_ok=True)
    with out_path.open("w", encoding="utf-8") as f:
        json.dump(payload, f, ensure_ascii=False, separators=(",", ":"))

    size_mb = out_path.stat().st_size / 1_000_000
    print(f"\nWrote {out_path}  ({size_mb:.1f} MB)", file=sys.stderr)
    print(f"ok={n_ok}  crash={n_crash}  timeout={n_timeout}  "
          f"messages={total_msgs}", file=sys.stderr)
    if persistent_timeouts:
        print(f"Persistent timeouts ({len(persistent_timeouts)}):", file=sys.stderr)
        for f in persistent_timeouts:
            print(f"  {f}", file=sys.stderr)

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
