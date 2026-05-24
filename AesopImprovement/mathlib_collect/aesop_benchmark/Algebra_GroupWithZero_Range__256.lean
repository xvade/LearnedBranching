-- Benchmark: Mathlib/Algebra/GroupWithZero/Range.lean:256
-- Original call: aesop
-- Theorem name: MonoidWithZeroHom.mem_valueGroup_iff_of_comm'.extracted_1_5.{u_3,
import Mathlib
import Mathlib.Tactic

open Set Subgroup Submonoid Function

set_option maxHeartbeats 800000

theorem MonoidWithZeroHom.mem_valueGroup_iff_of_comm'.extracted_1_5.{u_3, u_2, u_1} {A : Type u_1} {B : Type u_2} {F : Type u_3} [inst : FunLike F A B] (f : F) [inst_1 : MonoidWithZero A] [inst_2 : CommGroupWithZero B] [inst_3 : MonoidWithZeroHomClass F A B] {y : Bˣ} (x_1 : ∃ a, f a ≠ 0 ∧ ∃ x, f a * ↑y = f x) (a : A) (ha : f a ≠ 0) (x : A) (hax : f a * ↑y = f x) : f x ≠ 0 := by
  aesop
