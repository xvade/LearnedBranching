-- Benchmark: Mathlib/Analysis/Complex/OpenMapping.lean:195
-- Original call: aesop
-- Theorem name: AnalyticOnNhd.eq_const_of_re_eq_const.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Set Filter Metric Complex Topology

set_option maxHeartbeats 800000

theorem AnalyticOnNhd.eq_const_of_re_eq_const.extracted_1_1 {f : ℂ → ℂ} {U : Set ℂ} {c₀ : ℝ} (h₁f : AnalyticOnNhd ℂ f U) (h₂f : ∀ x ∈ U, (f x).re = c₀) (h₁U : IsOpen U) (h₂U : IsConnected U) (z₀ : ℂ) (h : z₀ ∈ U) (h₅ : ¬∃ c, ∀ x ∈ U, f x = c) : re '' (f '' U) = {c₀} := by
  aesop
