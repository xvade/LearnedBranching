-- Benchmark: Mathlib/Data/Fintype/Sigma.lean:35
-- Original call: aesop
-- Theorem name: Set.biInter_finsetSigma_univ.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Function Nat Finset

set_option maxHeartbeats 800000

theorem Set.biInter_finsetSigma_univ.extracted_1_1.{u_3, u_2, u_1} {ι : Type u_1} {α : Type u_2} {κ : ι → Type u_3} [inst : (i : ι) → Fintype (κ i)] (s : Finset ι) (f : Sigma κ → Set α) : ⋂ ij ∈ s.sigma fun x => Finset.univ, f ij = ⋂ i ∈ s, ⋂ j, f ⟨i, j⟩ := by
  aesop
