-- Benchmark: Mathlib/Algebra/Group/Graph.lean:107
-- Original call: aesop (add simp [Prod.swap_eq_iff_eq_swap])
-- Theorem name: MonoidHom.exists_mulEquiv_mrange_eq_mgraph.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Function Set

set_option maxHeartbeats 800000

theorem MonoidHom.exists_mulEquiv_mrange_eq_mgraph.extracted_1_1.{u_3, u_2, u_1} {G : Type u_1} {H : Type u_2} {I : Type u_3} [inst : Monoid G] [inst_1 : Monoid H] [inst_2 : Monoid I] {f : G →* H × I} (hf₁ : Surjective (Prod.fst ∘ ⇑f)) (hf₂ : Surjective (Prod.snd ∘ ⇑f)) (hf : ∀ (g₁ g₂ : G), (f g₁).1 = (f g₂).1 ↔ (f g₁).2 = (f g₂).2) (e₁ : H →* I) (he₁ : ∀ (x : H × I), x ∈ mrange f ↔ x ∈ e₁.mgraph) (e₂ : I →* H) (he₂ : ∀ (x : I × H), x ∈ mrange (MulEquiv.prodComm.toMonoidHom.comp f) ↔ x ∈ e₂.mgraph) (h : H) (i : I) : e₁ h = i ↔ e₂ i = h := by
  aesop (add simp [Prod.swap_eq_iff_eq_swap])
