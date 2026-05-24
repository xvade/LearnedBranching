-- Benchmark: Mathlib/Algebra/BigOperators/Finprod.lean:1234
-- Original call: aesop
-- Theorem name: finsum_mul.extracted_1_1.{u_7,
import Mathlib
import Mathlib.Tactic

open Function Set Classical Batteries.ExtendedBinder

set_option maxHeartbeats 800000

theorem finsum_mul.extracted_1_1.{u_7, u_1} {α : Type u_1} {R : Type u_7} [inst : NonUnitalNonAssocSemiring R] [inst_1 : NoZeroDivisors R] (f : α → R) (r : R) (hr : ¬r = 0) (h : ¬(support f).Finite) : (support fun x => f x * r) = support f := by
  aesop
