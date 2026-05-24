-- Benchmark: Mathlib/Data/NNReal/Defs.lean:929
-- Original call: aesop (add simp pos_iff_ne_zero)
-- Theorem name: Real.nnreal_trichotomy.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Function NNReal Real Set

set_option maxHeartbeats 800000

theorem Real.nnreal_trichotomy.extracted_1_1 (r : ℝ) (x : ℝ≥0) (hx : r = ↑x ∨ r = -↑x) : ¬r = 0 → ∃ x, 0 < x ∧ (r = ↑x ∨ r = -↑x) := by
  aesop (add simp pos_iff_ne_zero)
