-- Benchmark: Mathlib/Data/Rel.lean:264
-- Original call: aesop
-- Theorem name: SetRel.preimage_union.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SetRel.preimage_union.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} (R : SetRel α β) (t₁ t₂ : Set β) : R.preimage (t₁ ∪ t₂) = R.preimage t₁ ∪ R.preimage t₂ := by
  aesop
