-- Benchmark: Mathlib/Data/Sym/Sym2.lean:390
-- Original call: aesop
-- Theorem name: Sym2.mem_and_mem_iff.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open List Finset Function Sym

set_option maxHeartbeats 800000

theorem Sym2.mem_and_mem_iff.extracted_1_1.{u_1} {α : Type u_1} {x y : α} (hne : x ≠ y) (x_1 y_1 : α) : (x = x_1 ∨ x = y_1) ∧ (y = x_1 ∨ y = y_1) → s(x_1, y_1) = s(x, y) := by
  aesop
