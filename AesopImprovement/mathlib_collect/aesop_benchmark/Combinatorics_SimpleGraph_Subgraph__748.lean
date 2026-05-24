-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Subgraph.lean:748
-- Original call: aesop (add unfold safe Relation.Map, unsafe G'.edge_vert, unsafe Adj.symm)
-- Theorem name: SimpleGraph.Subgraph.map_hom_top.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SimpleGraph.Subgraph.map_hom_top.extracted_1_1.{u} {V : Type u} {G : SimpleGraph V} (G' : G.Subgraph) : Subgraph.map G'.hom ⊤ = G' := by
  aesop (add unfold safe Relation.Map, unsafe G'.edge_vert, unsafe Adj.symm)
