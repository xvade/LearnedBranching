-- Benchmark: Mathlib/Algebra/Group/Submonoid/Support.lean:61
-- Original call: aesop
-- Theorem name: Subgroup.gc_toSubmonoid_mulSupport.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Pointwise

set_option maxHeartbeats 800000

theorem Subgroup.gc_toSubmonoid_mulSupport.extracted_1_1.{u_1} {G : Type u_1} [inst : Group G] (x : Subgroup G) (x_1 : Submonoid G) (x_2 : x.toSubmonoid ≤ x_1) (x_3 : G) : x_3 ∈ x → x_3 ∈ x_1.mulSupport := by
  aesop
