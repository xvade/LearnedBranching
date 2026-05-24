-- Benchmark: Mathlib/MeasureTheory/Integral/IntervalIntegral/Periodic.lean:288
-- Original call: aesop
-- Theorem name: Function.Periodic.intervalIntegrable.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Set Function MeasureTheory MeasureTheory.Measure TopologicalSpace AddSubgroup NNReal ENNReal

set_option maxHeartbeats 800000

theorem Function.Periodic.intervalIntegrable.extracted_1_1.{u_1} {E : Type u_1} [inst : NormedAddCommGroup E] {f : ℝ → E} {T t : ℝ} (h₁f : Periodic f T) (hT_1 : T ≠ 0) (h₂f : IntervalIntegrable f volume t (t + T)) (hT : ¬0 < T) (h : T < 0) : 0 < -T := by
  aesop
