-- Benchmark: Mathlib/Data/EReal/Basic.lean:387
-- Original call: aesop
-- Theorem name: EReal.toReal_image_Ioo_bot_zero.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Function ENNReal NNReal Set

set_option maxHeartbeats 800000

theorem EReal.toReal_image_Ioo_bot_zero.extracted_1_1 (y : EReal) (left : ⊥ < y) (hy0 : y < 0) : y ≠ ⊤ ∧ y ≠ ⊥ := by
  aesop
