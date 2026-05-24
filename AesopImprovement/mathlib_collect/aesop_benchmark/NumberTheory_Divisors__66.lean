-- Benchmark: Mathlib/NumberTheory/Divisors.lean:66
-- Original call: aesop
-- Theorem name: Nat.divisorsAntidiagonal.extracted_3
import Mathlib
import Mathlib.Tactic

open Finset

set_option maxHeartbeats 800000

theorem Nat.divisorsAntidiagonal.extracted_3 (n x₁ x₂ x y : ℕ) (hx₁ : (x, y) ∈ (fun x => let y := n / x; if x * y = n then some (x, y) else none) x₁) (hx₂ : (x, y) ∈ (fun x => let y := n / x; if x * y = n then some (x, y) else none) x₂) : x₁ = x₂ := by
  aesop
