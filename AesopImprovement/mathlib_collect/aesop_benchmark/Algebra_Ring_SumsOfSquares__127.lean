-- Benchmark: Mathlib/Algebra/Ring/SumsOfSquares.lean:127
-- Original call: aesop
-- Theorem name: IsSumSq.sum_isSquare.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem IsSumSq.sum_isSquare.extracted_1_1.{u_2, u_1} {R : Type u_1} [inst : AddCommMonoid R] [inst_1 : Mul R] {ι : Type u_2} (I : Finset ι) {x : ι → R} (hx : ∀ i ∈ I, IsSquare (x i)) : IsSumSq (∑ i ∈ I, x i) := by
  aesop
