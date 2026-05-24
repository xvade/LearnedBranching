-- Benchmark: Mathlib/Algebra/BigOperators/Finprod.lean:1208
-- Original call: aesop
-- Theorem name: mul_finsum.extracted_1_1.{u_7,
import Mathlib
import Mathlib.Tactic

open Function Set Classical Batteries.ExtendedBinder

set_option maxHeartbeats 800000

theorem mul_finsum.extracted_1_1.{u_7, u_1} {α : Type u_1} {R : Type u_7} [inst : NonUnitalNonAssocSemiring R] [inst_1 : NoZeroDivisors R] (f : α → R) (r : R) (hr : ¬r = 0) (h : ¬(support f).Finite) : (support fun x => r * f x) = support f := by
  aesop
