-- Benchmark: Mathlib/LinearAlgebra/RootSystem/Finite/Lemmas.lean:332
-- Original call: aesop
-- Theorem name: RootPairing.InvariantForm.apply_eq_or_of_apply_ne.extracted_1_7.{u_4,
import Mathlib
import Mathlib.Tactic

open Function Set Submodule FaithfulSMul IsDomain

set_option maxHeartbeats 800000

theorem RootPairing.InvariantForm.apply_eq_or_of_apply_ne.extracted_1_7.{u_4, u_3, u_2, u_1} {ι : Type u_1} {R : Type u_2} {M : Type u_3} {N : Type u_4} [inst : CommRing R] [inst_1 : AddCommGroup M] [inst_2 : Module R M] [inst_3 : AddCommGroup N] [inst_4 : Module R N] {P : RootPairing ι R M N} [inst_5 : Finite ι] [inst_6 : CharZero R] [inst_7 : P.IsCrystallographic] {i j : ι} [inst_8 : IsDomain R] [inst_9 : P.IsReduced] (B : P.InvariantForm) [inst_10 : P.IsIrreducible] (h : (B.form (P.root i)) (P.root i) ≠ (B.form (P.root j)) (P.root j)) (k : ι) (this : Nonempty ι) (i' j' : ι) (hi : (B.form (P.root i)) (P.root i) = (B.form (P.root j')) (P.root j')) (hj : (B.form (P.root j)) (P.root j) = (B.form (P.root j')) (P.root j')) (h' : (B.form (P.root k)) (P.root k) = (B.form (P.root i')) (P.root i') ∨ (B.form (P.root k)) (P.root k) = (B.form (P.root j')) (P.root j')) : (B.form (P.root k)) (P.root k) = (B.form (P.root i)) (P.root i) ∨ (B.form (P.root k)) (P.root k) = (B.form (P.root j)) (P.root j) := by
  aesop
