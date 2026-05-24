-- Benchmark: Mathlib/CategoryTheory/Limits/Shapes/Multiequalizer.lean:186
-- Original call: aesop
-- Theorem name: CategoryTheory.Limits.WalkingMultispan.instSmallOfLOfR.extracted_4.{w',
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem CategoryTheory.Limits.WalkingMultispan.instSmallOfLOfR.extracted_4.{w', w, t} {J : MultispanShape} [inst : Small.{t, w} J.L] [inst_1 : Small.{t, w'} J.R] (a : J.R) : ∃ a_1, Sum.elim left right a_1 = right a := by
  aesop
