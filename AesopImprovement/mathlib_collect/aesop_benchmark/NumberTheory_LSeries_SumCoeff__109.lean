-- Benchmark: Mathlib/NumberTheory/LSeries/SumCoeff.lean:109
-- Original call: aesop
-- Theorem name: LSeries_eq_mul_integral_aux.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Finset Filter MeasureTheory Topology Complex Asymptotics

set_option maxHeartbeats 800000

theorem LSeries_eq_mul_integral_aux.extracted_1_1 (n : ℕ) : 0 ∉ Icc (0 + 1) n := by
  aesop
