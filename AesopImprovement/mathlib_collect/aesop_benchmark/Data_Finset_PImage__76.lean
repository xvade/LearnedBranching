-- Benchmark: Mathlib/Data/Finset/PImage.lean:76
-- Original call: aesop
-- Theorem name: Finset.pimage_congr.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Finset.pimage_congr.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} [inst : DecidableEq β] {f g : α →. β} [inst_1 : (x : α) → Decidable (f x).Dom] [inst_2 : (x : α) → Decidable (g x).Dom] {s t : Finset α} (h₁ : s = t) (h₂ : ∀ x ∈ t, f x = g x) : pimage f s = pimage g t := by
  aesop
