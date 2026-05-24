-- Benchmark: Mathlib/Combinatorics/SetFamily/Shadow.lean:127
-- Original call: aesop
-- Theorem name: Finset.mem_shadow_iterate_iff_exists_card.extracted_1_3.{u_1}
import Mathlib
import Mathlib.Tactic

open Finset Nat FinsetFamily

set_option maxHeartbeats 800000

theorem Finset.mem_shadow_iterate_iff_exists_card.extracted_1_3.{u_1} {α : Type u_1} [inst : DecidableEq α] {𝒜 : Finset (Finset α)} (k : ℕ) (ih : ∀ {t : Finset α}, t ∈ ∂^[k] 𝒜 ↔ ∃ u, #u = k ∧ Disjoint t u ∧ t ∪ u ∈ 𝒜) {t : Finset α} : (∃ a ∉ t, ∃ u, #u = k ∧ Disjoint (insert a t) u ∧ insert a t ∪ u ∈ 𝒜) ↔ ∃ u, (∃ a t, a ∉ t ∧ insert a t = u ∧ #t = k) ∧ Disjoint t u ∧ t ∪ u ∈ 𝒜 := by
  aesop
