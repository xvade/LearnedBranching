-- Benchmark: Mathlib/RingTheory/Ideal/Operations.lean:577
-- Original call: aesop (add simp Ideal.mem_span_singleton) (add simp dvd_def)
-- Theorem name: Ideal.range_mul.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Module Pointwise

set_option maxHeartbeats 800000

theorem Ideal.range_mul.extracted_1_1.{u_2, u} {R : Type u} [inst : CommSemiring R] (A : Type u_2) [inst_1 : CommSemiring A] [inst_2 : Module R A] [inst_3 : SMulCommClass R A A] [inst_4 : IsScalarTower R A A] (a : A) : ((LinearMap.mul R A) a).range = Submodule.restrictScalars R (span {a}) := by
  aesop (add simp Ideal.mem_span_singleton) (add simp dvd_def)
