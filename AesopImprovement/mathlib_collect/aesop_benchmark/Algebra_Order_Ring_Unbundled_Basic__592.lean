-- Benchmark: Mathlib/Algebra/Order/Ring/Unbundled/Basic.lean:592
-- Original call: aesop
-- Theorem name: mul_nonneg_of_three.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem mul_nonneg_of_three.extracted_1_1.{u} {R : Type u} [inst : Semiring R] [inst_1 : LinearOrder R] [inst_2 : ExistsAddOfLE R] [inst_3 : MulPosStrictMono R] [inst_4 : PosMulStrictMono R] [inst_5 : AddLeftMono R] [inst_6 : AddLeftReflectLE R] (a b c : R) (or_a : 0 ≤ a ∨ a ≤ 0) (or_b : 0 ≤ b ∨ b ≤ 0) (or_c : 0 ≤ c ∨ c ≤ 0) : (0 ≤ a ∧ 0 ≤ b ∨ a ≤ 0 ∧ b ≤ 0) ∨ (0 ≤ b ∧ 0 ≤ c ∨ b ≤ 0 ∧ c ≤ 0) ∨ 0 ≤ c ∧ 0 ≤ a ∨ c ≤ 0 ∧ a ≤ 0 := by
  aesop
