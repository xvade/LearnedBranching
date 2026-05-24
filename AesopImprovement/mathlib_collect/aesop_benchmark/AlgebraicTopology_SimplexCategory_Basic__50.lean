-- Benchmark: Mathlib/AlgebraicTopology/SimplexCategory/Basic.lean:50
-- Original call: aesop
-- Theorem name: SimplexCategory.const_eq_id.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Simplicial CategoryTheory Limits

set_option maxHeartbeats 800000

theorem SimplexCategory.const_eq_id.extracted_1_1 : ⦋0⦌.const ⦋0⦌ 0 = 𝟙 ⦋0⦌ := by
  aesop
