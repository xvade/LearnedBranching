-- Benchmark: Mathlib/LinearAlgebra/Prod.lean:581
-- Original call: aesop
-- Theorem name: Submodule.sndEquiv.extracted_3.{w,
import Mathlib
import Mathlib.Tactic

open Submodule LinearMap

set_option maxHeartbeats 800000

theorem Submodule.sndEquiv.extracted_3.{w, v, u} (R : Type u) (M : Type v) (M₂ : Type w) [inst : Semiring R] [inst_1 : AddCommMonoid M] [inst_2 : AddCommMonoid M₂] [inst_3 : Module R M] [inst_4 : Module R M₂] (n : M₂) : (0, n) ∈ snd R M M₂ := by
  aesop
