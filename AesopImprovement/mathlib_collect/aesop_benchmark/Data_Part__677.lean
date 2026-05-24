-- Benchmark: Mathlib/Data/Part.lean:677
-- Original call: aesop
-- Theorem name: Part.mod_mem_mod.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem Part.mod_mem_mod.extracted_1_1.{u_1} {α : Type u_1} [inst : Mod α] (a b : Part α) (ma mb : α) (ha : ma ∈ a) (hb : mb ∈ b) : ∃ a_1, a_1 ∈ a ∧ ∃ a, a ∈ b ∧ a_1 % a = ma % mb := by
  aesop
