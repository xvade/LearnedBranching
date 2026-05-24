-- Benchmark: Mathlib/Order/Filter/Cocardinal.lean:48
-- Original call: aesop
-- Theorem name: Filter.cocardinal_aleph0_eq_cofinite.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

open Set Filter Cardinal

set_option maxHeartbeats 800000

theorem Filter.cocardinal_aleph0_eq_cofinite.extracted_1_1.{u} {α : Type u} : cocardinal α isRegular_aleph0 = cofinite := by
  aesop
