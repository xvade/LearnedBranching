-- Benchmark: Mathlib/Data/Option/Basic.lean:57
-- Original call: aesop
-- Theorem name: Option.mem_map_of_injective.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Option.mem_map_of_injective.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {f : α → β} (H : Function.Injective f) {a : α} {o : Option α} : f a ∈ Option.map f o ↔ a ∈ o := by
  aesop
