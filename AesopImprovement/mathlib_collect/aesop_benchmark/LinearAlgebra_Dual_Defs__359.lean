-- Benchmark: Mathlib/LinearAlgebra/Dual/Defs.lean:359
-- Original call: aesop
-- Theorem name: Submodule.dualAnnihilator_map_dualMap_le.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Module Submodule Module.Dual LinearMap Function

set_option maxHeartbeats 800000

theorem Submodule.dualAnnihilator_map_dualMap_le.extracted_1_1.{u_3, u_2, u_1} {R : Type u_1} {M : Type u_2} [inst : CommSemiring R] [inst_1 : AddCommMonoid M] [inst_2 : Module R M] {N : Type u_3} [inst_3 : AddCommMonoid N] [inst_4 : Module R N] (W : Submodule R M) (f : N →ₗ[R] M) ⦃x : Dual R N⦄ : x ∈ map f.dualMap W.dualAnnihilator → x ∈ (comap f W).dualAnnihilator := by
  aesop
