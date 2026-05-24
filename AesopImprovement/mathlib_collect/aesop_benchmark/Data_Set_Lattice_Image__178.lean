-- Benchmark: Mathlib/Data/Set/Lattice/Image.lean:178
-- Original call: aesop
-- Theorem name: Set.image2_sInter_left_subset.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Function Set

set_option maxHeartbeats 800000

theorem Set.image2_sInter_left_subset.extracted_1_1.{u_3, u_2, u_1} {α : Type u_1} {β : Type u_2} {γ : Type u_3} (S : Set (Set α)) (t : Set β) (f : α → β → γ) : image2 f (⋂₀ S) t ⊆ ⋂ s ∈ S, image2 f s t := by
  aesop
