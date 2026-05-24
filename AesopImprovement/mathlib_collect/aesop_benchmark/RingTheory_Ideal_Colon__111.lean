-- Benchmark: Mathlib/RingTheory/Ideal/Colon.lean:111
-- Original call: aesop (add simp mem_colon)
-- Theorem name: Submodule.colon_iUnion.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Pointwise

set_option maxHeartbeats 800000

theorem Submodule.colon_iUnion.extracted_1_1.{u_3, u_2, u_1} {R : Type u_1} {M : Type u_2} [inst : Semiring R] [inst_1 : AddCommMonoid M] [inst_2 : Module R M] {N : Submodule R M} {ι : Sort u_3} (f : ι → Set M) : N.colon (⋃ i, f i) = ⨅ i, N.colon (f i) := by
  aesop (add simp mem_colon)
