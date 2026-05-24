-- Benchmark: Mathlib/Algebra/Module/Submodule/Finsupp.lean:92
-- Original call: aesop
-- Theorem name: Submodule.pointwiseSetMulAction.extracted_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Pointwise

set_option maxHeartbeats 800000

theorem Submodule.pointwiseSetMulAction.extracted_1.{u_3, u_2} {R : Type u_2} {M : Type u_3} [inst : Semiring R] [inst_1 : AddCommMonoid M] [inst_2 : Module R M] [inst_3 : SMulCommClass R R M] (s t : Set R) (x : Submodule R M) ⦃n : M⦄ (w : R) (left : w ∈ s) (w_1 : R) (left_1 : w_1 ∈ t) (a : n ∈ x) : w • w_1 • n ∈ s • t • x := by
  aesop
