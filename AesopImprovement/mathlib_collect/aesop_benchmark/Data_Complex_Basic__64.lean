-- Benchmark: Mathlib/Data/Complex/Basic.lean:64
-- Original call: aesop
-- Theorem name: Complex.forall.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Set Function ComplexConjugate

set_option maxHeartbeats 800000

theorem Complex.forall.extracted_1_1 {p : ℂ → Prop} : (∀ (x : ℂ), p x) ↔ ∀ (a b : ℝ), p { re := a, im := b } := by
  aesop
