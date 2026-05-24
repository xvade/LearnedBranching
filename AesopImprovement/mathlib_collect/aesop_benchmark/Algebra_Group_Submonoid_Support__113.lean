-- Benchmark: Mathlib/Algebra/Group/Submonoid/Support.lean:113
-- Original call: aesop
-- Theorem name: Submonoid.IsMulSpanning.of_le.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Pointwise

set_option maxHeartbeats 800000

theorem Submonoid.IsMulSpanning.of_le.extracted_1_1.{u_1} {G : Type u_1} [inst : Group G] {M N : Submonoid G} (hM : M.IsMulSpanning) (h : M ≤ N) : N.IsMulSpanning := by
  aesop
