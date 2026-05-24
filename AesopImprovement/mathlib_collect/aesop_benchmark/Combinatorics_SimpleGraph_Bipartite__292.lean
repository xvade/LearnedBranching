-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Bipartite.lean:292
-- Original call: aesop (add simp [Set.disjoint_left])
-- Theorem name: SimpleGraph.IsBipartite.exists_isBipartiteWith.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Finset Fintype

set_option maxHeartbeats 800000

theorem SimpleGraph.IsBipartite.exists_isBipartiteWith.extracted_1_1.{u_1} {V : Type u_1} {G : SimpleGraph V} (c : V → Fin 2) (hc : ∀ {a b : V}, G.Adj a b → (completeGraph (Fin 2)).Adj (c a) (c b)) : Disjoint {v | c v = 0} {v | c v = 1} := by
  aesop (add simp [Set.disjoint_left])
