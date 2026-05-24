-- Benchmark: Mathlib/Data/Set/Finite/Lattice.lean:205
-- Original call: aesop (add unfold safe [Pairwise, PairwiseDisjoint, Set.Pairwise])
-- Theorem name: Set.PairwiseDisjoint.finite_biUnion_iff.extracted_1_1.{v,
import Mathlib
import Mathlib.Tactic

open Set Function

set_option maxHeartbeats 800000

theorem Set.PairwiseDisjoint.finite_biUnion_iff.extracted_1_1.{v, u} {α : Type u} {β : Type v} {f : β → Set α} {s : Set β} (hs : s.PairwiseDisjoint f) : Pairwise fun i j => Disjoint (⋃ (_ : i ∈ s), f i) (⋃ (_ : j ∈ s), f j) := by
  aesop (add unfold safe [Pairwise, PairwiseDisjoint, Set.Pairwise])
