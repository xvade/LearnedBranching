-- Benchmark: Mathlib/RingTheory/Ideal/Colon.lean:76
-- Original call: aesop (add simp mem_colon)
-- Theorem name: Submodule.iInf_colon_iUnion.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Pointwise

set_option maxHeartbeats 800000

theorem Submodule.iInf_colon_iUnion.extracted_1_1.{u_4, u_3, u_2, u_1} {R : Type u_1} {M : Type u_2} [inst : Semiring R] [inst_1 : AddCommMonoid M] [inst_2 : Module R M] (ι₁ : Sort u_3) (f : ι₁ → Submodule R M) (ι₂ : Sort u_4) (g : ι₂ → Set M) : (⨅ i, f i).colon (⋃ j, g j) = ⨅ i, ⨅ j, (f i).colon (g j) := by
  aesop (add simp mem_colon)
