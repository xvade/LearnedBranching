-- Benchmark: Mathlib/Data/Fintype/Pi.lean:101
-- Original call: aesop
-- Theorem name: Fintype.eval_image_piFinset.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Finset Function

set_option maxHeartbeats 800000

theorem Fintype.eval_image_piFinset.extracted_1_1.{u_4, u_1} {α : Type u_1} [inst : DecidableEq α] [inst_1 : Fintype α] {δ : α → Type u_4} (t : (a : α) → Finset (δ a)) (a : α) (x : δ a) (h : x ∈ t a) (f : (b : α) → a ≠ b → δ b) (hf : ∀ (b : α) (a : a ≠ b), f b a ∈ t b) : (fun b => if h : a = b then h ▸ x else f b h) ∈ piFinset t := by
  aesop
