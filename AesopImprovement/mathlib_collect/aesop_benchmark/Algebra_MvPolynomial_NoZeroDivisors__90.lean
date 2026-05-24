-- Benchmark: Mathlib/Algebra/MvPolynomial/NoZeroDivisors.lean:90
-- Original call: aesop
-- Theorem name: MvPolynomial.totalDegree_le_of_dvd_of_isDomain.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Finset Equiv

set_option maxHeartbeats 800000

theorem MvPolynomial.totalDegree_le_of_dvd_of_isDomain.extracted_1_1.{u_2, u_1} {R : Type u_1} {σ : Type u_2} [inst : CommSemiring R] [inst_1 : NoZeroDivisors R] {f : MvPolynomial σ R} (r : MvPolynomial σ R) (hg : f * r ≠ 0) : f ≠ 0 := by
  aesop
