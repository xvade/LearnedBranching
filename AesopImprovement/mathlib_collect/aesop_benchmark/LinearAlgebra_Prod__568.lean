-- Benchmark: Mathlib/LinearAlgebra/Prod.lean:568
-- Original call: aesop
-- Theorem name: Submodule.fst_map_fst.extracted_1_1.{w,
import Mathlib
import Mathlib.Tactic

open Submodule LinearMap

set_option maxHeartbeats 800000

theorem Submodule.fst_map_fst.extracted_1_1.{w, v, u} (R : Type u) (M : Type v) (M₂ : Type w) [inst : Semiring R] [inst_1 : AddCommMonoid M] [inst_2 : AddCommMonoid M₂] [inst_3 : Module R M] [inst_4 : Module R M₂] : map (LinearMap.fst R M M₂) (fst R M M₂) = ⊤ := by
  aesop
