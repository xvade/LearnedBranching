-- Benchmark: Mathlib/MeasureTheory/Integral/IntervalIntegral/Periodic.lean:310
-- Original call: aesop
-- Theorem name: Function.Periodic.intervalIntegrable.extracted_1_2.{u_1}
import Mathlib
import Mathlib.Tactic

open Set Function MeasureTheory MeasureTheory.Measure TopologicalSpace AddSubgroup NNReal ENNReal

set_option maxHeartbeats 800000

theorem Function.Periodic.intervalIntegrable.extracted_1_2.{u_1} {E : Type u_1} [inst : NormedAddCommGroup E] {f : ℝ → E} {T t : ℝ} (h₁f : Periodic f T) (hT_1 : T ≠ 0) (h₂f : IntervalIntegrable f volume t (t + T)) (a₁ a₂ : ℝ) (hT : 0 < T) (n₁ : ℕ) (hn₁ : (t - min a₁ a₂) / T ≤ ↑n₁) (n₂ : ℕ) (hn₂ : (max a₁ a₂ - t) / T ≤ ↑n₂) (this : uIcc a₁ a₂ ⊆ uIcc (t - ↑n₁ * T) (t + ↑n₂ * T)) : let a := fun n => t + (↑n - ↑n₁) * T; ∀ k < n₁ + n₂, ‖f (min t (t + T))‖ₑ ≠ ∞ := by
  aesop
