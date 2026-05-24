-- Benchmark: Mathlib/Topology/Instances/Real/Lemmas.lean:119
-- Original call: aesop
-- Theorem name: closure_of_rat_image_lt.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Filter Int Metric Set TopologicalSpace Bornology Topology Uniformity Interval

set_option maxHeartbeats 800000

theorem closure_of_rat_image_lt.extracted_1_1 {q : ℚ} : Rat.cast '' {x | q < x} = Ioi ↑q ∩ range Rat.cast := by
  aesop
