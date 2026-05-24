-- Benchmark: Mathlib/RingTheory/RootsOfUnity/PrimitiveRoots.lean:403
-- Original call: aesop
-- Theorem name: IsPrimitiveRoot.neZero'.extracted_1_1.{u_4}
import Mathlib
import Mathlib.Tactic

open Polynomial Finset Classical Function

set_option maxHeartbeats 800000

theorem IsPrimitiveRoot.neZero'.extracted_1_1.{u_4} {R : Type u_4} {ζ : R} [inst : CommRing R] [inst_1 : IsDomain R] : let p := ringChar R; ∀ (n : ℕ) [inst_2 : NeZero (p * n)], IsPrimitiveRoot ζ (p * n) → p ≠ 0 ∧ n ≠ 0 := by
  aesop
