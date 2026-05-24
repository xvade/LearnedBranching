-- Benchmark: Mathlib/Combinatorics/SimpleGraph/AdjMatrix.lean:235
-- Original call: aesop (add simp Matrix.compl)
-- Theorem name: SimpleGraph.IsCompl.adjMatrix_add_adjMatrix_eq_adjMatrix_completeGraph.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Matrix Finset SimpleGraph

set_option maxHeartbeats 800000

theorem SimpleGraph.IsCompl.adjMatrix_add_adjMatrix_eq_adjMatrix_completeGraph.extracted_1_1.{u_2, u_1} (α : Type u_1) {V : Type u_2} {G : SimpleGraph V} [inst : DecidableRel G.Adj] [inst_1 : DecidableEq V] [inst_2 : AddZeroClass α] [inst_3 : One α] {H : SimpleGraph V} (h : IsCompl G H) : adjMatrix α G + adjMatrix α Gᶜ = adjMatrix α (completeGraph V) := by
  aesop (add simp Matrix.compl)
