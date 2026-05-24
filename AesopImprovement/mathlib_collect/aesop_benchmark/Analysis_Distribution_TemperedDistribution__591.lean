-- Benchmark: Mathlib/Analysis/Distribution/TemperedDistribution.lean:591
-- Original call: aesop
-- Theorem name: TemperedDistribution.toTemperedDistribution_dirac_eq_delta.extracted_1_1.{u_3}
import Mathlib
import Mathlib.Tactic

open SchwartzMap ContinuousLinearMap MeasureTheory MeasureTheory.Measure Nat NNReal ContDiff ENNReal LineDeriv Laplacian FourierTransform Real

set_option maxHeartbeats 800000

theorem TemperedDistribution.toTemperedDistribution_dirac_eq_delta.extracted_1_1.{u_3} {E : Type u_3} [inst : NormedAddCommGroup E] [inst_1 : NormedSpace ℝ E] [inst_2 : MeasurableSpace E] [inst_3 : BorelSpace E] [inst_4 : SecondCountableTopology E] (x : E) : (dirac x).toTemperedDistribution = delta x := by
  aesop
