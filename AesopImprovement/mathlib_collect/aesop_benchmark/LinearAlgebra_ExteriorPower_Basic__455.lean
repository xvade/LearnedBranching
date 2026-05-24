-- Benchmark: Mathlib/LinearAlgebra/ExteriorPower/Basic.lean:455
-- Original call: aesop
-- Theorem name: exteriorPower.oneEquiv_naturality.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open TensorProduct Function Set Set.powersetCard Submodule Finset

set_option maxHeartbeats 800000

theorem exteriorPower.oneEquiv_naturality.extracted_1_1.{u_2, u_1, u} {R : Type u} [inst : CommRing R] {M : Type u_1} {N : Type u_2} [inst_1 : AddCommGroup M] [inst_2 : Module R M] [inst_3 : AddCommGroup N] [inst_4 : Module R N] (f : M →ₗ[R] N) : ↑(oneEquiv R N) ∘ₗ map 1 f = f ∘ₗ ↑(oneEquiv R M) := by
  aesop
