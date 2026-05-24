-- Benchmark: Mathlib/Data/Rel.lean:326
-- Original call: aesop
-- Theorem name: SetRel.core_inter.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SetRel.core_inter.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} (R : SetRel α β) (t₁ t₂ : Set β) : R.core (t₁ ∩ t₂) = R.core t₁ ∩ R.core t₂ := by
  aesop
