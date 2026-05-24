-- Benchmark: Mathlib/MeasureTheory/Integral/IntervalIntegral/Periodic.lean:353
-- Original call: aesop
-- Theorem name: Function.Periodic.intervalIntegral_add_eq.extracted_1_3.{u_1}
import Mathlib
import Mathlib.Tactic

open Set Function MeasureTheory MeasureTheory.Measure TopologicalSpace AddSubgroup NNReal ENNReal

set_option maxHeartbeats 800000

theorem Function.Periodic.intervalIntegral_add_eq.extracted_1_3.{u_1} {E : Type u_1} [inst : NormedAddCommGroup E] {f : ℝ → E} {T : ℝ} [inst_1 : NormedSpace ℝ E] (hf : Periodic f T) (hT_1 : ¬0 < T) (hT : T < 0) : 0 < -T := by
  aesop
