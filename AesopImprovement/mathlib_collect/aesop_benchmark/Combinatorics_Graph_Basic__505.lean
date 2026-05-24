-- Benchmark: Mathlib/Combinatorics/Graph/Basic.lean:505
-- Original call: aesop
-- Theorem name: Graph.banana_inc.extracted_1_4.{u_2,
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem Graph.banana_inc.extracted_1_4.{u_2, u_1} {α : Type u_1} {β : Type u_2} {x u v : α} {e : β} {edgeSet : Set β} : e ∈ edgeSet → ((∃ x_1, x = u ∧ x_1 = v ∨ x = v ∧ x_1 = u) ↔ x = u ∨ x = v) := by
  aesop
