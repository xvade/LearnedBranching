-- Benchmark: Mathlib/Algebra/Module/Submodule/Lattice.lean:378
-- Original call: aesop (add norm [disjoint_def', AddSubgroup.disjoint_def'])
-- Theorem name: Submodule.disjoint_iff_add_eq_zero.extracted_1_3.{u_5,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Submodule.disjoint_iff_add_eq_zero.extracted_1_3.{u_5, u_4} {M : Type u_4} {R : Type u_5} [inst : Ring R] [inst_1 : AddCommGroup M] [inst_2 : Module R M] {N₁ N₂ : Submodule R M} : Disjoint N₁ N₂ ↔ Disjoint N₁.toAddSubgroup N₂.toAddSubgroup := by
  aesop (add norm [disjoint_def', AddSubgroup.disjoint_def'])
