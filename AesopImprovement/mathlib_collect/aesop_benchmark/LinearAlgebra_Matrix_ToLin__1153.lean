-- Benchmark: Mathlib/LinearAlgebra/Matrix/ToLin.lean:1153
-- Original call: aesop
-- Theorem name: endVecRingEquivMatrixEnd.extracted_8.{u_4,
import Mathlib
import Mathlib.Tactic

open LinearMap Matrix Module Set Submodule

set_option maxHeartbeats 800000

theorem endVecRingEquivMatrixEnd.extracted_8.{u_4, u_3, u_2, u_1} (ι : Type u_1) [inst : Fintype ι] [inst_1 : DecidableEq ι] (R : Type u_2) [inst_2 : CommSemiring R] (A : Type u_3) [inst_3 : Semiring A] [inst_4 : Algebra R A] (M : Type u_4) [inst_5 : AddCommMonoid M] [inst_6 : Module R M] [inst_7 : Module A M] [inst_8 : IsScalarTower R A M] (g : End A (ι → M)) (j : ι) (x : M) : g (Pi.single j x) = ∑ x_1, Pi.single x_1 (g (Pi.single j x) x_1) := by
  aesop
