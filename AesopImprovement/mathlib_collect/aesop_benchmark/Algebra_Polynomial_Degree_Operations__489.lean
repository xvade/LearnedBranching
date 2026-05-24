-- Benchmark: Mathlib/Algebra/Polynomial/Degree/Operations.lean:489
-- Original call: aesop
-- Theorem name: Polynomial.natDegree_eq_zero.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

open Finsupp Finset Polynomial

set_option maxHeartbeats 800000

theorem Polynomial.natDegree_eq_zero.extracted_1_1.{u} {R : Type u} [inst : Semiring R] {p : R[X]} : (∃ x, C x = p) → p.natDegree = 0 := by
  aesop
