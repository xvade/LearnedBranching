-- Benchmark: Mathlib/Algebra/Group/Pointwise/Finset/Basic.lean:1037
-- Original call: aesop
-- Theorem name: Finset.one_mem_inv_mul_iff.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

open Function MulOpposite Pointwise

set_option maxHeartbeats 800000

theorem Finset.one_mem_inv_mul_iff.extracted_1_1.{u_2} {α : Type u_2} [inst : DecidableEq α] [inst_1 : Group α] {s t : Finset α} : 1 ∈ t⁻¹ * s ↔ ¬Disjoint s t := by
  aesop
