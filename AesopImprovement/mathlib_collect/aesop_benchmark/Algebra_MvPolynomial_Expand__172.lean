-- Benchmark: Mathlib/Algebra/MvPolynomial/Expand.lean:172
-- Original call: aesop (add simp Finset.subset_iff)
-- Theorem name: MvPolynomial.support_expand_subset.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem MvPolynomial.support_expand_subset.extracted_1_1.{u_3, u_1} {σ : Type u_1} {R : Type u_3} [inst : CommSemiring R] {p : ℕ} (φ : MvPolynomial σ R) [inst_1 : DecidableEq σ] : (φ.support.biUnion fun x => ((monomial (p • x)) (coeff x φ)).support) ⊆ Finset.image (fun x => p • x) φ.support := by
  aesop (add simp Finset.subset_iff)
