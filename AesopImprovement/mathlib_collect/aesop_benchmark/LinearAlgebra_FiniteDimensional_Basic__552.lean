-- Benchmark: Mathlib/LinearAlgebra/FiniteDimensional/Basic.lean:552
-- Original call: aesop
-- Theorem name: Submodule.isAtom_iff_finrank_eq_one.extracted_1_1.{v,
import Mathlib
import Mathlib.Tactic

open Cardinal Function IsNoetherian Module Submodule Finset FiniteDimensional

set_option maxHeartbeats 800000

theorem Submodule.isAtom_iff_finrank_eq_one.extracted_1_1.{v, u} {K : Type u} {V : Type v} [inst : DivisionRing K] [inst_1 : AddCommGroup V] [inst_2 : Module K V] {S : Submodule K V} (hS : finrank K ↥S = 1) : S ≠ ⊥ := by
  aesop
