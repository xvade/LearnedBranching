-- Benchmark: Mathlib/Analysis/SpecialFunctions/Trigonometric/Angle.lean:868
-- Original call: aesop
-- Theorem name: Real.Angle.two_zsmul_eq_iff_eq.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Real

set_option maxHeartbeats 800000

theorem Real.Angle.two_zsmul_eq_iff_eq.extracted_1_1 {a b : Angle} (ha : a.sign ≠ 0) (h : a.sign = b.sign) (h2 : a = b + ↑π) : a.sign = (b + ↑π).sign := by
  aesop
