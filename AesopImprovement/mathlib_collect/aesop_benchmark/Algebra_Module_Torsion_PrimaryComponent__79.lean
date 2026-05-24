-- Benchmark: Mathlib/Algebra/Module/Torsion/PrimaryComponent.lean:79
-- Original call: aesop (add norm [map, Subtype.ext_iff, primaryComponent_mem])
-- Theorem name: Ideal.primaryComponent.map_ker_eq.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Set Function Submodule Module

set_option maxHeartbeats 800000

theorem Ideal.primaryComponent.map_ker_eq.extracted_1_1.{u_4, u_3, u_1} {A : Type u_1} {M₁ : Type u_3} {M₂ : Type u_4} [inst : CommRing A] (I : Ideal A) [inst_1 : AddCommMonoid M₁] [inst_2 : AddCommMonoid M₂] [inst_3 : Module A M₁] [inst_4 : Module A M₂] (φ : M₁ →ₗ[A] M₂) : Submodule.map (primaryComponent M₁ I).subtype (map I φ).ker = Submodule.map φ.ker.subtype (primaryComponent (↥φ.ker) I) := by
  aesop (add norm [map, Subtype.ext_iff, primaryComponent_mem])
