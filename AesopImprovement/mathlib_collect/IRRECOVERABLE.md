# Irrecoverable Aesop Calls (30 entries)

These 30 `aesop` call sites could not be automatically collected.  
Three distinct failure reasons are listed below.

---

## SIGSEGV — Lean crashes during re-elaboration (15 entries)

These three files cause Lean itself to crash (exit 139) when re-elaborated
from source. The compiled oleans are fine; the issue is memory/stack during
full re-elaboration of very large files.

| File | Line | Call |
|------|------|------|
| `Mathlib/Algebra/Order/BigOperators/Expect.lean` | 167 | `aesop` |
| `Mathlib/Algebra/Order/BigOperators/Expect.lean` | 168 | `aesop` |
| `Mathlib/Algebra/Order/BigOperators/Expect.lean` | 171 | `aesop` |
| `Mathlib/Algebra/Order/BigOperators/Expect.lean` | 172 | `aesop` |
| `Mathlib/Combinatorics/SimpleGraph/Triangle/Counting.lean` | 134 | `aesop` |
| `Mathlib/Computability/AkraBazzi/SumTransform.lean` | 162 | `aesop` |
| `Mathlib/Computability/AkraBazzi/SumTransform.lean` | 171 | `aesop (add safe apply div_two_lt_of_pos)` |
| `Mathlib/Computability/AkraBazzi/SumTransform.lean` | 373 | `aesop (add safe isBigO_refl)` |
| `Mathlib/Computability/AkraBazzi/SumTransform.lean` | 384 | `aesop` |
| `Mathlib/Computability/AkraBazzi/SumTransform.lean` | 393 | `aesop` |
| `Mathlib/Computability/AkraBazzi/SumTransform.lean` | 402 | `aesop` |
| `Mathlib/Computability/AkraBazzi/SumTransform.lean` | 409 | `aesop` |
| `Mathlib/Computability/AkraBazzi/SumTransform.lean` | 454 | `aesop` |
| `Mathlib/Computability/AkraBazzi/SumTransform.lean` | 580 | `aesop (add safe Real.rpow_pos_of_pos)` |
| `Mathlib/Computability/AkraBazzi/SumTransform.lean` | 585 | `aesop (add safe Real.rpow_nonneg, safe div_nonneg, safe Finset.sum_nonneg)` |

---

## Structure field defaults — `logInfo` suppressed (12 entries)

These `aesop` calls appear as default values for structure/class fields
(`field_name : Type := by aesop`). Lean suppresses `logInfo` (and therefore
`aesop_collect` output) during elaboration of field defaults.

| File | Line | Call |
|------|------|------|
| `Mathlib/Analysis/Normed/Group/Defs.lean` | 186 | `aesop` |
| `Mathlib/Analysis/Normed/Group/Defs.lean` | 197 | `aesop` |
| `Mathlib/Analysis/Normed/Group/Defs.lean` | 207 | `aesop` |
| `Mathlib/Analysis/Normed/Group/Defs.lean` | 218 | `aesop` |
| `Mathlib/Analysis/Normed/Group/Defs.lean` | 229 | `aesop` |
| `Mathlib/Analysis/Normed/Group/Defs.lean` | 240 | `aesop` |
| `Mathlib/Analysis/Normed/Group/Defs.lean` | 250 | `aesop` |
| `Mathlib/Analysis/Normed/Group/Defs.lean` | 261 | `aesop` |
| `Mathlib/CategoryTheory/ConcreteCategory/Forget.lean` | 93 | `aesop` |
| `Mathlib/CategoryTheory/Limits/Shapes/BinaryBiproducts.lean` | 56 | `aesop` |
| `Mathlib/CategoryTheory/Limits/Shapes/BinaryBiproducts.lean` | 57 | `aesop` |
| `Mathlib/CategoryTheory/Limits/Shapes/BinaryBiproducts.lean` | 58 | `aesop` |

---

## Function/method argument defaults — `logInfo` suppressed (3 entries)

These `aesop` calls appear as default proofs for function arguments
(`(h : P := by aesop)`). Same suppression as structure field defaults.

| File | Line | Call |
|------|------|------|
| `Mathlib/Combinatorics/Matroid/Basic.lean` | 243 | `aesop` |
| `Mathlib/LinearAlgebra/Multilinear/Basic.lean` | 119 | `aesop` |
| `Mathlib/LinearAlgebra/Multilinear/Basic.lean` | 121 | `aesop` |
