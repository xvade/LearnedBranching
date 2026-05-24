-- Benchmark: Mathlib/Algebra/Group/Pointwise/Set/Card.lean:40
-- Original call: aesop (add simp [Cardinal.mul_lt_aleph0_iff, finite_mul])
-- Theorem name: Set.natCard_mul_le.extracted_1_2.{u_2}
import Mathlib
import Mathlib.Tactic

open Cardinal Pointwise

set_option maxHeartbeats 800000

theorem Set.natCard_mul_le.extracted_1_2.{u_2} {M : Type u_2} [inst : Mul M] {s t : Set M} [inst_1 : IsCancelMul M] (h : (s * t).Finite) : #↑s * #↑t < ℵ₀ := by
  aesop (add simp [Cardinal.mul_lt_aleph0_iff, finite_mul])
