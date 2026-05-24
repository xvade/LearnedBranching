-- Benchmark: Mathlib/Combinatorics/SimpleGraph/AdjMatrix.lean:95
-- Original call: aesop
-- Theorem name: Matrix.IsAdjMatrix.hadamard_self.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Matrix Finset SimpleGraph

set_option maxHeartbeats 800000

theorem Matrix.IsAdjMatrix.hadamard_self.extracted_1_1.{u_2, u_1} {α : Type u_1} {V : Type u_2} [inst : MulZeroOneClass α] {A : Matrix V V α} (hA : A.IsAdjMatrix) (i j : V) (this : A i j = 0 ∨ A i j = 1) : (A ⊙ A) i j = A i j := by
  aesop
