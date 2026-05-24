-- Benchmark: Mathlib/RingTheory/MvPolynomial/Homogeneous.lean:445
-- Original call: aesop
-- Theorem name: MvPolynomial.IsHomogeneous.exists_eval_ne_zero_of_totalDegree_le_card_aux.extracted_1_1.{u_5}
import Mathlib
import Mathlib.Tactic

open Finsupp Polynomial Cardinal

set_option maxHeartbeats 800000

theorem MvPolynomial.IsHomogeneous.exists_eval_ne_zero_of_totalDegree_le_card_aux.extracted_1_1.{u_5} {R : Type u_5} [inst : CommRing R] [inst_1 : IsDomain R] (N : ℕ) (IH : ∀ {F : MvPolynomial (Fin N) R} {n : ℕ}, F.IsHomogeneous n → F ≠ 0 → ↑n ≤ #R → ∃ r, (eval r) F ≠ 0) {F : MvPolynomial (Fin (N + 1)) R} {n : ℕ} (hF : F.IsHomogeneous n) (hF₀ : F ≠ 0) (hnR : ↑n ≤ #R) (hdeg : ((finSuccEquiv R N) F).natDegree < n + 1) (i : ℕ) (hi : ((finSuccEquiv R N) F).coeff i ≠ 0) (hin : i ≤ n) (hFn : ((finSuccEquiv R N) F).coeff n = 0) : i = n → i < n := by
  aesop
