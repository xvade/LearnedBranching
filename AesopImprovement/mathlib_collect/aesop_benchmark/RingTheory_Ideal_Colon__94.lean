-- Benchmark: Mathlib/RingTheory/Ideal/Colon.lean:94
-- Original call: aesop (add simp mem_colon)
-- Theorem name: Submodule.iInf_colon.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Pointwise

set_option maxHeartbeats 800000

theorem Submodule.iInf_colon.extracted_1_1.{u_3, u_2, u_1} {R : Type u_1} {M : Type u_2} [inst : Semiring R] [inst_1 : AddCommMonoid M] [inst_2 : Module R M] {S : Set M} {ι : Sort u_3} (f : ι → Submodule R M) : (⨅ i, f i).colon S = ⨅ i, (f i).colon S := by
  aesop (add simp mem_colon)
