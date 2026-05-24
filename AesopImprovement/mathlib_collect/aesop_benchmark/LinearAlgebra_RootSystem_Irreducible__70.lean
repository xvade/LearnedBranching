-- Benchmark: Mathlib/LinearAlgebra/RootSystem/Irreducible.lean:70
-- Original call: aesop
-- Theorem name: RootPairing.eq_zero_iff_forall_coroot'_eq_zero.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Function Set Submodule LinearMap MulAction Module.End MonoidAlgebra

set_option maxHeartbeats 800000

theorem RootPairing.eq_zero_iff_forall_coroot'_eq_zero.extracted_1_1.{u_4, u_3, u_2, u_1} {ι : Type u_1} {R : Type u_2} {M : Type u_3} {N : Type u_4} [inst : CommRing R] [inst_1 : AddCommGroup M] [inst_2 : Module R M] [inst_3 : AddCommGroup N] [inst_4 : Module R N] (P : RootPairing ι R M N) [inst_5 : P.IsRootSystem] {x : M} (h : ∀ (i : ι), (P.coroot' i) x = 0) : x ∈ ⨅ i, ker (P.coroot' i) := by
  aesop
