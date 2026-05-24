-- Benchmark: Mathlib/Combinatorics/SetFamily/Shadow.lean:220
-- Original call: aesop
-- Theorem name: Finset.mem_upShadow_iff_erase_mem.extracted_1_4.{u_1}
import Mathlib
import Mathlib.Tactic

open Finset Nat FinsetFamily

set_option maxHeartbeats 800000

theorem Finset.mem_upShadow_iff_erase_mem.extracted_1_4.{u_1} {α : Type u_1} [inst : DecidableEq α] [inst_1 : Fintype α] {𝒜 : Finset (Finset α)} {t : Finset α} : (∃ s ∈ 𝒜, ∃ a ∈ t, t.erase a = s) ↔ ∃ a ∈ t, t.erase a ∈ 𝒜 := by
  aesop
