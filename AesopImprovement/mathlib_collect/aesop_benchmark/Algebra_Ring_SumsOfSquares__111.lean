-- Benchmark: Mathlib/Algebra/Ring/SumsOfSquares.lean:111
-- Original call: aesop
-- Theorem name: AddSubmonoid.closure_isSquare.extracted_1_4.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem AddSubmonoid.closure_isSquare.extracted_1_4.{u_1} {R : Type u_1} [inst : AddMonoid R] [inst_1 : Mul R] (a : R) {s : R} (hs : IsSumSq s) (hs_ih : s ∈ closure {x | IsSquare x}) : a * a + s ∈ closure {x | IsSquare x} := by
  aesop
