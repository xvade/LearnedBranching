-- Benchmark: Mathlib/Analysis/SpecificLimits/Basic.lean:117
-- Original call: aesop
-- Theorem name: tendsto_mod_div_atTop_nhds_zero_nat.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Set Function Filter Finset Metric Topology Nat NNReal ENNReal

set_option maxHeartbeats 800000

theorem tendsto_mod_div_atTop_nhds_zero_nat.extracted_1_1 {m : ℕ} (hm : 0 < m) : ∀ᶠ (n : ℕ) in atTop, 0 ≤ (fun n => ↑(n % m)) n := by
  aesop
