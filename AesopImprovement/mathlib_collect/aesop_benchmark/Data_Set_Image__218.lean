-- Benchmark: Mathlib/Data/Set/Image.lean:218
-- Original call: aesop
-- Theorem name: Set.image_comp.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Function Set

set_option maxHeartbeats 800000

theorem Set.image_comp.extracted_1_1.{u_3, u_2, u_1} {α : Type u_1} {β : Type u_2} {γ : Type u_3} (f : β → γ) (g : α → β) (a : Set α) : f ∘ g '' a = f '' (g '' a) := by
  aesop
