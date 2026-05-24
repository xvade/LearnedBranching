-- Benchmark: Mathlib/Combinatorics/Additive/SubsetSum.lean:63
-- Original call: aesop
-- Theorem name: Finset.vadd_finset_subsetSum_subset_subsetSum_insert.extracted_1_4.{u_1}
import Mathlib
import Mathlib.Tactic

open Pointwise

set_option maxHeartbeats 800000

theorem Finset.vadd_finset_subsetSum_subset_subsetSum_insert.extracted_1_4.{u_1} {M : Type u_1} [inst : DecidableEq M] [inst_1 : AddCommMonoid M] {A : Finset M} {a : M} (a_notin_A : a ∉ A) (B : Finset M) (hB : B ⊆ A) : insert a B ⊆ insert a A := by
  aesop
