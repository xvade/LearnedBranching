#!/usr/bin/env python3
"""
list_files.py
=============
Scan Mathlib source files directly and produce two lists:

  files_with_terminal_aesop.txt   -- files containing at least one terminal aesop call
  files_with_aesop_tags.txt       -- files containing at least one @[aesop ...] tag

Output is written alongside this script (or alongside the audit JSONL for tags).

Usage:
    python3 list_files.py [--mathlib PATH]
"""

import argparse
import sys
from pathlib import Path

HERE  = Path(__file__).parent
AUDIT = HERE.parent / "aesop_audit"

# Reuse proven scanners from the two existing scripts
sys.path.insert(0, str(HERE))
sys.path.insert(0, str(AUDIT))
from collect_mathlib_aesop import collect_aesop_calls   # terminal aesop tactic calls
from collect_aesop_tags import scan_file as scan_aesop_tags  # @[aesop ...] attributes


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--mathlib",
        default=str(HERE / "../../NeuralTactic/.lake/packages/mathlib"),
        help="Path to the Mathlib root")
    args = parser.parse_args()

    mathlib_root = Path(args.mathlib).resolve()
    if not mathlib_root.exists():
        sys.exit(f"Mathlib root not found: {mathlib_root}")

    lean_files = sorted(mathlib_root.rglob("*.lean"))
    print(f"Scanning {len(lean_files)} files under {mathlib_root} ...", file=sys.stderr)

    terminal_files: list[str] = []
    tag_files:      list[str] = []

    for i, path in enumerate(lean_files, 1):
        if i % 500 == 0:
            print(f"  {i}/{len(lean_files)} ...", file=sys.stderr)

        rel = str(path.relative_to(mathlib_root))

        if collect_aesop_calls(path, mathlib_root):
            terminal_files.append(rel)

        if scan_aesop_tags(path, mathlib_root):
            tag_files.append(rel)

    out1 = HERE  / "files_with_terminal_aesop.txt"
    out2 = AUDIT / "files_with_aesop_tags.txt"

    out1.write_text("\n".join(terminal_files) + "\n")
    out2.write_text("\n".join(tag_files)      + "\n")

    print(f"Terminal aesop: {len(terminal_files)} files → {out1}", file=sys.stderr)
    print(f"Aesop tags:     {len(tag_files)} files → {out2}",      file=sys.stderr)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
