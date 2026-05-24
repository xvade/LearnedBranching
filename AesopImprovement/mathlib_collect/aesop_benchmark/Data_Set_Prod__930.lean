-- Benchmark: Mathlib/Data/Set/Prod.lean:930
-- Original call: aesop (add simp graphOn)
-- Theorem name: Set.mem_graphOn.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Function Set Function.Pullback Function.PullbackSelf

set_option maxHeartbeats 800000

theorem Set.mem_graphOn.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {s : Set α} {f : α → β} {x : α × β} : x ∈ graphOn f s ↔ x.1 ∈ s ∧ f x.1 = x.2 := by
  aesop (add simp graphOn)
