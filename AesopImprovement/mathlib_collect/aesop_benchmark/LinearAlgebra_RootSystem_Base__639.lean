-- Benchmark: Mathlib/LinearAlgebra/RootSystem/Base.lean:639
-- Original call: aesop
-- Theorem name: RootPairing.Base.IsPos.induction_on_reflect.extracted_1_4.{u_4,
import Mathlib
import Mathlib.Tactic

open Function Set Submodule FaithfulSMul Module End Finsupp

set_option maxHeartbeats 800000

theorem RootPairing.Base.IsPos.induction_on_reflect.extracted_1_4.{u_4, u_3, u_2, u_1} {ι : Type u_1} {R : Type u_2} {M : Type u_3} {N : Type u_4} [inst : CommRing R] [inst_1 : AddCommGroup M] [inst_2 : Module R M] [inst_3 : AddCommGroup N] [inst_4 : Module R N] {P : RootPairing ι R M N} {b : P.Base} [inst_5 : CharZero R] [inst_6 : Finite ι] [inst_7 : IsDomain R] [inst_8 : P.IsCrystallographic] [inst_9 : P.IsReduced] {p : ι → Prop} (h₁ : ∀ i ∈ b.support, p i) (h₂ : ∀ (i j : ι), p i → j ∈ b.support → p ((P.reflectionPerm j) i)) (n : ℕ) (ih : ∀ m < n, ∀ {i : ι}, b.IsPos i → (b.height i).natAbs = m → p i) {i : ι} (h₀ : b.IsPos i) (hN : (b.height i).natAbs = n) (j : ι) (hj' : 0 < P.pairingIn ℤ i j) (hij : i ≠ j) (hk : b.IsPos ((P.reflectionPerm j) i)) (this : P.root ((P.reflectionPerm j) i) = P.root i + -P.pairingIn ℤ i j • P.root j) (hj : 0 < b.height j) : b.height i + -P.pairingIn ℤ i j • b.height j < b.height i := by
  aesop
