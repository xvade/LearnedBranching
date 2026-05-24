-- Benchmark: Mathlib/Combinatorics/Enumerative/InclusionExclusion.lean:61
-- Original call: aesop
-- Theorem name: Finset.prod_indicator_biUnion_sub_indicator.extracted_1_3.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Finset.prod_indicator_biUnion_sub_indicator.extracted_1_3.{u_2, u_1} {ι : Type u_1} {α : Type u_2} {s : Finset ι} (S : ι → Set α) (a : α) (ha : a ∉ ⋃ i ∈ s, S i) (i : ι) (hi : i ∈ s) : a ∉ S i := by
  aesop
