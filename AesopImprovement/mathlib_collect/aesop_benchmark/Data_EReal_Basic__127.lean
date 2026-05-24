-- Benchmark: Mathlib/Data/EReal/Basic.lean:127
-- Original call: aesop
-- Theorem name: EReal.exists.extracted_1_7
import Mathlib
import Mathlib.Tactic

open Function ENNReal NNReal Set

set_option maxHeartbeats 800000

theorem EReal.exists.extracted_1_7 {p : EReal → Prop} (hr : p ⊤) : p ⊥ ∨ p ⊤ ∨ ∃ r, p ↑r := by
  aesop
