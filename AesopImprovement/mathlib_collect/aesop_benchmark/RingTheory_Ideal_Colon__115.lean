-- Benchmark: Mathlib/RingTheory/Ideal/Colon.lean:115
-- Original call: aesop (add simp mem_colon)
-- Theorem name: Submodule.colon_empty.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Pointwise

set_option maxHeartbeats 800000

theorem Submodule.colon_empty.extracted_1_1.{u_2, u_1} {R : Type u_1} {M : Type u_2} [inst : Semiring R] [inst_1 : AddCommMonoid M] [inst_2 : Module R M] {N : Submodule R M} : N.colon ∅ = ⊤ := by
  aesop (add simp mem_colon)
