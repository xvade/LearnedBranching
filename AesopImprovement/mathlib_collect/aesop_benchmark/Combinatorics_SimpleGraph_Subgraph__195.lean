-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Subgraph.lean:195
-- Original call: aesop
-- Theorem name: SimpleGraph.Subgraph.spanningCoe_subgraphOfAdj.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SimpleGraph.Subgraph.spanningCoe_subgraphOfAdj.extracted_1_1.{u} {V : Type u} {G : SimpleGraph V} {v_1 w_1 : V} (hadj : G.Adj v_1 w_1) (v w : V) : (G.subgraphOfAdj hadj).spanningCoe.Adj v w ↔ (fromEdgeSet {s(v_1, w_1)}).Adj v w := by
  aesop
