-- Benchmark: Mathlib/GroupTheory/Perm/MaximalSubgroups.lean:185
-- Original call: aesop
-- Theorem name: Equiv.Perm.has_swap_mem_of_lt_stabilizer.extracted_1_4.{u_2}
import Mathlib
import Mathlib.Tactic

open Pointwise Set Equiv MulAction

set_option maxHeartbeats 800000

theorem Equiv.Perm.has_swap_mem_of_lt_stabilizer.extracted_1_4.{u_2} {α : Type u_2} [inst : DecidableEq α] (s : Set α) (G : Subgroup (Perm α)) (hG : stabilizer (Perm α) s < G) (this : ∀ (t : Set α), 1 < t.encard → ∃ g, g.IsSwap ∧ g ∈ stabilizer (Perm α) t) (h1' : s.encard ≤ 1) (h1c' : sᶜ.encard ≤ 1) : sᶜ ≠ ∅ := by
  aesop
