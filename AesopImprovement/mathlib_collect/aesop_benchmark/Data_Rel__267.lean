-- Benchmark: Mathlib/Data/Rel.lean:267
-- Original call: aesop
-- Theorem name: SetRel.preimage_iUnion.extracted_1_1.{u_5,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SetRel.preimage_iUnion.extracted_1_1.{u_5, u_2, u_1} {α : Type u_1} {β : Type u_2} {ι : Sort u_5} (R : SetRel α β) (t : ι → Set β) : R.preimage (⋃ i, t i) = ⋃ i, R.preimage (t i) := by
  aesop
