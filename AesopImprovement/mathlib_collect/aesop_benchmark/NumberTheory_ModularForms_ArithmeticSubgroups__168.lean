-- Benchmark: Mathlib/NumberTheory/ModularForms/ArithmeticSubgroups.lean:168
-- Original call: aesop
-- Theorem name: Subgroup.adjoinNegOne.extracted_11.{u_2,
import Mathlib
import Mathlib.Tactic

open Matrix Matrix.SpecialLinearGroup MatrixGroups

set_option maxHeartbeats 800000

theorem Subgroup.adjoinNegOne.extracted_11.{u_2, u_1} {n : Type u_1} [inst : Fintype n] [inst_1 : DecidableEq n] {R : Type u_2} [inst_2 : Ring R] (𝒢 : Subgroup (GL n R)) {x : GL n R} (ha : -x ∈ 𝒢) (this : (-x)⁻¹ ∈ 𝒢) : x⁻¹ ∈ {g | g ∈ 𝒢 ∨ -g ∈ 𝒢} := by
  aesop
