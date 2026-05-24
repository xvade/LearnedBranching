-- Benchmark: Mathlib/Data/EReal/Operations.lean:501
-- Original call: aesop
-- Theorem name: EReal.ge_of_forall_gt_iff_ge.extracted_1_1
import Mathlib
import Mathlib.Tactic

open ENNReal NNReal

set_option maxHeartbeats 800000

theorem EReal.ge_of_forall_gt_iff_ge.extracted_1_1 {x y : EReal} (h : ∀ (z : ℝ), ↑z < y → ↑z ≤ x) : (↑⊤ < y → ↑⊤ ≤ x) ∧ ∀ (x_1 : ℝ), ↑↑x_1 < y → ↑↑x_1 ≤ x := by
  aesop
