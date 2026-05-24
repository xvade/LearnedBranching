-- Benchmark: Mathlib/Algebra/Group/Irreducible/Indecomposable.lean:36
-- Original call: aesop
-- Theorem name: IsMulIndecomposable.subset.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem IsMulIndecomposable.subset.extracted_1_1.{u_2, u_1} {ι : Type u_1} {M : Type u_2} [inst : Monoid M] (v : ι → M) (s : Set ι) : {i | IsMulIndecomposable v s i} ⊆ s := by
  aesop
