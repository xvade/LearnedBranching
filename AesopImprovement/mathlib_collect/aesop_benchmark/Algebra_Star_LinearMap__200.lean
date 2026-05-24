-- Benchmark: Mathlib/Algebra/Star/LinearMap.lean:200
-- Original call: aesop (add simp [Pi.single, Function.update])
-- Theorem name: LinearMap.intrinsicStar_single.extracted_1_1.{u_9,
import Mathlib
import Mathlib.Tactic

open WithConv Coalgebra TensorProduct

set_option maxHeartbeats 800000

theorem LinearMap.intrinsicStar_single.extracted_1_1.{u_9, u_8, u_5} {R : Type u_5} [inst : CommSemiring R] [inst_1 : StarRing R] {n : Type u_8} [inst_2 : DecidableEq n] {B : n → Type u_9} [inst_3 : (i : n) → AddCommMonoid (B i)] [inst_4 : (i : n) → Module R (B i)] [inst_5 : (i : n) → StarAddMonoid (B i)] [inst_6 : ∀ (i : n), StarModule R (B i)] (i : n) : star (toConv (single R B i)) = toConv (single R B i) := by
  aesop (add simp [Pi.single, Function.update])
