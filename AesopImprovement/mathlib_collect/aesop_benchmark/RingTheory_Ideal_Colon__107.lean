-- Benchmark: Mathlib/RingTheory/Ideal/Colon.lean:107
-- Original call: aesop (add simp mem_colon)
-- Theorem name: Submodule.colon_union.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Pointwise

set_option maxHeartbeats 800000

theorem Submodule.colon_union.extracted_1_1.{u_2, u_1} {R : Type u_1} {M : Type u_2} [inst : Semiring R] [inst_1 : AddCommMonoid M] [inst_2 : Module R M] {N : Submodule R M} {S₁ S₂ : Set M} : N.colon (S₁ ∪ S₂) = N.colon S₁ ⊓ N.colon S₂ := by
  aesop (add simp mem_colon)
