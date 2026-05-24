-- Benchmark: Mathlib/RingTheory/PowerSeries/Restricted.lean:90
-- Original call: aesop
-- Theorem name: PowerSeries.IsRestricted.smul.extracted_1_2.{u_1}
import Mathlib
import Mathlib.Tactic

open PowerSeries Filter Topology

set_option maxHeartbeats 800000

theorem PowerSeries.IsRestricted.smul.extracted_1_2.{u_1} {R : Type u_1} [inst : NormedRing R] (c : ℝ) {f : R⟦X⟧} (r : R) (h : ¬r = 0) (hf : ∀ (ε : ℝ), 0 < ε → ∃ N, ∀ (n : ℕ), N ≤ n → ‖(coeff n) f‖ * |c| ^ n < ε) (ε : ℝ) (a : 0 < ε) (n : ℕ) (hn : ∀ (n_1 : ℕ), n ≤ n_1 → ‖(coeff n_1) f‖ * |c| ^ n_1 < ε / ‖r‖) (N : ℕ) (hN : n ≤ N) : ‖r‖ * (‖(coeff N) f‖ * |c| ^ N) < ‖r‖ * (ε / ‖r‖) := by
  aesop
