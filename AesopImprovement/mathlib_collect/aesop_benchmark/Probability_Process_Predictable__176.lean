-- Benchmark: Mathlib/Probability/Process/Predictable.lean:176
-- Original call: aesop
-- Theorem name: MeasureTheory.IsPredictable.measurable_add_one.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Filter Order TopologicalSpace MeasureTheory NNReal ENNReal Topology Filtration

set_option maxHeartbeats 800000

theorem MeasureTheory.IsPredictable.measurable_add_one.extracted_1_1.{u_3, u_1} {Ω : Type u_1} {m : MeasurableSpace Ω} {E : Type u_3} [inst : TopologicalSpace E] [inst_1 : MetrizableSpace E] [inst_2 : MeasurableSpace E] [inst_3 : BorelSpace E] {𝓕 : Filtration ℕ m} {u : ℕ → Ω → E} (h𝓕 : IsPredictable 𝓕 u) (n : ℕ) ⦃s : Set E⦄ (hs : MeasurableSet s) : u (n + 1) ⁻¹' s = {ω | (n + 1, ω) ∈ Function.uncurry u ⁻¹' s} := by
  aesop
