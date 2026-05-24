-- Benchmark: Mathlib/RingTheory/Valuation/Basic.lean:670
-- Original call: aesop
-- Theorem name: Valuation.IsNontrivial_iff_exists_one_lt.extracted_1_3.{u_8,
import Mathlib
import Mathlib.Tactic

open Function Ideal MonoidWithZeroHom

set_option maxHeartbeats 800000

theorem Valuation.IsNontrivial_iff_exists_one_lt.extracted_1_3.{u_8, u_7} {K : Type u_7} [inst : DivisionRing K] {Γ₀ : Type u_8} [inst_1 : LinearOrderedCommGroupWithZero Γ₀] {v : Valuation K Γ₀} (x_1 : ∃ x, 1 < v x) (x : K) (hx1 : 1 < v x) : v x ≠ 0 ∧ v x ≠ 1 := by
  aesop
