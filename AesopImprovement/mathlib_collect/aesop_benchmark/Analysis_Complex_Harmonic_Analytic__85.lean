-- Benchmark: Mathlib/Analysis/Complex/Harmonic/Analytic.lean:85
-- Original call: aesop
-- Theorem name: InnerProductSpace.HarmonicOnNhd.exists_analyticOnNhd_ball_re_eq.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Complex InnerProductSpace Metric Set Topology

set_option maxHeartbeats 800000

theorem InnerProductSpace.HarmonicOnNhd.exists_analyticOnNhd_ball_re_eq.extracted_1_1 {f : ℂ → ℝ} {z : ℂ} {R : ℝ} (hf : HarmonicOnNhd f (ball z R)) (hR : ¬R ≤ 0) : let g := (⇑ofRealCLM ∘ fun x => (fderiv ℝ f x) 1) - I • ⇑ofRealCLM ∘ fun x => (fderiv ℝ f x) I; DifferentiableOn ℂ g (ball z R) → ∀ (F : ℂ → ℂ), (F z = ↑(f z) ∧ ∀ x ∈ ball z R, HasDerivAt F (g x) x) → DifferentiableOn ℂ F (ball z R) → DifferentiableOn ℝ F (ball z R) → (fun z => (F z).re) = ⇑reCLM ∘ F := by
  aesop
