-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Matching.lean:428
-- Original call: aesop
-- Theorem name: SimpleGraph.Subgraph.IsPerfectMatching.symmDiff_isCycles.extracted_1_12.{u_1}
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem SimpleGraph.Subgraph.IsPerfectMatching.symmDiff_isCycles.extracted_1_12.{u_1} {V : Type u_1} {G G' : SimpleGraph V} {M : G.Subgraph} {M' : G'.Subgraph} (hM : M.IsPerfectMatching) (hM' : M'.IsPerfectMatching) ⦃v : V⦄ (w : V) (hw : (fun w => M.Adj v w) w ∧ ∀ (y : V), (fun w => M.Adj v w) y → y = w) (w' : V) (hw' : (fun w => M'.Adj v w) w' ∧ ∀ (y : V), (fun w => M'.Adj v w) y → y = w') (hww' : ¬w = w') : ¬w = w' ∧ (M.spanningCoe \ M'.spanningCoe ⊔ M'.spanningCoe \ M.spanningCoe).neighborSet v = {w, w'} := by
  aesop
