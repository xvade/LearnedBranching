-- Benchmark: Mathlib/Algebra/Ring/SumsOfSquares.lean:168
-- Original call: aesop
-- Theorem name: IsSumSq.natCast.extracted_1_4.{u_2}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem IsSumSq.natCast.extracted_1_4.{u_2} {R : Type u_2} [inst : NonAssocSemiring R] (n : ℕ) (a : IsSumSq ↑n) : IsSumSq ↑(n + 1) := by
  aesop
