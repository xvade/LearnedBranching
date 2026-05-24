-- Benchmark: Mathlib/Data/Set/Image.lean:618
-- Original call: aesop
-- Theorem name: Set.range_comp.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Function Set

set_option maxHeartbeats 800000

theorem Set.range_comp.extracted_1_1.{u_4, u_2, u_1} {α : Type u_1} {β : Type u_2} {ι : Sort u_4} (g : α → β) (f : ι → α) : range (g ∘ f) = g '' range f := by
  aesop
