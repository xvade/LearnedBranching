#!/usr/bin/env python3
"""
retry_sigsegv.py
================
Retry aesop_collect for files that crashed with exit code 139 (stack overflow).

Strategy:
  1. Try running the whole patched file with --tstack 65536 (64 MB stack).
  2. If still crashing, process each declaration individually:
     - Truncate the file right after the target declaration.
     - Patch aesop→aesop_collect ONLY within the target declaration.
     - Earlier aesop calls remain plain `aesop` and emit no messages.
     - Run lean → get exactly the messages for the target declaration.
  3. Merge recovered messages back into mathlib_by_file.json.

Usage:
    cd AesopImprovement/mathlib_collect
    python3 retry_sigsegv.py [--json PATH] [--mathlib PATH] [--project PATH]
"""
from __future__ import annotations

import argparse
import json
import shutil
import subprocess
import sys
import tempfile
import time
from pathlib import Path

HERE = Path(__file__).parent.resolve()
sys.path.insert(0, str(HERE))

from collect_mathlib_aesop import (
    AESOP_CALL_RE,
    strip_comments_mask,
    _looks_like_tactic,
)
from collect_by_file import (
    scan_declarations,
    patch_all_aesop,
    parse_aesop_collect_messages,
)

MATHLIB_DEFAULT = str(HERE / "../../NeuralTactic/.lake/packages/mathlib")
STACK_KB = 65536    # 64 MB — first attempt (16× typical default)
STACK_KB_BIG = 524288  # 512 MB — for crashes that survive 64 MB


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def patch_range_only(source: str, start_line: int, end_line: int) -> str:
    """
    Replace tactic-position `aesop` with `aesop_collect` only in lines
    [start_line, end_line] (1-based, inclusive).  Lines outside the range
    are left as original plain `aesop`.
    """
    lines  = source.splitlines(keepends=True)
    masked = strip_comments_mask(lines)

    for i, (raw, code) in enumerate(zip(lines, masked)):
        lineno = i + 1
        if lineno < start_line or lineno > end_line:
            continue
        matches = [
            m for m in AESOP_CALL_RE.finditer(code)
            if not code[:m.start()].rstrip().endswith(("@[", ","))
            and _looks_like_tactic(code, m.start())
        ]
        if not matches:
            continue
        new_raw = raw
        for m in reversed(matches):
            orig    = new_raw[m.start():m.end()]
            new_raw = (new_raw[:m.start()] + "aesop_collect"
                       + orig[len("aesop"):] + new_raw[m.end():])
        lines[i] = new_raw

    return "".join(lines)


def run_lean(
    path: Path,
    project_root: Path,
    timeout: float,
    extra_args: list[str] | None = None,
) -> tuple[str, int | None, float, bool]:
    """Run `lake env lean [extra_args] path`. Returns (output, exit_code, elapsed, timed_out)."""
    cmd = ["lake", "env", "lean"] + (extra_args or []) + [str(path)]
    start = time.monotonic()
    try:
        proc = subprocess.run(
            cmd, cwd=str(project_root),
            text=True, capture_output=True, timeout=timeout,
        )
        return proc.stdout + proc.stderr, proc.returncode, time.monotonic() - start, False
    except subprocess.TimeoutExpired as exc:
        so = exc.stdout if isinstance(exc.stdout, str) else (exc.stdout or b"").decode(errors="replace")
        se = exc.stderr if isinstance(exc.stderr, str) else (exc.stderr or b"").decode(errors="replace")
        return so + se, None, time.monotonic() - start, True


def find_decl_end(decl_index: int, all_decls: list[dict], total_lines: int) -> int:
    """Return the last line (1-based, inclusive) belonging to decl_index."""
    if decl_index + 1 < len(all_decls):
        return all_decls[decl_index + 1]["start_line"] - 1
    return total_lines


def is_sigsegv_file(fdata: dict) -> bool:
    return fdata.get("exit_code") == 139 and any(
        not c["messages"]
        for d in fdata.get("declarations", [])
        for c in d["aesop_calls"]
    )


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main() -> int:
    parser = argparse.ArgumentParser(
        description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument("--json",    default=str(HERE / "mathlib_by_file.json"),
                        help="Path to mathlib_by_file.json")
    parser.add_argument("--mathlib", default=MATHLIB_DEFAULT,
                        help="Mathlib root")
    parser.add_argument("--project", default=str(HERE),
                        help="Lake project root")
    parser.add_argument("--timeout", type=float, default=600.0,
                        help="Per-run timeout in seconds")
    args = parser.parse_args()

    json_path    = Path(args.json).resolve()
    mathlib_root = Path(args.mathlib).resolve()
    project_root = Path(args.project).resolve()

    print(f"Loading {json_path} ...", file=sys.stderr)
    data = json.loads(json_path.read_text(encoding="utf-8"))

    sigsegv = {
        rel: fdata
        for rel, fdata in data["files"].items()
        if is_sigsegv_file(fdata)
    }

    if not sigsegv:
        print("No SIGSEGV files with missing messages found.", file=sys.stderr)
        return 0

    print(f"Found {len(sigsegv)} SIGSEGV file(s) with unresolved calls:", file=sys.stderr)
    for f in sigsegv:
        n_missing = sum(
            1 for d in sigsegv[f].get("declarations", [])
            for c in d["aesop_calls"] if not c["messages"]
        )
        print(f"  {f}  ({n_missing} missing messages)", file=sys.stderr)

    temp_dir = Path(tempfile.mkdtemp(prefix="retry_sv_"))
    print(f"Temp dir: {temp_dir}", file=sys.stderr)

    try:
        for rel, fdata in sigsegv.items():
            orig_path   = mathlib_root / rel
            source      = orig_path.read_text(encoding="utf-8", errors="replace")
            total_lines = len(source.splitlines())
            decls       = scan_declarations(orig_path, mathlib_root)
            patched, _  = patch_all_aesop(source)

            temp_path = temp_dir / rel
            temp_path.parent.mkdir(parents=True, exist_ok=True)

            # ── Attempt 1: whole file with 4× stack ──────────────────────────
            print(f"\n[{rel}]", file=sys.stderr)
            print(f"  Attempt 1: full file  --tstack {STACK_KB} ...", file=sys.stderr)
            temp_path.write_text(patched, encoding="utf-8")
            output, exit_code, elapsed, timed_out = run_lean(
                temp_path, project_root, args.timeout,
                extra_args=["--tstack", str(STACK_KB)],
            )
            print(f"  exit={exit_code}  elapsed={elapsed:.1f}s  timed_out={timed_out}",
                  file=sys.stderr)

            if not timed_out and exit_code != 139:
                messages  = parse_aesop_collect_messages(output)
                all_calls = [c for d in decls for c in d["aesop_calls"]]
                for i, call in enumerate(all_calls):
                    call["messages"] = [messages[i]] if i < len(messages) else []
                fdata["declarations"] = decls
                fdata["status"]       = "ok"
                fdata["exit_code"]    = exit_code
                fdata["elapsed_s"]    = round(elapsed, 2)
                recovered = sum(1 for c in all_calls if c["messages"])
                print(f"  Recovered {recovered}/{len(all_calls)} messages.", file=sys.stderr)
                continue

            # ── Attempt 2: per-declaration truncation ─────────────────────────
            print("  Still crashing — switching to per-declaration truncation.",
                  file=sys.stderr)

            decls_with_aesop = [
                (idx, d) for idx, d in enumerate(decls) if d["aesop_calls"]
            ]

            for d_idx, decl in decls_with_aesop:
                start_line = decl["start_line"]
                end_line   = find_decl_end(d_idx, decls, total_lines)

                # Build: original lines up to start_line−1 (plain aesop),
                # then patched lines start_line..end_line (aesop_collect).
                truncated_source = "\n".join(source.splitlines()[:end_line]) + "\n"
                truncated_patched = patch_range_only(truncated_source, start_line, end_line)

                temp_path.write_text(truncated_patched, encoding="utf-8")
                output, exit_code, elapsed, timed_out = run_lean(
                    temp_path, project_root, args.timeout,
                    extra_args=["--tstack", str(STACK_KB)],
                )
                messages = parse_aesop_collect_messages(output)
                n_calls  = len(decl["aesop_calls"])

                # If still crashing with 64 MB stack, retry with 512 MB
                if exit_code == 139 and not timed_out:
                    print(
                        f"    {decl['name']}  still crashing — retrying with"
                        f" --tstack {STACK_KB_BIG} ...",
                        file=sys.stderr,
                    )
                    temp_path.write_text(truncated_patched, encoding="utf-8")
                    output2, exit_code2, elapsed2, timed_out2 = run_lean(
                        temp_path, project_root, args.timeout,
                        extra_args=["--tstack", str(STACK_KB_BIG)],
                    )
                    if not timed_out2 and exit_code2 != 139:
                        messages  = parse_aesop_collect_messages(output2)
                        exit_code = exit_code2
                        elapsed   = elapsed2

                print(
                    f"    {decl['name']}  lines {start_line}–{end_line}  "
                    f"exit={exit_code}  msgs={len(messages)}/{n_calls}  "
                    f"({elapsed:.1f}s)",
                    file=sys.stderr,
                )

                for i, call in enumerate(decl["aesop_calls"]):
                    if n_calls == 1:
                        # Single call may produce multiple messages via <;> combinator
                        call["messages"] = messages
                    else:
                        call["messages"] = [messages[i]] if i < len(messages) else []

            fdata["declarations"] = decls
            fdata["status"]       = "ok"

    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

    # Recompute totals
    total_msgs = sum(
        len(c["messages"])
        for v in data["files"].values()
        for d in v.get("declarations", [])
        for c in d["aesop_calls"]
    )
    data["meta"]["total_aesop_collect_messages"] = total_msgs
    data["meta"]["files_crashed"] = sum(
        1 for v in data["files"].values()
        if v.get("exit_code") == 139
        and any(not c["messages"] for d in v.get("declarations", []) for c in d["aesop_calls"])
    )

    json_path.write_text(
        json.dumps(data, ensure_ascii=False, separators=(",", ":")),
        encoding="utf-8",
    )
    print(f"\nUpdated {json_path}  (total messages: {total_msgs})", file=sys.stderr)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
