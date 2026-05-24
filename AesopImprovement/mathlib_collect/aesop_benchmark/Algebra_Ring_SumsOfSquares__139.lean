-- Benchmark: Mathlib/Algebra/Ring/SumsOfSquares.lean:139
-- Original call: aesop
-- Theorem name: IsSumSq.sum_sq.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem IsSumSq.sum_sq.extracted_1_1.{u_2, u_1} {R : Type u_1} [inst : CommSemiring R] {ι : Type u_2} (I : Finset ι) (a : ι → R) : IsSumSq (∑ i ∈ I, a i ^ 2) := by
  aesop
