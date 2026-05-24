-- Benchmark: Mathlib/MeasureTheory/Integral/Prod.lean:361
-- Original call: aesop (add simp [HasFiniteIntegral, lintegral_prod, ENNReal.mul_lt_top_iff])
-- Theorem name: MeasureTheory.Integrable.of_comp_snd.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Topology ENNReal MeasureTheory Set Function Real MeasurableSpace MeasureTheory.Measure TopologicalSpace Filter

set_option maxHeartbeats 800000

theorem MeasureTheory.Integrable.of_comp_snd.extracted_1_1.{u_3, u_2, u_1} {α : Type u_1} {β : Type u_2} {E : Type u_3} [inst : MeasurableSpace α] [inst_1 : MeasurableSpace β] {μ : Measure α} {ν : Measure β} [inst_2 : NormedAddCommGroup E] [inst_3 : SFinite ν] {f : β → E} (hμ : μ ≠ 0) (hf_meas : AEStronglyMeasurable (fun x => f x.2) (μ.prod ν)) (hf_fin : HasFiniteIntegral (fun x => f x.2) (μ.prod ν)) (this : AEMeasurable (fun x => ‖f x.2‖ₑ) (μ.prod ν)) : HasFiniteIntegral f ν := by
  aesop (add simp [HasFiniteIntegral, lintegral_prod, ENNReal.mul_lt_top_iff])
