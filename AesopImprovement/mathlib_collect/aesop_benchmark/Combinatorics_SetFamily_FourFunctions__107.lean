-- Benchmark: Mathlib/Combinatorics/SetFamily/FourFunctions.lean:107
-- Original call: aesop
-- Theorem name: filter_collapse_eq.extracted_1_10.{u_1}
import Mathlib
import Mathlib.Tactic

open Finset Fintype Function FinsetFamily

set_option maxHeartbeats 800000

theorem filter_collapse_eq.extracted_1_10.{u_1} {α : Type u_1} [inst : DecidableEq α] {a : α} {s : Finset α} (ha : a ∉ s) (𝒜 : Finset (Finset α)) (t : Finset α) (h : s ∉ 𝒜) (h_1 : insert a s ∉ 𝒜) : t ∈ 𝒜 → ¬t = s ∧ ¬t = insert a s := by
  aesop
