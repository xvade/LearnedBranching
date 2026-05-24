-- Benchmark: Mathlib/Probability/Process/Predictable.lean:200
-- Original call: aesop
-- Theorem name: MeasureTheory.isPredictable_of_measurable_add_one.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Filter Order TopologicalSpace MeasureTheory NNReal ENNReal Topology Filtration

set_option maxHeartbeats 800000

theorem MeasureTheory.isPredictable_of_measurable_add_one.extracted_1_1.{u_3, u_1} {Ω : Type u_1} {m : MeasurableSpace Ω} {E : Type u_3} [inst : TopologicalSpace E] [inst_1 : MetrizableSpace E] [inst_2 : MeasurableSpace E] [inst_3 : BorelSpace E] [inst_4 : SecondCountableTopology E] {𝓕 : Filtration ℕ m} {u : ℕ → Ω → E} (h₀ : Measurable (u 0)) (h : ∀ (n : ℕ), Measurable (u (n + 1))) ⦃s : Set E⦄ (hs : MeasurableSet s) : Function.uncurry u ⁻¹' s = ⋃ n, {n} ×ˢ (u n ⁻¹' s) := by
  aesop
