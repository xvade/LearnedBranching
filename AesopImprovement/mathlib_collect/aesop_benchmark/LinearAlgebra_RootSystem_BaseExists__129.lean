-- Benchmark: Mathlib/LinearAlgebra/RootSystem/BaseExists.lean:129
-- Original call: aesop
-- Theorem name: RootPairing.linearIndepOn_root_baseOf.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Function IsAddIndecomposable Module Set Submodule

set_option maxHeartbeats 800000

theorem RootPairing.linearIndepOn_root_baseOf.extracted_1_1.{u_4, u_3, u_2, u_1} {ι : Type u_1} {R : Type u_2} {M : Type u_3} {N : Type u_4} [inst : Finite ι] [inst_1 : AddCommGroup M] [inst_2 : AddCommGroup N] [inst_3 : Field R] [inst_4 : CharZero R] [inst_5 : Module R M] [inst_6 : Module R N] (P : RootPairing ι R M N) [inst_7 : P.IsRootSystem] [inst_8 : P.IsCrystallographic] (f : M →+ ℚ) (hf : ∀ (i : ι), f (P.root i) ≠ 0) : let _i_1 := compHom M (algebraMap ℚ R); let _i := compHom N (algebraMap ℚ R); let this := P.indexNeg; let v := fun i => P.rootSpanMem ℚ ↑i; ∀ x ∈ range v, x ∈ range (P.rootSpanMem ℚ) := by
  aesop
