-- Benchmark: Mathlib/LinearAlgebra/RootSystem/BaseExists.lean:206
-- Original call: aesop
-- Theorem name: RootPairing.baseOf_root_eq_baseOf_coroot_aux.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Function IsAddIndecomposable Module Set Submodule

set_option maxHeartbeats 800000

theorem RootPairing.baseOf_root_eq_baseOf_coroot_aux.extracted_1_1.{u_4, u_3, u_2, u_1} {ι : Type u_1} {R : Type u_2} {M : Type u_3} {N : Type u_4} [inst : Finite ι] [inst_1 : AddCommGroup M] [inst_2 : AddCommGroup N] [inst_3 : Field R] [inst_4 : CharZero R] [inst_5 : Module R M] [inst_6 : Module R N] (P : RootPairing ι R M N) [inst_7 : P.IsRootSystem] [inst_8 : P.IsCrystallographic] [inst_9 : P.IsReduced] (f : M →+ ℚ) (g : N →+ ℚ) (hf : ∀ (i : ι), f (P.root i) ≠ 0) (hfg : ∀ (i : ι), 0 < f (P.root i) ↔ 0 < g (P.coroot i)) : let _i := compHom M (algebraMap ℚ R); let s := baseOf (⇑P.root) f; ∀ i ∈ {i | 0 < f (P.root i)}, i ∈ {i | 0 < g (P.coroot i)} := by
  aesop
