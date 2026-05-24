-- Benchmark: Mathlib/Data/Part.lean:652
-- Original call: aesop
-- Theorem name: Part.inv_mem_inv.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem Part.inv_mem_inv.extracted_1_1.{u_1} {α : Type u_1} [inst : Inv α] (a : Part α) (ma : α) (ha : ma ∈ a) : ∃ a_1, a_1 ∈ a ∧ a_1⁻¹ = ma⁻¹ := by
  aesop
