-- Benchmark: Mathlib/RingTheory/Ideal/Colon.lean:99
-- Original call: aesop (add simp mem_colon)
-- Theorem name: Submodule.colon_finsetInf.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Pointwise

set_option maxHeartbeats 800000

theorem Submodule.colon_finsetInf.extracted_1_1.{u_3, u_2, u_1} {R : Type u_1} {M : Type u_2} [inst : Semiring R] [inst_1 : AddCommMonoid M] [inst_2 : Module R M] {S : Set M} {ι : Type u_3} (s : Finset ι) (f : ι → Submodule R M) : (s.inf f).colon S = s.inf fun i => (f i).colon S := by
  aesop (add simp mem_colon)
