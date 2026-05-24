-- Benchmark: Mathlib/Data/Rel.lean:244
-- Original call: aesop
-- Theorem name: SetRel.preimage_empty_right.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SetRel.preimage_empty_right.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {R : SetRel α β} : R.preimage ∅ = ∅ := by
  aesop
