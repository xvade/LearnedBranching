-- Benchmark: Mathlib/Data/Finset/Sups.lean:642
-- Original call: aesop
-- Theorem name: Finset.infs_compls_eq_diffs.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

open Function SetFamily FinsetFamily

set_option maxHeartbeats 800000

theorem Finset.infs_compls_eq_diffs.extracted_1_1.{u_2} {α : Type u_2} [inst : BooleanAlgebra α] [inst_1 : DecidableEq α] (s t : Finset α) (a : α) : (∃ a_1 ∈ s, ∃ b, bᶜ ∈ t ∧ a_1 ⊓ b = a) ↔ ∃ a_1 ∈ s, ∃ b ∈ t, a_1 ⊓ bᶜ = a := by
  aesop
