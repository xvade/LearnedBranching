-- Benchmark: Mathlib/Data/Set/Sigma.lean:204
-- Original call: aesop
-- Theorem name: Set.image_sigma_eq_iUnion.extracted_1_1.{u_7,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Set.image_sigma_eq_iUnion.extracted_1_1.{u_7, u_3, u_1} {ι : Type u_1} {α : ι → Type u_3} {s : Set ι} {t : (i : ι) → Set (α i)} {γ : Type u_7} (f : (i : ι) × α i → γ) : f '' s.sigma t = ⋃ i ∈ s, f ∘ Sigma.mk i '' t i := by
  aesop
