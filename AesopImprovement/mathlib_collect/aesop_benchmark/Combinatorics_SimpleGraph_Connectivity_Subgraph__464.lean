-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Connectivity/Subgraph.lean:464
-- Original call: aesop
-- Theorem name: SimpleGraph.Walk.IsCycle.ncard_neighborSet_toSubgraph_eq_two.extracted_1_2.{u}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SimpleGraph.Walk.IsCycle.ncard_neighborSet_toSubgraph_eq_two.extracted_1_2.{u} {V : Type u} {G : SimpleGraph V} {u v : V} {p : G.Walk u u} (hpc : p.IsCycle) (i : ℕ) (hi : p.getVert i = v ∧ i ≤ p.length) (he : i = 0 ∨ i = p.length) : u = v := by
  aesop
