-- Benchmark: Mathlib/Algebra/Order/Antidiag/Pi.lean:183
-- Original call: aesop (add simp [update])
-- Theorem name: Finset.piAntidiag_cons.extracted_1_3.{u_2,
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem Finset.piAntidiag_cons.extracted_1_3.{u_2, u_1} {ι : Type u_1} {μ : Type u_2} [inst : DecidableEq ι] [inst_1 : AddCancelCommMonoid μ] [inst_2 : HasAntidiagonal μ] [inst_3 : DecidableEq μ] {i : ι} {s : Finset ι} (hi : i ∉ s) (n : μ) (f : ι → μ) (hn : f i + ∑ x ∈ s, f x = n) (hf : ∀ (i_1 : ι), ¬f i_1 = 0 → i_1 = i ∨ i_1 ∈ s) (j : ι) (this : ¬f j = 0 → ¬j = i → j ∈ s) : ¬update f i 0 j = 0 → j ∈ s := by
  aesop (add simp [update])
