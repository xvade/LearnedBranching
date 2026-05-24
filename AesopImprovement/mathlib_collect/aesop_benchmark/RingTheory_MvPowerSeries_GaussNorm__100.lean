-- Benchmark: Mathlib/RingTheory/MvPowerSeries/GaussNorm.lean:100
-- Original call: aesop
-- Theorem name: MvPowerSeries.gaussNorm_add_le_max.extracted_1_2.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem MvPowerSeries.gaussNorm_add_le_max.extracted_1_2.{u_2, u_1} {R : Type u_1} {σ : Type u_2} [inst : Semiring R] (v : R → ℝ) (c : σ → ℝ) (f g : MvPowerSeries σ R) (hc : 0 ≤ c) (vNonneg : ∀ (a : R), v a ≥ 0) (hbfd : HasGaussNorm v c f) (hbgd : HasGaussNorm v c g) (H : ∀ (t : σ →₀ ℕ), 0 ≤ ∏ i ∈ t.support, c i ^ t i) (t : σ →₀ ℕ) (hv : v ((coeff t) f + (coeff t) g) ≤ max (v ((coeff t) f)) (v ((coeff t) g))) (h : max (v ((coeff t) f)) (v ((coeff t) g)) = v ((coeff t) f)) : v ((coeff t) g) ≤ v ((coeff t) f) := by
  aesop
