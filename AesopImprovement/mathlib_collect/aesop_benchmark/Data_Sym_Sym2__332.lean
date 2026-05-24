-- Benchmark: Mathlib/Data/Sym/Sym2.lean:332
-- Original call: aesop
-- Theorem name: Sym2.instSetLike.extracted_2.{u_1}
import Mathlib
import Mathlib.Tactic

open List Finset Function Sym

set_option maxHeartbeats 800000

theorem Sym2.instSetLike.extracted_2.{u_1} {α : Type u_1} (x y x' y' : α) (h : ∀ (x_1 : α), Sym2.Mem x_1 (Quot.mk (Rel α) (x, y)) ↔ Sym2.Mem x_1 (Quot.mk (Rel α) (x', y'))) (hx : True ∨ x = y ↔ x = x' ∨ x = y') (hy : y = x ∨ True ↔ y = x' ∨ y = y') (hx' : x' = x ∨ x' = y ↔ True ∨ x' = y') (hy' : y' = x ∨ y' = y ↔ y' = x' ∨ True) : Quot.mk (Rel α) (x, y) = Quot.mk (Rel α) (x', y') := by
  aesop
