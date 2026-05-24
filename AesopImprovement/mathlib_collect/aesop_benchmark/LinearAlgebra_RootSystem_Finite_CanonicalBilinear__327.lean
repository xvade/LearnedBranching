-- Benchmark: Mathlib/LinearAlgebra/RootSystem/Finite/CanonicalBilinear.lean:327
-- Original call: aesop
-- Theorem name: RootPairing.prod_rootForm_smul_coroot_mem_range_domRestrict.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Set Function Module Submodule

set_option maxHeartbeats 800000

theorem RootPairing.prod_rootForm_smul_coroot_mem_range_domRestrict.extracted_1_1.{u_4, u_3, u_2, u_1} {ι : Type u_1} {R : Type u_2} {M : Type u_3} {N : Type u_4} [inst : CommRing R] [inst_1 : AddCommGroup M] [inst_2 : Module R M] [inst_3 : AddCommGroup N] [inst_4 : Module R N] (P : RootPairing ι R M N) [inst_5 : Fintype ι] (i : ι) (c : R) (hc : ∏ i, (P.RootForm (P.root i)) (P.root i) = (P.RootForm (P.root i)) (P.root i) * c) : c • 2 • P.root i ∈ P.rootSpan R := by
  aesop
