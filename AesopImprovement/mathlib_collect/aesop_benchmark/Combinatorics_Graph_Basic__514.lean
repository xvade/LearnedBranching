-- Benchmark: Mathlib/Combinatorics/Graph/Basic.lean:514
-- Original call: aesop
-- Theorem name: Graph.banana_isNonloopAt.extracted_1_3.{u_2,
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem Graph.banana_isNonloopAt.extracted_1_3.{u_2, u_1} {α : Type u_1} {β : Type u_2} {x u v : α} {e : β} {edgeSet : Set β} : (e ∈ edgeSet ∧ (x = u ∨ x = v)) ∧ ¬(e ∈ edgeSet ∧ (x = u ∧ x = v ∨ x = v ∧ x = u)) ↔ e ∈ edgeSet ∧ (x = u ∨ x = v) ∧ u ≠ v := by
  aesop
