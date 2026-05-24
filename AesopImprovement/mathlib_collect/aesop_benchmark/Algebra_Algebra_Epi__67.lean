-- Benchmark: Mathlib/Algebra/Algebra/Epi.lean:67
-- Original call: aesop
-- Theorem name: Algebra.instIsEpiOfIsDomainOfIsFractionRing.extracted_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Function TensorProduct

set_option maxHeartbeats 800000

theorem Algebra.instIsEpiOfIsDomainOfIsFractionRing.extracted_1.{u_2, u_1} (R : Type u_1) (A : Type u_2) [inst : CommRing R] [inst_1 : IsDomain R] [inst_2 : Field A] [inst_3 : Algebra R A] [inst_4 : IsFractionRing R A] (b : R) (hb : b ∈ nonZeroDivisors R) : let f := algebraMap R A; f = algebraMap R A → f b ≠ 0 := by
  aesop
