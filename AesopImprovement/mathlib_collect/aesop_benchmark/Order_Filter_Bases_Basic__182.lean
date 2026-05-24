-- Benchmark: Mathlib/Order/Filter/Bases/Basic.lean:182
-- Original call: aesop (add simp [ker, FilterBasis.filter])
-- Theorem name: FilterBasis.ker_filter.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Set Filter

set_option maxHeartbeats 800000

theorem FilterBasis.ker_filter.extracted_1_1.{u_1} {α : Type u_1} (F : FilterBasis α) : F.filter.ker = ⋂₀ F.sets := by
  aesop (add simp [ker, FilterBasis.filter])
