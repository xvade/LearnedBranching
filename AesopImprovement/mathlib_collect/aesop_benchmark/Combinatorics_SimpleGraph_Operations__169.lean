-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Operations.lean:169
-- Original call: aesop (add simp [edge_adj, adj_symm])
-- Theorem name: SimpleGraph.edge_le_iff.extracted_1_2.{u_1}
import Mathlib
import Mathlib.Tactic

open Finset

set_option maxHeartbeats 800000

theorem SimpleGraph.edge_le_iff.extracted_1_2.{u_1} {V : Type u_1} (G : SimpleGraph V) {v w : V} (h : v ≠ w) (hadj : v = w ∨ G.Adj v w) (v' w' : V) (hvw' : (edge v w).Adj v' w') : G.Adj v' w' := by
  aesop (add simp [edge_adj, adj_symm])
