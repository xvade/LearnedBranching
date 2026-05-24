-- Benchmark: Mathlib/GroupTheory/Coxeter/Matrix.lean:154
-- Original call: aesop
-- Theorem name: CoxeterMatrix.D.extracted_1
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem CoxeterMatrix.D.extracted_1 (n : ℕ) : (Matrix.of fun i j => if i = j then 1 else if ↑i = n - 1 ∧ ↑j = n - 3 ∨ ↑j = n - 1 ∧ ↑i = n - 3 then 3 else if ↑j + 1 = ↑i ∨ ↑i + 1 = ↑j then 3 else 2).transpose = Matrix.of fun i j => if i = j then 1 else if ↑i = n - 1 ∧ ↑j = n - 3 ∨ ↑j = n - 1 ∧ ↑i = n - 3 then 3 else if ↑j + 1 = ↑i ∨ ↑i + 1 = ↑j then 3 else 2 := by
  aesop
