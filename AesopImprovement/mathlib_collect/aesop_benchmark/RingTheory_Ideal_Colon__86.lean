-- Benchmark: Mathlib/RingTheory/Ideal/Colon.lean:86
-- Original call: aesop (add simp [mem_colon, Ideal.eq_top_iff_one])
-- Theorem name: Submodule.colon_eq_top_iff_subset.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Pointwise

set_option maxHeartbeats 800000

theorem Submodule.colon_eq_top_iff_subset.extracted_1_1.{u_2, u_1} {R : Type u_1} {M : Type u_2} [inst : Semiring R] [inst_1 : AddCommMonoid M] [inst_2 : Module R M] {N : Submodule R M} (S : Set M) : N.colon S = ⊤ ↔ S ⊆ ↑N := by
  aesop (add simp [mem_colon, Ideal.eq_top_iff_one])
