-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Operations.lean:75
-- Original call: aesop
-- Theorem name: SimpleGraph.edgeSet_replaceVertex_of_not_adj.extracted_1_6.{u_1}
import Mathlib
import Mathlib.Tactic

open Finset

set_option maxHeartbeats 800000

theorem SimpleGraph.edgeSet_replaceVertex_of_not_adj.extracted_1_6.{u_1} {V : Type u_1} (G : SimpleGraph V) {s t : V} [inst : DecidableEq V] (hn : ¬G.Adj s t) (x y : V) (h : x = t) (h_1 : ¬y = t) : G.Adj s y ↔ G.Adj x y ∧ ¬(G.Adj x y ∧ (t = x ∨ t = y)) ∨ s(x, y) ∈ (fun x => s(x, t)) '' G.neighborSet s := by
  aesop
