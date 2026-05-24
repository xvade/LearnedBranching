-- Benchmark: Mathlib/AlgebraicTopology/SimplexCategory/Basic.lean:694
-- Original call: aesop
-- Theorem name: SimplexCategory.isIso_iff_of_epi.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Simplicial CategoryTheory Limits

set_option maxHeartbeats 800000

theorem SimplexCategory.isIso_iff_of_epi.extracted_1_1 {n m : SimplexCategory} (f : n ⟶ m) [hf : Epi f] (h : n.len = m.len) : n = m := by
  aesop
