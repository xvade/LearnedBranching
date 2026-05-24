-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Matching.lean:149
-- Original call: aesop
-- Theorem name: SimpleGraph.Subgraph.IsMatching.subgraphOfAdj.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem SimpleGraph.Subgraph.IsMatching.subgraphOfAdj.extracted_1_1.{u_1} {V : Type u_1} {G : SimpleGraph V} {v w : V} (h : G.Adj v w) ⦃v_1 : V⦄ (h_1 : v_1 = v) : (fun w_1 => (G.subgraphOfAdj h).Adj v_1 w_1) w ∧ ∀ (y : V), (fun w_1 => (G.subgraphOfAdj h).Adj v_1 w_1) y → y = w := by
  aesop
