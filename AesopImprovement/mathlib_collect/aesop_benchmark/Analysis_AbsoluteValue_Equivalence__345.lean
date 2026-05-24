-- Benchmark: Mathlib/Analysis/AbsoluteValue/Equivalence.lean:345
-- Original call: aesop (add simp [h.isNontrivial_congr])
-- Theorem name: AbsoluteValue.isEquiv_iff_exists_rpow_eq.extracted_1_7.{u_1}
import Mathlib
import Mathlib.Tactic

open Filter Topology Fintype Subtype Real

set_option maxHeartbeats 800000

theorem AbsoluteValue.isEquiv_iff_exists_rpow_eq.extracted_1_7.{u_1} {F : Type u_1} [inst : Field F] {v w : AbsoluteValue F ℝ} (h : v.IsEquiv w) (hw : ¬w.IsNontrivial) (x : F) (h₀ : x ≠ 0) : v x ^ 1 = w x := by
  aesop (add simp [h.isNontrivial_congr])
