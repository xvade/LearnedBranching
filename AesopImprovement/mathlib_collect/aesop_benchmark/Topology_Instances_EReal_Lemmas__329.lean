-- Benchmark: Mathlib/Topology/Instances/EReal/Lemmas.lean:329
-- Original call: aesop
-- Theorem name: EReal.liminf_const_mul_of_nonpos_of_ne_bot.extracted_1_2
import Mathlib
import Mathlib.Tactic

open Set Filter Metric TopologicalSpace Topology ENNReal

set_option maxHeartbeats 800000

theorem EReal.liminf_const_mul_of_nonpos_of_ne_bot.extracted_1_2 {c : EReal} (h₁ : c ≤ 0) (h₂ : c ≠ ⊥) : 0 ≤ -c := by
  aesop
