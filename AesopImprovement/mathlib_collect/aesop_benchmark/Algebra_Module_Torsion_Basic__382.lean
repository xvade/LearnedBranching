-- Benchmark: Mathlib/Algebra/Module/Torsion/Basic.lean:382
-- Original call: aesop (add norm Submodule.eq_bot_iff)
-- Theorem name: Submodule.torsionBySet_ideal_isTorsion_of_noZeroDivisors.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Module Submodule

set_option maxHeartbeats 800000

theorem Submodule.torsionBySet_ideal_isTorsion_of_noZeroDivisors.extracted_1_1.{u_2, u_1} {R : Type u_1} {M : Type u_2} [inst : CommSemiring R] [inst_1 : AddCommMonoid M] [inst_2 : Module R M] [inst_3 : NoZeroDivisors R] [inst_4 : Nontrivial R] {I : Ideal R} (hbot : I ≠ ⊥) : IsTorsion R ↥(torsionBySet R M ↑I) := by
  aesop (add norm Submodule.eq_bot_iff)
