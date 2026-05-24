-- Benchmark: Mathlib/FieldTheory/IsRealClosed/Basic.lean:76
-- Original call: aesop
-- Theorem name: IsRealClosed.isSquare_neg_of_not_isSquare.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

open Polynomial

set_option maxHeartbeats 800000

theorem IsRealClosed.isSquare_neg_of_not_isSquare.extracted_1_1.{u} {R : Type u} [inst : Field R] [inst_1 : IsRealClosed R] {x : R} (hx : ¬IsSquare x) : IsSquare (-x) := by
  aesop
