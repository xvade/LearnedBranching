-- Benchmark: Mathlib/Data/EReal/Basic.lean:377
-- Original call: aesop
-- Theorem name: EReal.toReal_image_Ioo_zero_top.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Function ENNReal NNReal Set

set_option maxHeartbeats 800000

theorem EReal.toReal_image_Ioo_zero_top.extracted_1_1 (y : EReal) (hy0 : 0 < y) (right : y < ⊤) : y ≠ ⊤ ∧ y ≠ ⊥ := by
  aesop
