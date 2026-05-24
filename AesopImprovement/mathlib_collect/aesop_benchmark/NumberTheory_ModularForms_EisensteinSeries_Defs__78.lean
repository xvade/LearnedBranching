-- Benchmark: Mathlib/NumberTheory/ModularForms/EisensteinSeries/Defs.lean:78
-- Original call: aesop
-- Theorem name: EisensteinSeries.finGcdMap_div.extracted_1_1
import Mathlib
import Mathlib.Tactic

open ModularForm UpperHalfPlane Complex Matrix CongruenceSubgroup Set MatrixGroups Function

set_option maxHeartbeats 800000

theorem EisensteinSeries.finGcdMap_div.extracted_1_1 {r : ℕ} [inst : NeZero r] (v : Fin 2 → ℤ) (hv : finGcdMap v = r) (this : r ≠ 0) : gcd (v 0) (v 1) ≠ 0 := by
  aesop
