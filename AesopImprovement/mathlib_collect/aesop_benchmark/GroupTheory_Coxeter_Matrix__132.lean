-- Benchmark: Mathlib/GroupTheory/Coxeter/Matrix.lean:132
-- Original call: aesop
-- Theorem name: CoxeterMatrix.B.extracted_1
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem CoxeterMatrix.B.extracted_1 (n : ℕ) : (Matrix.of fun i j => if i = j then 1 else if ↑i = n - 1 ∧ ↑j = n - 2 ∨ ↑j = n - 1 ∧ ↑i = n - 2 then 4 else if ↑j + 1 = ↑i ∨ ↑i + 1 = ↑j then 3 else 2).transpose = Matrix.of fun i j => if i = j then 1 else if ↑i = n - 1 ∧ ↑j = n - 2 ∨ ↑j = n - 1 ∧ ↑i = n - 2 then 4 else if ↑j + 1 = ↑i ∨ ↑i + 1 = ↑j then 3 else 2 := by
  aesop
