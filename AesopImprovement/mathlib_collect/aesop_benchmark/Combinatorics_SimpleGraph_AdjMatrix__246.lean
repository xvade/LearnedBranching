-- Benchmark: Mathlib/Combinatorics/SimpleGraph/AdjMatrix.lean:246
-- Original call: aesop (add simp [add_assoc])
-- Theorem name: SimpleGraph.one_add_adjMatrix_add_compl_adjMatrix_eq_of_one.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Matrix Finset SimpleGraph

set_option maxHeartbeats 800000

theorem SimpleGraph.one_add_adjMatrix_add_compl_adjMatrix_eq_of_one.extracted_1_1.{u_2, u_1} (α : Type u_1) {V : Type u_2} (G : SimpleGraph V) [inst : DecidableRel G.Adj] [inst_1 : DecidableEq V] [inst_2 : DecidableEq α] [inst_3 : AddMonoid α] [inst_4 : One α] : 1 + adjMatrix α G + (adjMatrix α G).compl = of 1 := by
  aesop (add simp [add_assoc])
