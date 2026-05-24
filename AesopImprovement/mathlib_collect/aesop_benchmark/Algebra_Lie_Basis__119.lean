-- Benchmark: Mathlib/Algebra/Lie/Basis.lean:119
-- Original call: aesop
-- Theorem name: LieAlgebra.Basis.symm_symm.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Function LieSubalgebra Module Set

set_option maxHeartbeats 800000

theorem LieAlgebra.Basis.symm_symm.extracted_1_1.{u_3, u_2, u_1} {ι : Type u_1} {R : Type u_2} {L : Type u_3} [inst : Finite ι] [inst_1 : CommRing R] [inst_2 : LieRing L] [inst_3 : LieAlgebra R L] (b : Basis ι R L) : b.symm.symm = b := by
  aesop
