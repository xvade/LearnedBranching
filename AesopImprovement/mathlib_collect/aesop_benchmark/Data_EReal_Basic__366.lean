-- Benchmark: Mathlib/Data/EReal/Basic.lean:366
-- Original call: aesop
-- Theorem name: EReal.toReal_pos.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Function ENNReal NNReal Set

set_option maxHeartbeats 800000

theorem EReal.toReal_pos.extracted_1_1 {x : EReal} (hx : 0 < x) (h'x : x ≠ ⊤) : x ≠ ⊤ ∧ x ≠ ⊥ := by
  aesop
