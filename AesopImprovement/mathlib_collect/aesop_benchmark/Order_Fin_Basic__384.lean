-- Benchmark: Mathlib/Order/Fin/Basic.lean:384
-- Original call: aesop
-- Theorem name: Fin.range_succAboveOrderEmb.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Function Nat Set

set_option maxHeartbeats 800000

theorem Fin.range_succAboveOrderEmb.extracted_1_1 {n : ℕ} (i : Fin (n + 1)) : range ⇑i.succAboveOrderEmb = {i}ᶜ := by
  aesop
