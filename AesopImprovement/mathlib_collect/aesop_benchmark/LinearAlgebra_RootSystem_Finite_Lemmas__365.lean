-- Benchmark: Mathlib/LinearAlgebra/RootSystem/Finite/Lemmas.lean:365
-- Original call: aesop
-- Theorem name: RootPairing.forall_pairing_eq_swap_or.extracted_1_25.{u_4,
import Mathlib
import Mathlib.Tactic

open Function Set Submodule FaithfulSMul IsDomain

set_option maxHeartbeats 800000

theorem RootPairing.forall_pairing_eq_swap_or.extracted_1_25.{u_4, u_3, u_2, u_1} {ι : Type u_1} {R : Type u_2} {M : Type u_3} {N : Type u_4} [inst : CommRing R] [inst_1 : AddCommGroup M] [inst_2 : Module R M] [inst_3 : AddCommGroup N] [inst_4 : Module R N] (P : RootPairing ι R M N) [inst_5 : Finite ι] [inst_6 : CharZero R] [inst_7 : P.IsCrystallographic] [inst_8 : IsDomain R] [inst_9 : P.IsReduced] [inst_10 : P.IsIrreducible] (B : P.InvariantForm) (i j : ι) : let li := (B.form (P.root i)) (P.root i); let lj := (B.form (P.root j)) (P.root j); li ≠ lj → (∀ (k : ι), (B.form (P.root k)) (P.root k) = li ∨ (B.form (P.root k)) (P.root k) = lj) → ∀ (k₁ k₂ : ι), lj = 3 * li → (B.form (P.root k₁)) (P.root k₁) = lj → (B.form (P.root k₂)) (P.root k₂) = lj → 3 * P.pairing k₂ k₁ = 3 * P.pairing k₁ k₂ ∨ li = 0 → P.pairing k₁ k₂ = P.pairing k₂ k₁ ∨ P.pairing k₁ k₂ = 3 * P.pairing k₂ k₁ ∨ P.pairing k₂ k₁ = 3 * P.pairing k₁ k₂ := by
  aesop
