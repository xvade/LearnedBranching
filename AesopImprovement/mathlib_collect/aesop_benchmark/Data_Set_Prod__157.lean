-- Benchmark: Mathlib/Data/Set/Prod.lean:157
-- Original call: aesop
-- Theorem name: Set.prodMap_image_prod.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem Set.prodMap_image_prod.extracted_1_1.{u_4, u_3, u_2, u_1} {α : Type u_1} {β : Type u_2} {γ : Type u_3} {δ : Type u_4} (f : α → β) (g : γ → δ) (s : Set α) (t : Set γ) (x : β × δ) : x ∈ Prod.map f g '' s ×ˢ t ↔ x ∈ (f '' s) ×ˢ (g '' t) := by
  aesop
