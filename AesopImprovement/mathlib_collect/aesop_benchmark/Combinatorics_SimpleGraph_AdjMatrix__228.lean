-- Benchmark: Mathlib/Combinatorics/SimpleGraph/AdjMatrix.lean:228
-- Original call: aesop (add simp [Matrix.compl])
-- Theorem name: SimpleGraph.compl_adjMatrix_eq_adjMatrix_compl.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Matrix Finset SimpleGraph

set_option maxHeartbeats 800000

theorem SimpleGraph.compl_adjMatrix_eq_adjMatrix_compl.extracted_1_1.{u_2, u_1} (α : Type u_1) {V : Type u_2} (G : SimpleGraph V) [inst : DecidableRel G.Adj] [inst_1 : DecidableEq V] [inst_2 : DecidableEq α] [inst_3 : Zero α] [inst_4 : One α] : (adjMatrix α G).compl = adjMatrix α Gᶜ := by
  aesop (add simp [Matrix.compl])
