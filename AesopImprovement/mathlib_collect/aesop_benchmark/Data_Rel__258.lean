-- Benchmark: Mathlib/Data/Rel.lean:258
-- Original call: aesop
-- Theorem name: SetRel.image_iUnion.extracted_1_1.{u_5,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SetRel.image_iUnion.extracted_1_1.{u_5, u_2, u_1} {α : Type u_1} {β : Type u_2} {ι : Sort u_5} (R : SetRel α β) (s : ι → Set α) : R.image (⋃ i, s i) = ⋃ i, R.image (s i) := by
  aesop
