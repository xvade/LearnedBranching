-- Benchmark: Mathlib/Algebra/Ring/SumsOfSquares.lean:96
-- Original call: aesop
-- Theorem name: IsSquare.isSumSq.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem IsSquare.isSumSq.extracted_1_1.{u_1} {R : Type u_1} [inst : AddZeroClass R] [inst_1 : Mul R] {x : R} (hx : IsSquare x) : IsSumSq x := by
  aesop
