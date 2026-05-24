-- Benchmark: Mathlib/Data/Set/Prod.lean:957
-- Original call: aesop (add simp InjOn)
-- Theorem name: Set.fst_injOn_graph.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Function Set Function.Pullback Function.PullbackSelf

set_option maxHeartbeats 800000

theorem Set.fst_injOn_graph.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {s : Set α} {f : α → β} : InjOn Prod.fst (graphOn f s) := by
  aesop (add simp InjOn)
