-- Benchmark: Mathlib/Combinatorics/SimpleGraph/AdjMatrix.lean:254
-- Original call: aesop (add simp Matrix.compl)
-- Theorem name: SimpleGraph.compl_adjMatrix_completeGraph.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Matrix Finset SimpleGraph

set_option maxHeartbeats 800000

theorem SimpleGraph.compl_adjMatrix_completeGraph.extracted_1_1.{u_2, u_1} (α : Type u_1) (V : Type u_2) [inst : Zero α] [inst_1 : One α] [inst_2 : DecidableEq α] [inst_3 : DecidableEq V] : (adjMatrix α (completeGraph V)).compl = 0 := by
  aesop (add simp Matrix.compl)
