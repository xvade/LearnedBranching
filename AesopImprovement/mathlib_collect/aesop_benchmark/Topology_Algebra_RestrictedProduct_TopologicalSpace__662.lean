-- Benchmark: Mathlib/Topology/Algebra/RestrictedProduct/TopologicalSpace.lean:662
-- Original call: aesop
-- Theorem name: RestrictedProduct.mapAlong_continuous.extracted_1_1.{u_6,
import Mathlib
import Mathlib.Tactic

open Set Topology Filter RestrictedProduct Pointwise

set_option maxHeartbeats 800000

theorem RestrictedProduct.mapAlong_continuous.extracted_1_1.{u_6, u_5, u_4, u_3} {ι₁ : Type u_3} {ι₂ : Type u_4} (R₁ : ι₁ → Type u_5) (R₂ : ι₂ → Type u_6) [inst : (i : ι₁) → TopologicalSpace (R₁ i)] [inst_1 : (i : ι₂) → TopologicalSpace (R₂ i)] {𝓕₁ : Filter ι₁} {𝓕₂ : Filter ι₂} {A₁ : (i : ι₁) → Set (R₁ i)} {A₂ : (i : ι₂) → Set (R₂ i)} (f : ι₂ → ι₁) (hf : Tendsto f 𝓕₂ 𝓕₁) (φ : (j : ι₂) → R₁ (f j) → R₂ j) (hφ : ∀ᶠ (j : ι₂) in 𝓕₂, MapsTo (φ j) (A₁ (f j)) (A₂ j)) (φ_cont : ∀ (j : ι₂), Continuous (φ j)) (S : Set ι₁) (hS : 𝓕₁ ≤ 𝓟 S) : let T := f ⁻¹' S ∩ {j | MapsTo (φ j) (A₁ (f j)) (A₂ j)}; 𝓕₂ ≤ 𝓟 T → Tendsto f (𝓟 T) (𝓟 S) := by
  aesop
