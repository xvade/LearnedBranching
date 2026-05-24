-- Benchmark: Mathlib/Algebra/Ring/SumsOfSquares.lean:135
-- Original call: aesop
-- Theorem name: IsSumSq.sum_mul_self.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem IsSumSq.sum_mul_self.extracted_1_1.{u_2, u_1} {R : Type u_1} [inst : AddCommMonoid R] [inst_1 : Mul R] {ι : Type u_2} (I : Finset ι) (a : ι → R) : IsSumSq (∑ i ∈ I, a i * a i) := by
  aesop
