-- Benchmark: Mathlib/LinearAlgebra/ExteriorPower/Basic.lean:298
-- Original call: aesop
-- Theorem name: exteriorPower.map_comp.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open TensorProduct Function Set Set.powersetCard Submodule

set_option maxHeartbeats 800000

theorem exteriorPower.map_comp.extracted_1_1.{u_3, u_2, u_1, u} {R : Type u} [inst : CommRing R] {n : ℕ} {M : Type u_1} {N : Type u_2} {N' : Type u_3} [inst_1 : AddCommGroup M] [inst_2 : Module R M] [inst_3 : AddCommGroup N] [inst_4 : Module R N] [inst_5 : AddCommGroup N'] [inst_6 : Module R N'] (f : M →ₗ[R] N) (g : N →ₗ[R] N') : map n (g ∘ₗ f) = map n g ∘ₗ map n f := by
  aesop
