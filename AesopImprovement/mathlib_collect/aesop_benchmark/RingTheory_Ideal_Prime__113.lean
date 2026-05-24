-- Benchmark: Mathlib/RingTheory/Ideal/Prime.lean:113
-- Original call: aesop
-- Theorem name: Ideal.IsPrime.mul_mem_right_iff.extracted_1_4.{u}
import Mathlib
import Mathlib.Tactic

open Set Function Pointwise

set_option maxHeartbeats 800000

theorem Ideal.IsPrime.mul_mem_right_iff.extracted_1_4.{u} {α : Type u} [inst : Semiring α] {I : Ideal α} [inst_1 : I.IsTwoSided] [inst_2 : I.IsPrime] {y : α} (hx : y ∉ I) : I.IsPrime := by
  aesop
