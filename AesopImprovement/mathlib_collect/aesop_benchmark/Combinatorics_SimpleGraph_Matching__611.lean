-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Matching.lean:611
-- Original call: aesop
-- Theorem name: SimpleGraph.Subgraph.IsPerfectMatching.isAlternating_symmDiff_left.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem SimpleGraph.Subgraph.IsPerfectMatching.isAlternating_symmDiff_left.extracted_1_1.{u_1} {V : Type u_1} {G G' : SimpleGraph V} {M : G.Subgraph} {M' : G'.Subgraph} (hM : M.IsPerfectMatching) (hM' : M'.IsPerfectMatching) ⦃v w w' : V⦄ (hww' : w ≠ w') (hvw : (M.spanningCoe \ M'.spanningCoe ⊔ M'.spanningCoe \ M.spanningCoe).Adj v w) (hvw' : (M.spanningCoe \ M'.spanningCoe ⊔ M'.spanningCoe \ M.spanningCoe).Adj v w') (v1 : V) (hm1 : M.Adj v v1) (hv1 : ∀ (y : V), M.Adj v y → y = v1) (v2 : V) (hm2 : M'.Adj v v2) (hv2 : ∀ (y : V), M'.Adj v y → y = v2) : M.spanningCoe.Adj v w ↔ ¬M.spanningCoe.Adj v w' := by
  aesop
