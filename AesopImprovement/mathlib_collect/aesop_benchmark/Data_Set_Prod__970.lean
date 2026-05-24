-- Benchmark: Mathlib/Data/Set/Prod.lean:970
-- Original call: aesop
-- Theorem name: Set.graphOn_prod_graphOn.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Function Set Function.Pullback Function.PullbackSelf

set_option maxHeartbeats 800000

theorem Set.graphOn_prod_graphOn.extracted_1_1.{u_4, u_3, u_2, u_1} {α : Type u_1} {β : Type u_2} {γ : Type u_3} {δ : Type u_4} (s : Set α) (t : Set β) (f : α → γ) (g : β → δ) : graphOn f s ×ˢ graphOn g t = ⇑(Equiv.prodProdProdComm α γ β δ) ⁻¹' graphOn (Prod.map f g) (s ×ˢ t) := by
  aesop
