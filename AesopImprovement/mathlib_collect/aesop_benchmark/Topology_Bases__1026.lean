-- Benchmark: Mathlib/Topology/Bases.lean:1026
-- Original call: aesop
-- Theorem name: TopologicalSpace.IsTopologicalBasis.sigma.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Set Filter Function Topology TopologicalSpace

set_option maxHeartbeats 800000

theorem TopologicalSpace.IsTopologicalBasis.sigma.extracted_1_1.{u_2, u_1} {ι : Type u_1} {E : ι → Type u_2} [inst : (i : ι) → TopologicalSpace (E i)] {s : (i : ι) → Set (Set (E i))} (hs : ∀ (i : ι), IsTopologicalBasis (s i)) (a : (i : ι) × E i) (x : Set ((i : ι) × E i)) : x ∈ ⋃ i, (fun u => Sigma.mk i '' u) '' s i ∧ a ∈ x ↔ x ∈ (fun i => Sigma.mk a.fst '' i) '' {i | i ∈ s a.fst ∧ a.snd ∈ i} := by
  aesop
