-- Benchmark: Mathlib/Algebra/Group/Pointwise/Set/Basic.lean:874
-- Original call: aesop (add simp [not_disjoint_iff_nonempty_inter, mem_mul, mul_eq_one_iff_eq_inv, Set.Nonempty])
-- Theorem name: Set.one_mem_inv_mul_iff.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

open Function MulOpposite Pointwise

set_option maxHeartbeats 800000

theorem Set.one_mem_inv_mul_iff.extracted_1_1.{u_2} {α : Type u_2} [inst : Group α] {s t : Set α} : 1 ∈ t⁻¹ * s ↔ ¬Disjoint s t := by
  aesop (add simp [not_disjoint_iff_nonempty_inter, mem_mul, mul_eq_one_iff_eq_inv, Set.Nonempty])
