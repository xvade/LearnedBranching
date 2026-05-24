-- Benchmark: Mathlib/Data/Rel.lean:301
-- Original call: aesop
-- Theorem name: SetRel.preimage_inter_cod.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SetRel.preimage_inter_cod.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} (R : SetRel α β) (t : Set β) : R.preimage (t ∩ R.cod) = R.preimage t := by
  aesop
