-- Benchmark: Mathlib/Algebra/Order/Antidiag/Pi.lean:186
-- Original call: aesop (add simp [sum_add_distrib])
-- Theorem name: Finset.piAntidiag_cons.extracted_1_4.{u_2,
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem Finset.piAntidiag_cons.extracted_1_4.{u_2, u_1} {ι : Type u_1} {μ : Type u_2} [inst : DecidableEq ι] [inst_1 : AddCancelCommMonoid μ] [inst_2 : HasAntidiagonal μ] [inst_3 : DecidableEq μ] {i : ι} {s : Finset ι} (hi : i ∉ s) (n a : μ) (g : ι → μ) (hg : ∀ (i : ι), ¬g i = 0 → i ∈ s) (hn : a + s.sum g = n) (this : ¬g i = 0 → i ∈ s) : (addRightEmbedding fun t => if t = i then a else 0) g i + ∑ x ∈ s, (addRightEmbedding fun t => if t = i then a else 0) g x = n ∧ ∀ (i_1 : ι), ¬(addRightEmbedding fun t => if t = i then a else 0) g i_1 = 0 → i_1 = i ∨ i_1 ∈ s := by
  aesop (add simp [sum_add_distrib])
