-- Benchmark: Mathlib/Analysis/Analytic/OfScalars.lean:243
-- Original call: aesop
-- Theorem name: FormalMultilinearSeries.ofScalars_radius_eq_inv_of_tendsto.extracted_1_2.{u_2,
import Mathlib
import Mathlib.Tactic

open ContinuousMultilinearMap Filter ENNReal Topology NNReal

set_option maxHeartbeats 800000

theorem FormalMultilinearSeries.ofScalars_radius_eq_inv_of_tendsto.extracted_1_2.{u_2, u_1} {𝕜 : Type u_1} (E : Type u_2) [inst : NontriviallyNormedField 𝕜] [inst_1 : NormedRing E] [inst_2 : NormedAlgebra 𝕜 E] (c : ℕ → 𝕜) [inst_3 : NormOneClass E] {r : ℝ≥0} (hr : r ≠ 0) (hc : Tendsto (fun n => ‖c n.succ‖ / ‖c n‖) atTop (𝓝 ↑r)) (r' : ℝ≥0) (hr' : ↑r' < (ofScalars E c).radius) (this : 1 < r' * r) : r' ≠ 0 := by
  aesop
