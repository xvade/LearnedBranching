-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Subgraph.lean:189
-- Original call: aesop
-- Theorem name: SimpleGraph.Subgraph.mem_of_adj_spanningCoe.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SimpleGraph.Subgraph.mem_of_adj_spanningCoe.extracted_1_1.{u} {V : Type u} {v w : V} {s : Set V} (G : SimpleGraph ↑s) (hadj : G.spanningCoe.Adj v w) : v ∈ s := by
  aesop
