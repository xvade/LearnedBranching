-- Benchmark: Mathlib/LinearAlgebra/Prod.lean:590
-- Original call: aesop
-- Theorem name: Submodule.snd_map_snd.extracted_1_1.{w,
import Mathlib
import Mathlib.Tactic

open Submodule LinearMap

set_option maxHeartbeats 800000

theorem Submodule.snd_map_snd.extracted_1_1.{w, v, u} (R : Type u) (M : Type v) (M₂ : Type w) [inst : Semiring R] [inst_1 : AddCommMonoid M] [inst_2 : AddCommMonoid M₂] [inst_3 : Module R M] [inst_4 : Module R M₂] : map (LinearMap.snd R M M₂) (snd R M M₂) = ⊤ := by
  aesop
