-- Benchmark: Mathlib/Analysis/Complex/ValueDistribution/LogCounting/Basic.lean:202
-- Original call: aesop
-- Theorem name: Function.locallyFinsuppWithin.logCounting_strictMono.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Filter Function MeromorphicOn Metric Real Set

set_option maxHeartbeats 800000

theorem Function.locallyFinsuppWithin.logCounting_strictMono.extracted_1_1.{u_1} {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : DecidableEq E] [inst_2 : ProperSpace E] {D : locallyFinsupp E ℤ} {e : E} (hD : single e 1 ≤ D) : logCounting D = logCounting (single e 1) + logCounting (D - single e 1) := by
  aesop
