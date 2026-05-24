#!/usr/bin/env python3
"""
make_benchmark.py
=================
Build a benchmark dataset: one .lean file per terminal `aesop` call in Mathlib.

Each file contains a standalone theorem whose statement is the exact goal state
that `aesop` faces in Mathlib (extracted via `extract_goal`), proved by the
original `aesop [clauses]` call verbatim.

Strategy
--------
For each scanned aesop call:
  1. Patch the Mathlib source: insert `extract_goal` before `aesop [clauses]`
  2. Run `lake env lean <patched_file>` — extract_goal emits:
         theorem Foo.extracted_N : Goal := sorry
  3. Replace `sorry` with `aesop [clauses]` + `import Mathlib`
  4. Compile the candidate file to confirm it passes
  5. Write to output_dir/<safe_name>.lean

Only files that successfully compile are written to the dataset.

Usage
-----
    cd AesopImprovement/mathlib_collect
    python3 make_benchmark.py [options]

    # Dry-run (print what would be collected):
    python3 make_benchmark.py --dry-run

    # Full run:
    python3 make_benchmark.py --workers 8 --out-dir aesop_benchmark/

Options
-------
  --mathlib PATH     Mathlib root (default: ../../NeuralTactic/.lake/packages/mathlib)
  --project PATH     Lake project root (default: this directory)
  --out-dir PATH     Output directory (default: aesop_benchmark/)
  --skip FILE        Path to IRRECOVERABLE.md or a plain text file listing
                     file:line pairs to skip (default: IRRECOVERABLE.md)
  --workers N        Parallel Lean processes (default: 4)
  --timeout N        Per-file timeout in seconds (default: 180)
  --dry-run          Print extracted calls without running Lean
  --no-verify        Skip verification compile of each benchmark file
                     (faster but some files may fail)
"""

from __future__ import annotations

import argparse
import json
import os
import re
import shutil
import subprocess
import sys
import tempfile
import time
from concurrent.futures import ProcessPoolExecutor, as_completed
from pathlib import Path

# Reuse scanner from collect_mathlib_aesop
sys.path.insert(0, str(Path(__file__).parent))
from collect_mathlib_aesop import (
    collect_aesop_calls,
    patch_source,
    strip_comments_mask,
    AESOP_CALL_RE,
)

# ---------------------------------------------------------------------------
# extract_goal output parser
# ---------------------------------------------------------------------------

# Matches: `theorem Foo.extracted_N (args) : Type := sorry`
# extract_goal always ends the line with `:= sorry`
def parse_extract_goal_output(output: str) -> list[str]:
    """
    Find all `theorem ... := sorry` blocks emitted by extract_goal.

    extract_goal may emit multi-line theorem declarations:
        theorem Foo.extracted_1 (args) :
          Goal := sorry

    We look for lines starting with `theorem ` and collect until we see
    `:= sorry` (possibly on a continuation line), then stop.
    Returns each complete declaration as a single string.
    """
    decls = []
    lines = output.splitlines()
    i = 0
    while i < len(lines):
        line = lines[i]
        # Strip possible `file:line:col: information:` prefix
        # (lean sometimes emits info messages with location)
        bare = re.sub(r'^.*?:\s*(?:information|info):\s*', '', line)
        if re.match(r'\s*theorem\s+\S', bare):
            # Start collecting a declaration
            collected = [bare.rstrip()]
            # Single-line case: already complete
            if re.search(r':=\s*sorry\s*$', bare):
                decl = re.sub(r'\s+', ' ', bare).strip()
                decls.append(decl)
                i += 1
                continue
            # Multi-line case: collect continuation lines
            j = i + 1
            while j < len(lines):
                cont = lines[j].rstrip()
                cont_bare = re.sub(r'^.*?:\s*(?:information|info):\s*', '', cont)
                collected.append(cont_bare if cont_bare.strip() else cont)
                full = " ".join(c.strip() for c in collected)
                if re.search(r':=\s*sorry\s*$', full):
                    decl = re.sub(r'\s+', ' ', full).strip()
                    decls.append(decl)
                    i = j + 1
                    break
                if j - i > 20 or (j > i + 1 and re.match(r'\S', lines[j]) and
                                   not lines[j].startswith(' ')):
                    i = j
                    break
                j += 1
            else:
                i = j
        else:
            i += 1
    return decls


# ---------------------------------------------------------------------------
# Patching: insert extract_goal before the aesop call
# ---------------------------------------------------------------------------

def patch_for_extract_goal(source: str, aesop_call: str, target_line: int) -> str | None:
    """
    Return a copy of `source` with `extract_goal` inserted immediately before
    the `aesop [clauses]` tactic on `target_line`.

    Handles both inline (`by aesop`) and block (`\\n  aesop`) positions.
    Returns None if the call is not found near target_line.
    """
    lines = source.splitlines(keepends=True)
    collect_call = "extract_goal\n  " + aesop_call

    def is_tactic_occurrence(line: str, pos: int) -> bool:
        """True if pos is a tactic position (not inside @[...] attribute)."""
        # Check bracket depth of @[...] blocks only (not aesop's own args)
        depth = 0
        in_attr = False
        for k, ch in enumerate(line[:pos]):
            if ch == '@' and k + 1 < len(line) and line[k+1] == '[':
                in_attr = True
            if in_attr:
                if ch == '[':
                    depth += 1
                elif ch == ']':
                    depth -= 1
                    if depth <= 0:
                        in_attr = False
                        depth = 0
        if in_attr and depth > 0:
            return False
        before = line[:pos].rstrip()
        if not before:
            return True
        tactic_tokens = ("by", ";", "<;>", "do", "then", "else")
        return any(before.endswith(t) for t in tactic_tokens) or before.strip() == ""

    for i in range(max(0, target_line - 3), min(len(lines), target_line + 2)):
        line = lines[i]
        pos = line.find(aesop_call)
        while pos != -1:
            if is_tactic_occurrence(line, pos):
                before_aesop = line[:pos].rstrip()
                # Special case: after `<;>` or `;` — wrap in (extract_goal; aesop)
                # to avoid the continuation line being parsed as a term, not tactic.
                if before_aesop.endswith("<;>") or before_aesop.endswith(";"):
                    replacement = f"(extract_goal; {aesop_call})"
                    lines[i] = line[:pos] + replacement + line[pos + len(aesop_call):]
                else:
                    # Inline `by aesop` or indented `aesop` on its own line.
                    # Keep on same line: `by extract_goal; aesop [clauses]`
                    replacement = f"extract_goal; {aesop_call}"
                    lines[i] = line[:pos] + replacement + line[pos + len(aesop_call):]
                return "".join(lines)
            pos = line.find(aesop_call, pos + 1)
    return None

# ---------------------------------------------------------------------------
# Safe filename generator
# ---------------------------------------------------------------------------

def safe_filename(source_file: str, line: int) -> str:
    """
    Convert e.g. 'Mathlib/Order/Foo.lean' + line 42 → 'Order_Foo_42.lean'
    """
    rel = source_file.replace("Mathlib/", "").removesuffix(".lean")
    safe = re.sub(r'[/\\]', '_', rel)
    safe = re.sub(r'[^A-Za-z0-9_]', '_', safe)
    return f"{safe}__{line}.lean"

# ---------------------------------------------------------------------------
# Benchmark file template
# ---------------------------------------------------------------------------

BENCHMARK_TEMPLATE = """\
-- Benchmark: {source_file}:{source_line}
-- Original call: {aesop_call}
-- Theorem name: {theorem_name}
import Mathlib
import Mathlib.Tactic
{opens_line}
set_option maxHeartbeats 800000

{theorem_decl}
"""


def make_benchmark_file(
    theorem_decl_sorry: str,
    aesop_call: str,
    source_file: str,
    source_line: int,
    opens: list[str] | None = None,
) -> str:
    """
    Build the content of a benchmark .lean file.
    Replaces `sorry` with `by\\n  aesop [clauses]` in the theorem declaration.
    """
    # extract_goal emits (normalized to one line): `theorem Foo : Bar := sorry`
    # We need: `theorem Foo : Bar := by\n  aesop [clauses]`
    # Replace the trailing `:= sorry` with `:= by\n  aesop [clauses]`
    decl = re.sub(r'\s*:=\s*sorry\s*$', '', theorem_decl_sorry).rstrip()
    decl = decl + f" := by\n  {aesop_call}"

    # Theorem name for metadata
    m = re.match(r'theorem\s+(\S+)', decl)
    theorem_name = m.group(1) if m else "unknown"

    opens_line = ""
    if opens:
        # Filter out opens that are Lean keywords or very common (already in Mathlib scope)
        filtered = [o for o in opens if o and re.match(r'^[A-Z][A-Za-z0-9_\.]*$', o)]
        if filtered:
            opens_line = "\nopen " + " ".join(filtered) + "\n"

    return BENCHMARK_TEMPLATE.format(
        source_file=source_file,
        source_line=source_line,
        aesop_call=aesop_call,
        theorem_name=theorem_name,
        opens_line=opens_line,
        theorem_decl=decl,
    )

# ---------------------------------------------------------------------------
# Worker: process one aesop call
# ---------------------------------------------------------------------------

def process_entry(
    entry: dict,
    mathlib_root: Path,
    project_root: Path,
    out_dir: Path,
    temp_dir: Path,
    timeout: float,
    verify: bool,
) -> dict:
    """
    1. Patch Mathlib source to insert extract_goal
    2. Run lean to capture the extracted theorem declaration
    3. Build a standalone benchmark file
    4. (Optionally) verify it compiles
    5. Write to out_dir

    Returns a status dict.
    """
    sf         = entry["source_file"]
    lineno     = entry["source_line"]
    aesop_call = entry["aesop_call"]

    orig_path = mathlib_root / sf
    try:
        source = orig_path.read_text(encoding="utf-8", errors="replace")
    except Exception as e:
        return {"status": "read_error", "error": str(e), **entry}

    patched = patch_for_extract_goal(source, aesop_call, lineno)
    if patched is None:
        return {"status": "patch_failed", **entry}

    # Use a unique subdirectory per entry to avoid race conditions
    # when multiple workers patch different lines of the same source file.
    import os
    entry_id = f"{sf.replace('/','_')}_{lineno}_{os.getpid()}"
    entry_temp = temp_dir / entry_id
    patched_path = entry_temp / sf
    patched_path.parent.mkdir(parents=True, exist_ok=True)
    patched_path.write_text(patched, encoding="utf-8")

    # Run lean to collect extract_goal output
    t0 = time.monotonic()
    try:
        proc = subprocess.run(
            ["lake", "env", "lean", str(patched_path)],
            cwd=project_root, text=True, capture_output=True, timeout=timeout,
        )
        elapsed = time.monotonic() - t0
    except subprocess.TimeoutExpired:
        return {"status": "timeout", "elapsed_s": timeout, **entry}

    combined = proc.stdout + proc.stderr
    decls = parse_extract_goal_output(combined)
    if not decls:
        return {"status": "no_extract_goal_output", "exit_code": proc.returncode, **entry}

    # Use the LAST extracted theorem (= the one right before the aesop call;
    # earlier ones come from outer `by` blocks if nested).
    # In practice there's usually exactly one.
    theorem_decl_sorry = decls[-1]

    # Build benchmark file content (include opens from original file for name resolution)
    bench_content = make_benchmark_file(
        theorem_decl_sorry, aesop_call, sf, lineno,
        opens=entry.get("opens", []),
    )

    if verify:
        # Write to a temp file and verify compilation
        verify_path = temp_dir / "verify" / safe_filename(sf, lineno)
        verify_path.parent.mkdir(parents=True, exist_ok=True)
        verify_path.write_text(bench_content, encoding="utf-8")
        t1 = time.monotonic()
        try:
            vproc = subprocess.run(
                ["lake", "env", "lean", str(verify_path)],
                cwd=project_root, text=True, capture_output=True, timeout=timeout,
            )
            verify_elapsed = time.monotonic() - t1
        except subprocess.TimeoutExpired:
            return {"status": "verify_timeout", **entry}

        if vproc.returncode != 0:
            errs = [l for l in (vproc.stdout + vproc.stderr).splitlines()
                    if "error:" in l][:2]
            return {"status": "verify_failed", "errors": errs, **entry}
    else:
        verify_elapsed = 0.0

    # Write final benchmark file
    out_path = out_dir / safe_filename(sf, lineno)
    out_path.write_text(bench_content, encoding="utf-8")

    return {
        "status": "ok",
        "out_file": str(out_path.name),
        "elapsed_s": elapsed,
        "verify_elapsed_s": verify_elapsed,
        "theorem_decl": theorem_decl_sorry,
        **entry,
    }

# ---------------------------------------------------------------------------
# Skip-list loader
# ---------------------------------------------------------------------------

def load_skip_set(skip_file: Path) -> set[tuple[str, int]]:
    """
    Load (source_file, line) pairs to skip.
    Accepts IRRECOVERABLE.md or a plain text file with `File:line` lines.
    """
    if not skip_file.exists():
        return set()
    text = skip_file.read_text()
    skip = set()
    # Match patterns like `Mathlib/Foo/Bar.lean` followed by `| NNN |`
    for m in re.finditer(r'`(Mathlib/[^`]+\.lean)`[^\n]*\|\s*(\d+)\s*\|', text):
        skip.add((m.group(1), int(m.group(2))))
    # Also plain `path:line` lines
    for line in text.splitlines():
        m = re.match(r'\s*(Mathlib/\S+\.lean):(\d+)', line)
        if m:
            skip.add((m.group(1), int(m.group(2))))
    return skip

# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main() -> int:
    here = Path(__file__).parent.resolve()

    parser = argparse.ArgumentParser(description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--mathlib",
        default=str(here / "../../NeuralTactic/.lake/packages/mathlib"),
        help="Mathlib root")
    parser.add_argument("--project", default=str(here), help="Lake project root")
    parser.add_argument("--out-dir", default=str(here / "aesop_benchmark"),
        help="Output directory for benchmark .lean files")
    parser.add_argument("--skip", default=str(here / "IRRECOVERABLE.md"),
        help="File listing (source_file, line) pairs to skip")
    parser.add_argument("--workers", type=int, default=4)
    parser.add_argument("--timeout", type=float, default=180.0)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--no-verify", action="store_true",
        help="Skip verification compilation (faster, some files may not compile)")
    args = parser.parse_args()

    mathlib_root = Path(args.mathlib).resolve()
    project_root = Path(args.project).resolve()
    out_dir      = Path(args.out_dir).resolve()
    skip_set     = load_skip_set(Path(args.skip))

    if not mathlib_root.exists():
        sys.exit(f"Mathlib root not found: {mathlib_root}")

    mathlib_src = mathlib_root / "Mathlib"
    lean_files  = sorted(mathlib_src.rglob("*.lean"))
    print(f"Scanning {len(lean_files)} files ...", file=sys.stderr)

    all_entries: list[dict] = []
    for path in lean_files:
        for e in collect_aesop_calls(path, mathlib_root):
            key = (e["source_file"], e["source_line"])
            if key not in skip_set:
                all_entries.append(e)

    print(f"Found {len(all_entries)} aesop calls (after skipping {len(skip_set)} irrecoverable).",
          file=sys.stderr)

    if args.dry_run:
        for e in all_entries[:20]:
            print(f"  {e['source_file']}:{e['source_line']}  {e['aesop_call'][:60]}")
        if len(all_entries) > 20:
            print(f"  ... and {len(all_entries) - 20} more")
        return 0

    out_dir.mkdir(parents=True, exist_ok=True)
    temp_dir = Path(tempfile.mkdtemp(prefix="aesop_bench_"))
    print(f"Output: {out_dir}", file=sys.stderr)
    print(f"Temp:   {temp_dir}", file=sys.stderr)
    print(f"Running {len(all_entries)} entries, {args.workers} workers, "
          f"verify={'yes' if not args.no_verify else 'no'}", file=sys.stderr)

    results = []
    try:
        with ProcessPoolExecutor(max_workers=args.workers) as executor:
            futures = {
                executor.submit(
                    process_entry,
                    entry, mathlib_root, project_root, out_dir, temp_dir,
                    args.timeout, not args.no_verify,
                ): entry
                for entry in all_entries
            }
            completed = 0
            for fut in as_completed(futures):
                completed += 1
                entry = futures[fut]
                try:
                    result = fut.result()
                    results.append(result)
                    status = result["status"]
                    sf = entry["source_file"].split("/")[-1]
                    print(
                        f"[{completed}/{len(all_entries)}] {sf}:{entry['source_line']} "
                        f"→ {status}",
                        file=sys.stderr,
                    )
                except Exception as exc:
                    results.append({"status": "exception", "error": str(exc), **entry})
                    print(f"[{completed}/{len(all_entries)}] EXCEPTION: {exc}",
                          file=sys.stderr)
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

    # Summary
    ok      = sum(1 for r in results if r["status"] == "ok")
    skipped = sum(1 for r in results if r["status"] != "ok")
    print(f"\nDone. {ok} benchmark files written to {out_dir}/", file=sys.stderr)
    from collections import Counter
    statuses = Counter(r["status"] for r in results)
    for s, c in statuses.most_common():
        print(f"  {c:4d}  {s}", file=sys.stderr)

    # Write an index JSONL
    index_path = out_dir / "index.jsonl"
    with index_path.open("w") as f:
        for r in sorted(results, key=lambda x: (x["source_file"], x["source_line"])):
            f.write(json.dumps({
                "file":        r.get("out_file"),
                "status":      r["status"],
                "source_file": r["source_file"],
                "source_line": r["source_line"],
                "aesop_call":  r["aesop_call"],
                "theorem":     r.get("theorem_decl"),
                "error":       r.get("error") or r.get("errors"),
            }, ensure_ascii=False) + "\n")
    print(f"Index written to {index_path}", file=sys.stderr)
    return 0 if ok > 0 else 1


if __name__ == "__main__":
    raise SystemExit(main())
