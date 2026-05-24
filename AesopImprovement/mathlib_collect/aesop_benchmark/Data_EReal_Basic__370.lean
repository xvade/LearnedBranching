-- Benchmark: Mathlib/Data/EReal/Basic.lean:370
-- Original call: aesop
-- Theorem name: EReal.toReal_neg.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Function ENNReal NNReal Set

set_option maxHeartbeats 800000

theorem EReal.toReal_neg.extracted_1_1 {x : EReal} (hx : x < 0) (h'x : x ≠ ⊥) : x ≠ ⊤ ∧ x ≠ ⊥ := by
  aesop
