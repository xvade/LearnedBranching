-- Benchmark: Mathlib/Data/EReal/Operations.lean:496
-- Original call: aesop
-- Theorem name: EReal.le_of_forall_lt_iff_le.extracted_1_1
import Mathlib
import Mathlib.Tactic

open ENNReal NNReal

set_option maxHeartbeats 800000

theorem EReal.le_of_forall_lt_iff_le.extracted_1_1 {x y : EReal} (h : ∀ (z : ℝ), x < ↑z → y ≤ ↑z) : (x < ↑⊤ → y ≤ ↑⊤) ∧ ∀ (x_1 : ℝ), x < ↑↑x_1 → y ≤ ↑↑x_1 := by
  aesop
