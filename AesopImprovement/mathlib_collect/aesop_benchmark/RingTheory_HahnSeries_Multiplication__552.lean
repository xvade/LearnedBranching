-- Benchmark: Mathlib/RingTheory/HahnSeries/Multiplication.lean:552
-- Original call: aesop
-- Theorem name: HahnSeries.order_mul_of_ne_zero.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Finset Function HahnSeries Pointwise Classical

set_option maxHeartbeats 800000

theorem HahnSeries.order_mul_of_ne_zero.extracted_1_1.{u_3, u_1} {Γ : Type u_1} {R : Type u_3} [inst : AddCommMonoid Γ] [inst_1 : LinearOrder Γ] [inst_2 : IsOrderedCancelAddMonoid Γ] [inst_3 : NonUnitalNonAssocSemiring R] {x y : R⟦Γ⟧} (h : x.leadingCoeff * y.leadingCoeff ≠ 0) : x.leadingCoeff ≠ 0 := by
  aesop
