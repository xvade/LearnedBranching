-- Benchmark: Mathlib/Algebra/Module/LinearMap/Defs.lean:787
-- Original call: aesop
-- Theorem name: LinearMap.coe_zero_iff.extracted_1_1.{u_10,
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem LinearMap.coe_zero_iff.extracted_1_1.{u_10, u_8, u_3, u_2} {R₁ : Type u_2} {R₂ : Type u_3} {M : Type u_8} {M₂ : Type u_10} [inst : Semiring R₁] [inst_1 : Semiring R₂] [inst_2 : AddCommMonoid M] [inst_3 : AddCommMonoid M₂] [inst_4 : Module R₁ M] [inst_5 : Module R₂ M₂] {σ₁₂ : R₁ →+* R₂} (f : M →ₛₗ[σ₁₂] M₂) : ⇑f = 0 ↔ f = 0 := by
  aesop
