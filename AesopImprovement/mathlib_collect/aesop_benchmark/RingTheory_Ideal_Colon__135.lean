-- Benchmark: Mathlib/RingTheory/Ideal/Colon.lean:135
-- Original call: aesop (add simp SetLike.coe_subset_coe)
-- Theorem name: Submodule.mem_colon_iff_le.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Pointwise

set_option maxHeartbeats 800000

theorem Submodule.mem_colon_iff_le.extracted_1_1.{u_2, u_1} {R : Type u_1} {M : Type u_2} [inst : CommSemiring R] [inst_1 : AddCommMonoid M] [inst_2 : Module R M] {N N' : Submodule R M} {r : R} : r ∈ N.colon ↑N' ↔ r • N' ≤ N := by
  aesop (add simp SetLike.coe_subset_coe)
