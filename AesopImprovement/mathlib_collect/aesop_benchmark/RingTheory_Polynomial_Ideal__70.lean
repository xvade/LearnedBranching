-- Benchmark: Mathlib/RingTheory/Polynomial/Ideal.lean:70
-- Original call: aesop
-- Theorem name: Algebra.mem_ideal_map_adjoin.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Polynomial Finset

set_option maxHeartbeats 800000

theorem Algebra.mem_ideal_map_adjoin.extracted_1_1.{u_2, u_1} {R : Type u_1} {S : Type u_2} [inst : CommSemiring R] (I : Ideal R) (a : R) (ha : a ∈ ↑I) (i : ℕ) : (if i = 0 then a else 0) ∈ I := by
  aesop
