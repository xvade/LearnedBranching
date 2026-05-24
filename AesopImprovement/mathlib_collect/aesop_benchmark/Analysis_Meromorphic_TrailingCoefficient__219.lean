-- Benchmark: Mathlib/Analysis/Meromorphic/TrailingCoefficient.lean:219
-- Original call: aesop
-- Theorem name: MeromorphicAt.meromorphicTrailingCoeffAt_add_eq_left_of_lt.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Filter Topology

set_option maxHeartbeats 800000

theorem MeromorphicAt.meromorphicTrailingCoeffAt_add_eq_left_of_lt.extracted_1_1.{u_2, u_1} {𝕜 : Type u_1} [inst : NontriviallyNormedField 𝕜] {E : Type u_2} [inst_1 : NormedAddCommGroup E] [inst_2 : NormedSpace 𝕜 E] {x : 𝕜} {f₁ f₂ : 𝕜 → E} (hf₂ : MeromorphicAt f₂ x) (hf₁ : MeromorphicAt f₁ x) (n₂ : ℤ) (hn₂ : ↑n₂ = meromorphicOrderAt f₂ x) (h : meromorphicOrderAt f₁ x < ↑n₂) (g₂ : 𝕜 → E) (h₁g₂ : AnalyticAt 𝕜 g₂ x) (h₂g₂ : g₂ x ≠ 0) (h₃g₂ : ∀ᶠ (z : 𝕜) in 𝓝[≠] x, f₂ z = (z - x) ^ n₂ • g₂ z) : meromorphicOrderAt f₁ x ≠ ⊤ := by
  aesop
