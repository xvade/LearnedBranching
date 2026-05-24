-- Benchmark: Mathlib/LinearAlgebra/Matrix/Permutation.lean:58
-- Original call: aesop
-- Theorem name: Matrix.conjTranspose_permMatrix.extracted_1_2.{u_2,
import Mathlib
import Mathlib.Tactic

open Equiv

set_option maxHeartbeats 800000

theorem Matrix.conjTranspose_permMatrix.extracted_1_2.{u_2, u_1} {n : Type u_1} {R : Type u_2} [inst : DecidableEq n] (σ : Perm n) [inst_1 : NonAssocSemiring R] [inst_2 : StarRing R] : (of fun i j => star (Perm.permMatrix R σ⁻¹ i j)) = Perm.permMatrix R σ⁻¹ := by
  aesop
