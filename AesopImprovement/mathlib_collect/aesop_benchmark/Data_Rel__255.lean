-- Benchmark: Mathlib/Data/Rel.lean:255
-- Original call: aesop
-- Theorem name: SetRel.image_union.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SetRel.image_union.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} (R : SetRel α β) (s₁ s₂ : Set α) : R.image (s₁ ∪ s₂) = R.image s₁ ∪ R.image s₂ := by
  aesop
