-- Benchmark: Mathlib/MeasureTheory/Integral/CircleIntegral.lean:207
-- Original call: aesop
-- Theorem name: CircleIntegrable.sum.extracted_1_2.{u_3,
import Mathlib
import Mathlib.Tactic

open Real NNReal Interval Pointwise Topology Complex MeasureTheory TopologicalSpace Metric Function Set Filter Asymptotics

set_option maxHeartbeats 800000

theorem CircleIntegrable.sum.extracted_1_2.{u_3, u_1} {E : Type u_1} [inst : NormedAddCommGroup E] {c : ℂ} {R : ℝ} {ι : Type u_3} (s : Finset ι) {f : ι → ℂ → E} (h : ∀ i ∈ s, CircleIntegrable (f i) c R) : (fun θ => (∑ i ∈ s, f i) (circleMap c R θ)) = ∑ i ∈ s, fun θ => f i (circleMap c R θ) := by
  aesop
