-- Benchmark: Mathlib/NumberTheory/NumberField/InfinitePlace/Basic.lean:576
-- Original call: aesop
-- Theorem name: NumberField.InfinitePlace.eq_one_of_rpow_eq.extracted_1_2
import Mathlib
import Mathlib.Tactic

open Finset Topology Fintype Module Classical IntermediateField NumberField

set_option maxHeartbeats 800000

theorem NumberField.InfinitePlace.eq_one_of_rpow_eq.extracted_1_2 (n : ℕ) (hn : 1 < n) : ↑n ≠ 1 := by
  aesop
