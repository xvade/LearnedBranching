-- Benchmark: Mathlib/Topology/Algebra/Valued/ValuationTopology.lean:96
-- Original call: aesop
-- Theorem name: Valuation.subgroups_basis.extracted_1_3.{u,
import Mathlib
import Mathlib.Tactic

open Topology MonoidWithZeroHom Set Valuation

set_option maxHeartbeats 800000

theorem Valuation.subgroups_basis.extracted_1_3.{u, v} {R : Type u} [inst : Ring R] {Γ₀ : Type v} [inst_1 : LinearOrderedCommGroupWithZero Γ₀] (v : Valuation R Γ₀) (x : R) (γx : Γ₀ˣ) (Hx : v x = ↑γx) : ¬v x = 0 := by
  aesop
