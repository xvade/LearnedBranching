-- Benchmark: Mathlib/Data/Sym/Sym2.lean:266
-- Original call: aesop
-- Theorem name: Sym2.map_map.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open List Finset Function Sym

set_option maxHeartbeats 800000

theorem Sym2.map_map.extracted_1_1.{u_3, u_2, u_1} {α : Type u_1} {β : Type u_2} {γ : Type u_3} {g : β → γ} {f : α → β} (x y : α) : map g (map f s(x, y)) = map (g ∘ f) s(x, y) := by
  aesop
