-- Benchmark: Mathlib/Data/Set/Prod.lean:294
-- Original call: aesop
-- Theorem name: Set.subset_fst_image_prod_snd_image.extracted_1_3.{u_2,
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem Set.subset_fst_image_prod_snd_image.extracted_1_3.{u_2, u_1} {α : Type u_1} {β : Type u_2} {s : Set (α × β)} (p₁ : α) (p₂ : β) (x : (p₁, p₂) ∈ s) : (p₁, p₂) ∈ (Prod.fst '' s) ×ˢ (Prod.snd '' s) := by
  aesop
