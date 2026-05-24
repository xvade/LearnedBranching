-- Benchmark: Mathlib/Data/Set/Prod.lean:1009
-- Original call: aesop (add simp [Prod.swap_eq_iff_eq_swap])
-- Theorem name: Set.exists_equiv_range_eq_graphOn_univ.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Function Set Function.Pullback Function.PullbackSelf

set_option maxHeartbeats 800000

theorem Set.exists_equiv_range_eq_graphOn_univ.extracted_1_1.{u_3, u_2, u_1} {α : Type u_1} {β : Type u_2} {γ : Type u_3} {f : α → β × γ} (hf₁ : Surjective (Prod.fst ∘ f)) (hf₂ : Surjective (Prod.snd ∘ f)) (hf : ∀ (g₁ g₂ : α), (f g₁).1 = (f g₂).1 ↔ (f g₁).2 = (f g₂).2) (e₁ : β → γ) (he₁ : ∀ (x : β × γ), x ∈ range f ↔ x ∈ graphOn e₁ univ) (e₂ : γ → β) (he₂ : ∀ (x : γ × β), x ∈ range (⇑(Equiv.prodComm β γ) ∘ f) ↔ x ∈ graphOn e₂ univ) (h : β) (i : γ) : e₁ h = i ↔ e₂ i = h := by
  aesop (add simp [Prod.swap_eq_iff_eq_swap])
