-- Benchmark: Mathlib/Data/Sym/Sym2.lean:406
-- Original call: aesop
-- Theorem name: Sym2.mem_map.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open List Finset Function Sym

set_option maxHeartbeats 800000

theorem Sym2.mem_map.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {f : α → β} {b : β} (x y : α) : b ∈ map f s(x, y) ↔ ∃ a ∈ s(x, y), f a = b := by
  aesop
