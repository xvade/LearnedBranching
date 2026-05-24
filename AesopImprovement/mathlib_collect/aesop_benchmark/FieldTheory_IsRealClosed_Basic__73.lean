-- Benchmark: Mathlib/FieldTheory/IsRealClosed/Basic.lean:73
-- Original call: aesop
-- Theorem name: IsSquare.of_not_isSquare_neg.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

open Polynomial

set_option maxHeartbeats 800000

theorem IsSquare.of_not_isSquare_neg.extracted_1_1.{u} {R : Type u} [inst : Field R] [inst_1 : IsRealClosed R] {x : R} (hx : ¬IsSquare (-x)) : IsSquare x := by
  aesop
