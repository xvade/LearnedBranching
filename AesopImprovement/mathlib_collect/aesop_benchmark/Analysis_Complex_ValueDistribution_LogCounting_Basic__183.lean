-- Benchmark: Mathlib/Analysis/Complex/ValueDistribution/LogCounting/Basic.lean:183
-- Original call: aesop
-- Theorem name: Function.locallyFinsuppWithin.logCounting_mono.extracted_1_4.{u_1}
import Mathlib
import Mathlib.Tactic

open Filter Function MeromorphicOn Metric Real Set

set_option maxHeartbeats 800000

theorem Function.locallyFinsuppWithin.logCounting_mono.extracted_1_4.{u_1} {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : ProperSpace E] {D : locallyFinsupp E ℤ} (hD : 0 ≤ D) ⦃a b : ℝ⦄ (ha : 0 < a) (hb : 0 < b) (a_1 : a ≤ b) : let s := ((toClosedBall b) D).support; ∀ (hs : s.Finite) ⦃z : E⦄, (z ∈ Function.support fun z => ↑(((toClosedBall b) D) z) * log (b * ‖z‖⁻¹)) → z ∈ ↑hs.toFinset := by
  aesop
