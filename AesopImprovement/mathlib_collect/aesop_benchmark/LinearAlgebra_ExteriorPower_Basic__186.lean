-- Benchmark: Mathlib/LinearAlgebra/ExteriorPower/Basic.lean:186
-- Original call: aesop
-- Theorem name: exteriorPower.presentation.isPresentationCore.extracted_1.{u_4,
import Mathlib
import Mathlib.Tactic

open TensorProduct Function Set Set.powersetCard Submodule

set_option maxHeartbeats 800000

theorem exteriorPower.presentation.isPresentationCore.extracted_1.{u_4, u_1, u} (R : Type u) [inst : CommRing R] (n : ℕ) (M : Type u_1) [inst_1 : AddCommGroup M] [inst_2 : Module R M] {N : Type u_4} [inst_3 : AddCommGroup N] [inst_4 : Module R N] (s : (relations R (Fin n) M).Solution N) : (relationsSolutionEquiv.symm (ιMulti R n)).postcomp (ExteriorAlgebra.liftAlternating (update 0 n (relationsSolutionEquiv s)) ∘ₗ (⋀[R]^n M).subtype) = s := by
  aesop
