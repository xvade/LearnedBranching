-- Benchmark: Mathlib/Data/Sym/Sym2.lean:317
-- Original call: aesop
-- Theorem name: Sym2.mem_iff'.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open List Finset Function Sym

set_option maxHeartbeats 800000

theorem Sym2.mem_iff'.extracted_1_1.{u_1} {α : Type u_1} {a b c : α} (w : α) (h : b = a ∧ c = w ∨ b = w ∧ c = a) : a = b ∨ a = c := by
  aesop
