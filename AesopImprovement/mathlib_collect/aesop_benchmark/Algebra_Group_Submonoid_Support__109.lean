-- Benchmark: Mathlib/Algebra/Group/Submonoid/Support.lean:109
-- Original call: aesop
-- Theorem name: Submonoid.IsMulSpanning.mem_or_inv_mem.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Pointwise

set_option maxHeartbeats 800000

theorem Submonoid.IsMulSpanning.mem_or_inv_mem.extracted_1_1.{u_1} {G : Type u_1} [inst : Group G] {M : Submonoid G} (hM : M.IsMulSpanning) (a : G) : a ∈ M ∨ a⁻¹ ∈ M := by
  aesop
