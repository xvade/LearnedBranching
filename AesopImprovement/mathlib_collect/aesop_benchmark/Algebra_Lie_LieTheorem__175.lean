-- Benchmark: Mathlib/Algebra/Lie/LieTheorem.lean:175
-- Original call: aesop
-- Theorem name: LieModule.exists_nontrivial_weightSpace_of_lieIdeal.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Module LieModule Submodule

set_option maxHeartbeats 800000

theorem LieModule.exists_nontrivial_weightSpace_of_lieIdeal.extracted_1_1.{u_3, u_2, u_1} {k : Type u_1} [inst : Field k] {L : Type u_2} [inst_1 : LieRing L] [inst_2 : LieAlgebra k L] {V : Type u_3} [inst_3 : AddCommGroup V] [inst_4 : Module k V] [inst_5 : LieRingModule L V] [inst_6 : LieModule k L V] [inst_7 : CharZero k] [inst_8 : Module.Finite k V] [inst_9 : IsTriangularizable k L V] (A : LieIdeal k L) (hA : IsCoatom ↑A) (χ₀ : Module.Dual k ↥A) [inst_10 : Nontrivial ↥(weightSpace V ⇑χ₀)] (z : L) (hz : z ∉ ↑A) : z ≠ 0 := by
  aesop
