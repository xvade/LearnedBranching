-- Benchmark: Mathlib/Data/Set/Image.lean:206
-- Original call: aesop
-- Theorem name: Set.image_congr.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Function Set

set_option maxHeartbeats 800000

theorem Set.image_congr.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {f g : α → β} {s : Set α} (h : ∀ (a : α), a ∈ s → f a = g a) : f '' s = g '' s := by
  aesop
