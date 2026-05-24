-- Benchmark: Mathlib/Analysis/InnerProductSpace/Harmonic/Constructions.lean:88
-- Original call: aesop
-- Theorem name: analyticAt_harmonicAt_log_normSq.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Complex ComplexConjugate InnerProductSpace Topology

set_option maxHeartbeats 800000

theorem analyticAt_harmonicAt_log_normSq.extracted_1_1 {z : ℂ} {g : ℂ → ℂ} (h₁g : AnalyticAt ℂ g z) (h₂g : g z ≠ 0) (h₃g : g z ∈ slitPlane) (t₀ : g ⁻¹' (slitPlane ∩ {y | y ≠ 0}) ∈ 𝓝 z) : Real.log ∘ ⇑normSq ∘ g =ᶠ[𝓝 z] ⇑reCLM ∘ ⇑ofRealCLM ∘ Real.log ∘ ⇑normSq ∘ g := by
  aesop
