-- Benchmark: Mathlib/FieldTheory/IsRealClosed/Basic.lean:113
-- Original call: aesop
-- Theorem name: IsRealClosed.nonneg_iff_isSquare.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

open Polynomial

set_option maxHeartbeats 800000

theorem IsRealClosed.nonneg_iff_isSquare.extracted_1_1.{u} {R : Type u} [inst : Field R] [inst_1 : IsRealClosed R] [inst_2 : LinearOrder R] [inst_3 : IsStrictOrderedRing R] {x : R} (h : 0 ≤ x) (this : IsSquare (-x) → x = 0) : IsSquare x := by
  aesop
