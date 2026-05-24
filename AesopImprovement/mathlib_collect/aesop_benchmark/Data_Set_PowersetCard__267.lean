-- Benchmark: Mathlib/Data/Set/PowersetCard.lean:267
-- Original call: aesop
-- Theorem name: Set.powersetCard.nontrivial.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Finset Set Function

set_option maxHeartbeats 800000

theorem Set.powersetCard.nontrivial.extracted_1_1.{u_1} {α : Type u_1} {n : ℕ} (h1 : 0 < n) (val : Fintype α) (h2 : n < Nat.card α) (h : n = 0 ∨ Nat.card α = n) : False := by
  aesop
