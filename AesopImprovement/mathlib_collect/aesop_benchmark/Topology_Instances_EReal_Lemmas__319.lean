-- Benchmark: Mathlib/Topology/Instances/EReal/Lemmas.lean:319
-- Original call: aesop
-- Theorem name: EReal.limsup_const_mul_of_nonpos_of_ne_bot.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Set Filter Metric TopologicalSpace Topology ENNReal

set_option maxHeartbeats 800000

theorem EReal.limsup_const_mul_of_nonpos_of_ne_bot.extracted_1_1 {c : EReal} (h₁ : c ≤ 0) (h₂ : c ≠ ⊥) : 0 ≤ -c := by
  aesop
