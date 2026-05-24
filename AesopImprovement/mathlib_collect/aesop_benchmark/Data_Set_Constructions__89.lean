-- Benchmark: Mathlib/Data/Set/Constructions.lean:89
-- Original call: aesop
-- Theorem name: FiniteInter.mk₂.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem FiniteInter.mk₂.extracted_1_1.{u_1} {α : Type u_1} {S : Set (Set α)} (h : ∀ ⦃s : Set α⦄, s ∈ S → ∀ ⦃t : Set α⦄, t ∈ S → s ∩ t ∈ S) (s : Set α) (hs : s ∈ insert univ S) (t : Set α) (ht : t ∈ insert univ S) : s ∩ t ∈ insert univ S := by
  aesop
