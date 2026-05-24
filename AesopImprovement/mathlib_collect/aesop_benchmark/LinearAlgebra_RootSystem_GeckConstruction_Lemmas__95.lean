-- Benchmark: Mathlib/LinearAlgebra/RootSystem/GeckConstruction/Lemmas.lean:95
-- Original call: aesop
-- Theorem name: RootPairing.Base.root_add_root_mem_of_mem_of_mem.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Set FaithfulSMul

set_option maxHeartbeats 800000

theorem RootPairing.Base.root_add_root_mem_of_mem_of_mem.extracted_1_1.{u_4, u_3, u_2, u_1} {ι : Type u_1} {R : Type u_2} {M : Type u_3} {N : Type u_4} [inst : CommRing R] [inst_1 : CharZero R] [inst_2 : IsDomain R] [inst_3 : AddCommGroup M] [inst_4 : Module R M] [inst_5 : AddCommGroup N] [inst_6 : Module R N] {P : RootPairing ι R M N} [inst_7 : Finite ι] [inst_8 : P.IsCrystallographic] {b : P.Base} (i j k : ι) (hij : i ≠ j) (hi : i ∈ b.support) (hj : j ∈ b.support) (hk' : P.root k - P.root j ∈ range ⇑P.root) : let _i := P.indexNeg; P.root (-k) + P.root j - P.root i ∈ range ⇑P.root → -k = i → P.root k = -P.root i := by
  aesop
