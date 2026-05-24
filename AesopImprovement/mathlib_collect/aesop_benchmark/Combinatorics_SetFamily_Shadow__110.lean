-- Benchmark: Mathlib/Combinatorics/SetFamily/Shadow.lean:110
-- Original call: aesop
-- Theorem name: Finset.mem_shadow_iff_insert_mem.extracted_1_4.{u_1}
import Mathlib
import Mathlib.Tactic

open Finset Nat FinsetFamily

set_option maxHeartbeats 800000

theorem Finset.mem_shadow_iff_insert_mem.extracted_1_4.{u_1} {α : Type u_1} [inst : DecidableEq α] {𝒜 : Finset (Finset α)} {t : Finset α} : (∃ s ∈ 𝒜, ∃ a ∉ t, insert a t = s) ↔ ∃ a ∉ t, insert a t ∈ 𝒜 := by
  aesop
