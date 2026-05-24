-- Benchmark: Mathlib/LinearAlgebra/RootSystem/BaseExists.lean:174
-- Original call: aesop
-- Theorem name: RootPairing.eq_baseOf_of_linearIndepOn_of_mem_or_neg_mem_closure.extracted_1_6.{u_4,
import Mathlib
import Mathlib.Tactic

open Function IsAddIndecomposable Module Set Submodule

set_option maxHeartbeats 800000

theorem RootPairing.eq_baseOf_of_linearIndepOn_of_mem_or_neg_mem_closure.extracted_1_6.{u_4, u_3, u_2, u_1} {ι : Type u_1} {R : Type u_2} {M : Type u_3} {N : Type u_4} [inst : Finite ι] [inst_1 : AddCommGroup M] [inst_2 : AddCommGroup N] [inst_3 : Field R] [inst_4 : CharZero R] [inst_5 : Module R M] [inst_6 : Module R N] (P : RootPairing ι R M N) [inst_7 : P.IsRootSystem] [inst_8 : P.IsCrystallographic] (s : Set ι) (hli : LinearIndepOn R (⇑P.root) s) (f : M →+ ℚ) (hf : ∀ i ∈ s, f (P.root i) = 1) : let _i := P.indexNeg; (baseOf (⇑P.root) f).ncard = s.ncard → (∀ (i : ι), ∃ z, f (P.root i) = ↑z) → ∀ i ∈ s, i ∈ {i | 0 < f (P.root i)} := by
  aesop
