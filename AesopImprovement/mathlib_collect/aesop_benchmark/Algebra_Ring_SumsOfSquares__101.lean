-- Benchmark: Mathlib/Algebra/Ring/SumsOfSquares.lean:101
-- Original call: aesop
-- Theorem name: IsSumSq.one.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem IsSumSq.one.extracted_1_1.{u_1} {R : Type u_1} [inst : AddZeroClass R] [inst_1 : MulOneClass R] : IsSumSq 1 := by
  aesop
