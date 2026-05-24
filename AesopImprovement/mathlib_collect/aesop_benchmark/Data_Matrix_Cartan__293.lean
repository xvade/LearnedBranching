-- Benchmark: Mathlib/Data/Matrix/Cartan.lean:293
-- Original call: aesop
-- Theorem name: Matrix.isSimplyLaced_transpose.extracted_1_2.{u_1}
import Mathlib
import Mathlib.Tactic

open Matrix

set_option maxHeartbeats 800000

theorem Matrix.isSimplyLaced_transpose.extracted_1_2.{u_1} {ι : Type u_1} (A : Matrix ι ι ℤ) : (∀ (b a : ι), a ≠ b → Aᵀ a b = 0 ∨ Aᵀ a b = -1) ↔ ∀ ⦃i j : ι⦄, i ≠ j → A i j = 0 ∨ A i j = -1 := by
  aesop
