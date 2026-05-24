-- Benchmark: Mathlib/Analysis/SpecialFunctions/Elliptic/Weierstrass.lean:97
-- Original call: aesop
-- Theorem name: PeriodPair.mul_ω₁_add_mul_ω₂_mem_lattice.extracted_1_4
import Mathlib
import Mathlib.Tactic

open Module Filter Topology Nat

set_option maxHeartbeats 800000

theorem PeriodPair.mul_ω₁_add_mul_ω₂_mem_lattice.extracted_1_4 {L : PeriodPair} {α β : ℚ} (H : ↑α * L.ω₁ + ↑β * L.ω₂ ∈ L.lattice) (m n : ℤ) (e : ↑m * L.ω₁ + ↑n * L.ω₂ = ↑α * L.ω₁ + ↑β * L.ω₂) (this : ↑m = α ∧ ↑n = β) : α.den = 1 ∧ β.den = 1 := by
  aesop
