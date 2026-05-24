-- Benchmark: Mathlib/Algebra/Polynomial/Homogenize.lean:120
-- Original call: aesop
-- Theorem name: Polynomial.coeff_homogenize.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Finset

set_option maxHeartbeats 800000

theorem Polynomial.coeff_homogenize.extracted_1_1.{u_1} {R : Type u_1} [inst : CommSemiring R] (n : ℕ) (m : Fin 2 →₀ ℕ) (k : ℕ) (c : R) (hkn : k ≤ n) (this : (fun₀ | 0 => m 0 | 1 => m 1) = m) : (if (fun₀ | 0 => k | 1 => n - k) = m then c else 0) = if m 0 + m 1 = n then if k = m 0 then c else 0 else 0 := by
  aesop
