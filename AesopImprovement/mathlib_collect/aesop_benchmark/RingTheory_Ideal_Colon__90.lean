-- Benchmark: Mathlib/RingTheory/Ideal/Colon.lean:90
-- Original call: aesop (add simp mem_colon)
-- Theorem name: Submodule.inf_colon.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Pointwise

set_option maxHeartbeats 800000

theorem Submodule.inf_colon.extracted_1_1.{u_2, u_1} {R : Type u_1} {M : Type u_2} [inst : Semiring R] [inst_1 : AddCommMonoid M] [inst_2 : Module R M] {N₁ N₂ : Submodule R M} {S : Set M} : (N₁ ⊓ N₂).colon S = N₁.colon S ⊓ N₂.colon S := by
  aesop (add simp mem_colon)
