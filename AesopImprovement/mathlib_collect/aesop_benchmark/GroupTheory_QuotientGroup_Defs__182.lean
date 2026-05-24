-- Benchmark: Mathlib/GroupTheory/QuotientGroup/Defs.lean:182
-- Original call: aesop
-- Theorem name: QuotientGroup.map_mk'_self.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Function Pointwise

set_option maxHeartbeats 800000

theorem QuotientGroup.map_mk'_self.extracted_1_1.{u_1} {G : Type u_1} [inst : Group G] (N : Subgroup G) [nN : N.Normal] : Subgroup.map (mk' N) N = ⊥ := by
  aesop
