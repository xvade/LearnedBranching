-- Benchmark: Mathlib/LinearAlgebra/Matrix/Determinant/TotallyUnimodular.lean:177
-- Original call: aesop
-- Theorem name: Matrix.one_fromRows_isTotallyUnimodular_iff.extracted_1_1.{u_5,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Matrix.one_fromRows_isTotallyUnimodular_iff.extracted_1_1.{u_5, u_3, u_1} {m : Type u_1} {n : Type u_3} {R : Type u_5} [inst : CommRing R] [inst_1 : DecidableEq n] (A : Matrix m n R) : fromRows 1 A = (reindex (Equiv.sumComm m n) (Equiv.refl n)) (A.fromRows 1) := by
  aesop
