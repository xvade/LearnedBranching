#!/usr/bin/env python3
"""
collect_mathlib_aesop.py
========================
Build a dataset of every terminal `aesop` call in Mathlib, annotated with
the rule choices recorded by `aesop_collect`.

Strategy
--------
Instead of re-elaborating theorems in isolation (which fails because theorems
depend on helpers defined earlier in the same file), this script patches
Mathlib source files **in-place** in a temp directory: it replaces each
terminal `aesop [...]` call with `aesop_collect [...]`, then runs
`lake env lean <patched_file>` from the mathlib_collect project root.

This gives the patched file the full Lean context it was originally compiled
with (all imports, namespace, prior helpers) while our `aesop_collect` fork
emits the trace messages.

One aesop call is patched at a time (separate temp files), so traces are
unambiguously matched to their source locations.

Usage
-----
    cd AesopImprovement/mathlib_collect
    python3 collect_mathlib_aesop.py [options]

    # Dry-run (print extracted calls, no Lean):
    python3 collect_mathlib_aesop.py --dry-run

    # Full run, 8 workers:
    python3 collect_mathlib_aesop.py --workers 8 --out mathlib_aesop_pairs.jsonl

Options
-------
  --mathlib PATH    Mathlib root (default: ../../NeuralTactic/.lake/packages/mathlib)
  --project PATH    Lake project root (default: this directory)
  --out PATH        Output JSONL (default: mathlib_aesop_pairs.jsonl)
  --max-files N     Max Mathlib files to scan (default: all)
  --workers N       Parallel Lean processes (default: 4)
  --timeout N       Per-file timeout in seconds (default: 180)
  --dry-run         Print extracted calls only; do not run Lean
  --keep-temp       Keep patched temp files

Output format
-------------
One JSONL record per choice-point from aesop_collect, PLUS one record for
every aesop call that produced an empty trace (closed by norm/safe only):

  {
    "source_file"       : "Mathlib/Order/Foo.lean",
    "source_line"       : 42,
    "theorem_name"      : "Foo.bar",
    "aesop_call"        : "aesop (add safe apply Nat.lt_succ)",
    "exit_code"         : 0,
    "elapsed_s"         : 12.3,
    "run_error"         : null,
    "trace_entries"     : [...],   // all parsed choice-point dicts
    "goal"              : "⊢ ...",
    "allowedUnsafeRules": [...],
    "chosen"            : "unsafe|apply|global|Foo.bar"
  }
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

# ---------------------------------------------------------------------------
# Lean source scanning
# ---------------------------------------------------------------------------

# Matches: `  by aesop`, `  by aesop (...)`, `by aesop`, `:= by aesop ...`
# but NOT: @[aesop ...], `-- aesop`, `aesop?`, `aesop_collect`, `aesop_with_overrides`
AESOP_CALL_RE = re.compile(
    r'\baesop\b(?!\s*[?_])(\s*\([^)]*(?:\([^)]*\)[^)]*)*\))*',
)

DECL_START_RE = re.compile(
    r'^\s*(?:@\[[^\]]*\]\s*)*'       # zero or more @[...] attrs (no nesting needed here)
    r'(?:(?:private|protected|noncomputable|unsafe|scoped|local)\s+)*'
    r'(?:theorem|lemma|def|example|instance|abbrev|class|structure|inductive)\b'
)

IMPORT_RE     = re.compile(r'^(?:public\s+)?import\s+(\S+)')
OPEN_RE       = re.compile(r'^open\s+(.*?)(?:\s+in\s*$|$)')
NAMESPACE_RE  = re.compile(r'^namespace\s+(\S+)')
END_NS_RE     = re.compile(r'^end\s+(\S+)')
VARIABLE_RE   = re.compile(r'^\s*variable\b')

# Meta-level constructs whose bodies may contain `aesop` inside quasiquotations
# (`(tactic| aesop ...)`).  These are NOT proof contexts, so reset declaration
# tracking when encountered.
MACRO_RESET_RE = re.compile(
    r'^\s*(?:(?:private|protected|scoped|local)\s+)*'
    r'(?:macro|macro_rules|syntax|notation3?|elab(?:_rules)?)\b'
)


def strip_comments_mask(lines: list[str]) -> list[str]:
    """Return lines with comments replaced by spaces (lightweight Lean lexer)."""
    masked: list[str] = []
    depth = 0
    for line in lines:
        out: list[str] = []
        i = 0
        while i < len(line):
            pair = line[i:i+2]
            if depth == 0 and pair == "--":
                out.extend(" " * len(line[i:]))
                break
            if pair == "/-":
                depth += 1
                out.extend("  ")
                i += 2
                continue
            if depth > 0:
                if pair == "-/":
                    depth -= 1
                    out.extend("  ")
                    i += 2
                else:
                    out.append(" ")
                    i += 1
                continue
            out.append(line[i])
            i += 1
        masked.append("".join(out))
    return masked


def collect_aesop_calls(path: Path, mathlib_root: Path) -> list[dict]:
    """
    Scan a Mathlib source file.  Return one entry per terminal `aesop` tactic
    call (i.e. `by aesop`, `:= by aesop`, inline `<;> aesop`, etc.).

    Each entry:
      source_file, source_line (1-based), theorem_name, imports, opens,
      theorem_src (full decl text), aesop_call (just the `aesop [...]` token)
    """
    try:
        source = path.read_text(encoding="utf-8", errors="replace")
    except Exception:
        return []

    lines   = source.splitlines()
    masked  = strip_comments_mask(lines)
    rel     = str(path.relative_to(mathlib_root))

    # Track imports / opens / namespaces / variables while scanning
    imports: list[str]        = [_path_to_module(rel)]   # the file's own module
    opens: list[str]          = []
    namespace_stack: list[str] = []
    # variable blocks accumulated so far (used as preamble for generated files)
    variable_lines: list[str] = []

    results: list[dict] = []

    # State machine: track current declaration block
    in_decl       = False
    decl_start_ln = 0          # 0-based
    decl_lines: list[str] = []
    decl_name     = ""

    def flush_decl():
        nonlocal in_decl, decl_lines, decl_name, decl_start_ln
        in_decl    = False
        decl_lines = []
        decl_name  = ""

    for i, (raw, code) in enumerate(zip(lines, masked)):
        stripped_code = code.strip()

        # Track imports
        m = IMPORT_RE.match(stripped_code)
        if m:
            imports.append(m.group(1))
            flush_decl()
            continue

        # Track opens
        m = OPEN_RE.match(stripped_code)
        if m and not stripped_code.startswith("open in"):
            opened = m.group(1).strip()
            # `open Foo.Bar Baz in` lines are scoped; skip them
            if not opened.endswith(" in"):
                for tok in opened.split():
                    opens.append(tok)
            flush_decl()
            continue

        # Track namespaces
        m = NAMESPACE_RE.match(stripped_code)
        if m:
            namespace_stack.append(m.group(1))
            flush_decl()
            continue
        m = END_NS_RE.match(stripped_code)
        if m and namespace_stack and m.group(1) == namespace_stack[-1]:
            namespace_stack.pop()
            flush_decl()
            continue

        # Track variable declarations (needed for theorems that reference them)
        if VARIABLE_RE.match(code):
            variable_lines.append(raw)
            flush_decl()
            continue

        # Meta-level definitions (macro, syntax, notation, elab): their bodies
        # may contain `aesop` inside quasiquotations — not tactic invocations.
        if MACRO_RESET_RE.match(code):
            flush_decl()
            continue

        # Detect start of a new declaration
        if DECL_START_RE.match(code):
            flush_decl()
            in_decl       = True
            decl_start_ln = i
            decl_lines    = [raw]
            decl_name     = _extract_decl_name(stripped_code, namespace_stack)
            # Fall through — do NOT continue, so aesop on the same line is found below

        if in_decl:
            # Only append if this is a continuation line (already appended on decl-start)
            if not DECL_START_RE.match(code):
                decl_lines.append(raw)
            # Look for aesop call in the masked code line
            for m in AESOP_CALL_RE.finditer(code):
                # Make sure it's not inside an @[aesop ...] attribute
                before = code[:m.start()].rstrip()
                if before.endswith("@[") or before.endswith(","):
                    continue
                # Must look like a tactic position: after `by`, `;`, `<;>`, `(`, newline
                if not _looks_like_tactic(code, m.start()):
                    continue
                aesop_call = raw[m.start():m.end()].strip()
                results.append({
                    "source_file":  rel,
                    "source_line":  i + 1,          # 1-based
                    "theorem_name": decl_name,
                    "imports":      list(dict.fromkeys(imports)),
                    "opens":        list(dict.fromkeys(opens)),
                    "variables":    list(variable_lines),   # module-scope variable blocks
                    "theorem_src":  "\n".join(decl_lines),
                    "aesop_call":   aesop_call,
                })
            # End of declaration heuristic: next non-blank DECL_START line resets
            # (handled above; nothing more needed here)

    return results


def _path_to_module(rel: str) -> str:
    """Convert e.g. 'Mathlib/Order/Foo.lean' → 'Mathlib.Order.Foo'."""
    return rel.replace("/", ".").removesuffix(".lean")


def _extract_decl_name(code_line: str, ns_stack: list[str]) -> str:
    tokens = code_line.split()
    kws = {"theorem","lemma","def","example","instance","abbrev",
           "private","protected","noncomputable","unsafe","@["}
    for i, t in enumerate(tokens):
        if t.lstrip("@").rstrip("]") in kws:
            continue
        if t.startswith("@"):
            continue
        # found candidate
        name = t.rstrip(":")
        if ns_stack:
            return ".".join(ns_stack) + "." + name
        return name
    return "<unknown>"


def _looks_like_tactic(code: str, pos: int) -> bool:
    """
    Return True if position `pos` in `code` looks like a tactic position.
    We accept: after `by`, after `;` or `<;>`, after `(`, at line start.
    """
    before = code[:pos].rstrip()
    if not before:
        return True
    if before.endswith(("by", ";", "<;>", "(", "do", "then", "else")):
        return True
    # multi-tactic block: start of the line is just whitespace before aesop
    if code[:pos].strip() == "":
        return True
    return False

# ---------------------------------------------------------------------------
# Lean file generation
# ---------------------------------------------------------------------------

def patch_source(source: str, aesop_call: str, target_line: int) -> str | None:
    """
    Return a copy of `source` with `aesop_call` → `aesop_collect [clauses]`
    on `target_line` (1-based).  Only replaces tactic-position occurrences
    (after `by`, `<;>`, `;`, `(`, or at line start), not @[aesop ...] attrs.
    Returns None if no tactic-position occurrence is found near that line.
    """
    lines = source.splitlines(keepends=True)
    collect_call = "aesop_collect" + aesop_call[len("aesop"):]

    def is_tactic_occurrence(line: str, pos: int) -> bool:
        """True if `aesop_call` at `pos` is in tactic position, not in @[...]."""
        before = line[:pos].rstrip()
        # Reject if we're inside an attribute bracket @[...]
        # Simple heuristic: if the line (up to pos) has more '[' than ']' after '@'
        bracket_depth = 0
        in_attr = False
        for ch in line[:pos]:
            if ch == '@':
                in_attr = True
            if in_attr:
                if ch == '[':
                    bracket_depth += 1
                elif ch == ']':
                    bracket_depth -= 1
                    if bracket_depth <= 0:
                        in_attr = False
        if in_attr and bracket_depth > 0:
            return False
        # Blacklist: tactic position unless before ends with a known non-tactic token.
        # Closing/separator chars are never tactic-intro:
        if not before:
            return True
        if before[-1] in {",", ")", "]", "}"}:
            return False
        # If before ends with a word, it must be a tactic-introducing keyword:
        m = re.search(r'\b([A-Za-z_]\w*)$', before)
        if m and m.group(1) not in {"by", "do", "then", "else"}:
            return False
        return True

    for i in range(max(0, target_line - 3), min(len(lines), target_line + 2)):
        line = lines[i]
        pos = line.find(aesop_call)
        while pos != -1:
            if is_tactic_occurrence(line, pos):
                lines[i] = line[:pos] + collect_call + line[pos + len(aesop_call):]
                return "".join(lines)
            pos = line.find(aesop_call, pos + 1)
    return None

# ---------------------------------------------------------------------------
# aesop_collect message parser
# ---------------------------------------------------------------------------

AESOP_COLLECT_MARKER = "aesop_collect:"

ENTRY_RE = re.compile(
    r'\(goal\s*:=\s*(.*?),\s*'
    r'allowedUnsafeRules\s*:=\s*\[(.*?)\],\s*'
    r'chosen\s*:=\s*(.*?)\)',
    re.DOTALL,
)


def _find_bracket_block(text: str, start: int) -> tuple[int, int] | None:
    """
    Given `text` and the position of an opening `[` at `start`,
    return (start, end+1) for the balanced `[...]` block.
    Returns None if brackets are unbalanced.
    """
    depth = 0
    for i in range(start, len(text)):
        if text[i] == '[':
            depth += 1
        elif text[i] == ']':
            depth -= 1
            if depth == 0:
                return (start, i + 1)
    return None


def parse_collect_output(output: str) -> list[dict] | None:
    """
    Find and parse an `aesop_collect: [...]` block anywhere in `output`.
    Uses balanced-bracket scanning so nested `[...]` in allowedUnsafeRules
    don't truncate the match.
    Returns list of choice-point dicts (possibly empty), or None if not found.
    """
    pos = output.find(AESOP_COLLECT_MARKER)
    if pos == -1:
        return None
    # Skip past marker and optional whitespace
    i = pos + len(AESOP_COLLECT_MARKER)
    while i < len(output) and output[i] in ' \t':
        i += 1
    if i >= len(output) or output[i] != '[':
        return None
    span = _find_bracket_block(output, i)
    if span is None:
        return None
    inner = output[span[0]+1:span[1]-1].strip()   # content between outer [ and ]
    if not inner:
        return []
    entries = []
    for em in ENTRY_RE.finditer(inner):
        goal      = em.group(1).strip()
        rules_raw = em.group(2).strip()
        chosen    = em.group(3).strip()
        allowed   = [r.strip() for r in rules_raw.split(",") if r.strip()]
        entries.append({
            "goal":               goal,
            "allowedUnsafeRules": allowed,
            "chosen":             chosen,
        })
    return entries

# ---------------------------------------------------------------------------
# Lean runner
# ---------------------------------------------------------------------------

def run_lean_file(
    lean_file: Path,
    project_root: Path,
    timeout: float,
) -> tuple[int | None, str, str, float, str | None]:
    start = time.monotonic()
    try:
        proc = subprocess.run(
            ["lake", "env", "lean", str(lean_file)],
            cwd=project_root,
            text=True,
            capture_output=True,
            timeout=timeout,
        )
        elapsed = time.monotonic() - start
        return proc.returncode, proc.stdout, proc.stderr, elapsed, None
    except subprocess.TimeoutExpired as e:
        elapsed = time.monotonic() - start
        stdout = e.stdout if isinstance(e.stdout, str) else (e.stdout or b"").decode(errors="replace")
        stderr = e.stderr if isinstance(e.stderr, str) else (e.stderr or b"").decode(errors="replace")
        return None, stdout, stderr, elapsed, f"timeout after {timeout}s"


# ---------------------------------------------------------------------------
# Worker: process one entry (one aesop call in one Mathlib file)
# ---------------------------------------------------------------------------

def process_entry(
    entry_id: int,
    entry: dict,
    mathlib_root: Path,
    project_root: Path,
    temp_dir: Path,
    timeout: float,
) -> list[dict]:
    """
    Patch the original Mathlib source file (replacing `aesop` → `aesop_collect`
    on the target line), write it to a temp location that mirrors the Mathlib
    package path, then run `lake env lean <patched_file>` from project_root.

    Returns a list of JSONL records (one per choice point, or one null-trace
    record if aesop closed with no unsafe choices / if elaboration failed).
    """
    orig_rel  = entry["source_file"]           # e.g. "Mathlib/Order/Foo.lean"
    orig_path = mathlib_root / orig_rel
    aesop_call = entry["aesop_call"]
    src_line   = entry["source_line"]

    # Read original source
    try:
        source = orig_path.read_text(encoding="utf-8", errors="replace")
    except Exception as e:
        return [_null_record(entry, None, None, 0.0, str(e))]

    # Patch: replace `aesop [...]` → `aesop_collect [...]` on that line
    patched = patch_source(source, aesop_call, src_line)
    if patched is None:
        return [_null_record(entry, None, None, 0.0,
                             f"aesop call not found near line {src_line}")]

    # Write to temp dir mirroring the Mathlib package path so Lake can find deps
    # The patched file goes into temp_dir/<orig_rel> so relative imports still work.
    patched_path = temp_dir / orig_rel
    patched_path.parent.mkdir(parents=True, exist_ok=True)
    patched_path.write_text(patched, encoding="utf-8")

    exit_code, stdout, stderr, elapsed, run_err = run_lean_file(
        patched_path, project_root, timeout
    )
    combined = stdout + stderr

    # Parse the aesop_collect trace from the combined output.
    # Accept exit_code != 0 if the trace is present — some Mathlib files have
    # pre-existing elaboration errors on other declarations (API drift vs the
    # compiled olean), but our patched theorem still runs and emits its trace.
    trace = parse_collect_output(combined)
    effective_ok = (exit_code == 0) or (trace is not None)

    base = {
        "source_file":   entry["source_file"],
        "source_line":   entry["source_line"],
        "theorem_name":  entry["theorem_name"],
        "aesop_call":    entry["aesop_call"],
        "exit_code":     exit_code,
        "elapsed_s":     elapsed,
        "run_error":     run_err if not effective_ok else None,
        "trace_entries": trace if trace is not None else [],
    }

    if trace is not None:
        # aesop_collect ran (trace may be empty [] if closed by norm/safe only)
        if trace:
            records = []
            for cp in trace:
                rec = dict(base)
                rec.update({
                    "goal":               cp["goal"],
                    "allowedUnsafeRules": cp["allowedUnsafeRules"],
                    "chosen":             cp["chosen"],
                })
                records.append(rec)
            return records
        else:
            # Empty trace: aesop_collect ran and closed goal without unsafe choices
            base.update({"goal": None, "allowedUnsafeRules": None, "chosen": None})
            return [base]
    else:
        # aesop_collect output not found — true failure (SIGSEGV, error before theorem)
        return [_null_record(entry, exit_code, run_err, elapsed,
                             run_err or "elaboration failed")]


def _null_record(entry: dict, exit_code, run_err, elapsed, error) -> dict:
    return {
        "source_file":    entry["source_file"],
        "source_line":    entry["source_line"],
        "theorem_name":   entry["theorem_name"],
        "aesop_call":     entry["aesop_call"],
        "exit_code":      exit_code,
        "elapsed_s":      elapsed,
        "run_error":      run_err or error,
        "trace_entries":  [],
        "goal":           None,
        "allowedUnsafeRules": None,
        "chosen":         None,
    }


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main() -> int:
    here = Path(__file__).parent.resolve()

    parser = argparse.ArgumentParser(description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--mathlib",
        default=str(here / "../../NeuralTactic/.lake/packages/mathlib"),
        help="Path to the Mathlib root (containing Mathlib/)")
    parser.add_argument("--project",
        default=str(here),
        help="Lake project root (default: this directory)")
    parser.add_argument("--out",
        default=str(here / "mathlib_aesop_pairs.jsonl"),
        help="Output JSONL path")
    parser.add_argument("--max-files", type=int, default=0,
        help="Max Mathlib .lean files to scan (0 = all)")
    parser.add_argument("--workers", type=int, default=4,
        help="Parallel Lean processes")
    parser.add_argument("--timeout", type=float, default=180.0,
        help="Per-file timeout in seconds (default 180; import Mathlib takes ~30s)")
    parser.add_argument("--dry-run", action="store_true",
        help="Print extracted entries, do not run Lean")
    parser.add_argument("--keep-temp", action="store_true",
        help="Keep temporary Lean files")
    args = parser.parse_args()

    mathlib_root = Path(args.mathlib).resolve()
    project_root = Path(args.project).resolve()
    out_path     = Path(args.out).resolve()

    if not mathlib_root.exists():
        sys.exit(f"Mathlib root not found: {mathlib_root}")

    mathlib_src = mathlib_root / "Mathlib"
    if not mathlib_src.exists():
        mathlib_src = mathlib_root  # already pointing at Mathlib/
        mathlib_root = mathlib_root.parent

    lean_files = sorted(mathlib_src.rglob("*.lean"))
    if args.max_files:
        lean_files = lean_files[:args.max_files]

    print(f"Scanning {len(lean_files)} files under {mathlib_src} ...", file=sys.stderr)

    all_entries: list[dict] = []
    for path in lean_files:
        all_entries.extend(collect_aesop_calls(path, mathlib_root))

    print(f"Found {len(all_entries)} terminal aesop calls.", file=sys.stderr)

    if args.dry_run:
        for e in all_entries[:20]:
            print(f"  {e['source_file']}:{e['source_line']}  {e['theorem_name']}")
            print(f"    call: {e['aesop_call']}")
        if len(all_entries) > 20:
            print(f"  ... and {len(all_entries) - 20} more")
        return 0

    temp_dir = Path(tempfile.mkdtemp(prefix="mathlib_aesop_collect_"))
    print(f"Temp dir: {temp_dir}", file=sys.stderr)
    print(f"Running {len(all_entries)} entries with {args.workers} workers ...", file=sys.stderr)

    out_path.parent.mkdir(parents=True, exist_ok=True)
    total_records = 0
    failures = 0

    try:
        with out_path.open("w", encoding="utf-8") as out_f:
            with ProcessPoolExecutor(max_workers=args.workers) as executor:
                futures = {
                    executor.submit(
                        process_entry,
                        eid, entry, mathlib_root, project_root, temp_dir, args.timeout
                    ): (eid, entry)
                    for eid, entry in enumerate(all_entries)
                }
                completed = 0
                for fut in as_completed(futures):
                    eid, entry = futures[fut]
                    completed += 1
                    try:
                        records = fut.result()
                        for rec in records:
                            out_f.write(json.dumps(rec, ensure_ascii=False) + "\n")
                        total_records += len(records)
                        n_ok = sum(1 for r in records if r.get("exit_code") == 0)
                        n_trace = sum(1 for r in records if r.get("chosen") is not None)
                        src = f"{entry['source_file']}:{entry['source_line']}"
                        print(
                            f"[{completed}/{len(all_entries)}] {src}: "
                            f"exit={records[0].get('exit_code')} trace={n_trace}",
                            file=sys.stderr,
                        )
                    except Exception as exc:
                        failures += 1
                        print(f"[{completed}/{len(all_entries)}] entry {eid} ERROR: {exc}",
                              file=sys.stderr)
                    out_f.flush()
    finally:
        if not args.keep_temp:
            shutil.rmtree(temp_dir, ignore_errors=True)
        else:
            print(f"Kept temp files at: {temp_dir}", file=sys.stderr)

    print(f"\nDone. {total_records} records written to {out_path}", file=sys.stderr)
    if failures:
        print(f"  {failures} batch failures", file=sys.stderr)
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
