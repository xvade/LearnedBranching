-- Benchmark: Mathlib/GroupTheory/Submonoid/Center.lean:178
-- Original call: aesop
-- Theorem name: MulOpposite.op_mem_center_iff.extracted_1_6.{u_2}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem MulOpposite.op_mem_center_iff.extracted_1_6.{u_2} {M : Type u_2} [inst : Mul M] {x : M} : ((∀ (a : M), Commute (op x) (op a)) ∧ (∀ (a a_1 : M), a_1 * a * x = a_1 * (a * x)) ∧ ∀ (a a_1 : M), x * (a_1 * a) = x * a_1 * a) ↔ (∀ (a : M), Commute x a) ∧ (∀ (b c : M), x * (b * c) = x * b * c) ∧ ∀ (a b : M), a * b * x = a * (b * x) := by
  aesop
