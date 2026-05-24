-- Benchmark: Mathlib/Data/Set/Operations.lean:233
-- Original call: aesop
-- Theorem name: Set.prod_image_right.extracted_1_1.{w,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Set.prod_image_right.extracted_1_1.{w, v, u} {α : Type u} {β : Type v} {γ : Type w} (f : α → γ) (s : Set α) (t : Set β) : t ×ˢ (f '' s) = (fun x => (x.fst, f x.snd)) '' t ×ˢ s := by
  aesop
