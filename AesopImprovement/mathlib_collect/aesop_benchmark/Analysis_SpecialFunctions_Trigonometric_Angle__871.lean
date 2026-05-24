-- Benchmark: Mathlib/Analysis/SpecialFunctions/Trigonometric/Angle.lean:871
-- Original call: aesop
-- Theorem name: Real.Angle.two_zsmul_eq_iff_eq.extracted_1_2
import Mathlib
import Mathlib.Tactic

open Real

set_option maxHeartbeats 800000

theorem Real.Angle.two_zsmul_eq_iff_eq.extracted_1_2 {a b : Angle} (ha : a.sign ≠ 0) (h : a.sign = b.sign) (h2 : a = b + ↑π) (this_1 : a.sign = -b.sign) (this : (fun x => x = b.sign) a.sign = (fun x => x = b.sign) (-b.sign)) : a = b := by
  aesop
