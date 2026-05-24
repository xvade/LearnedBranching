-- Benchmark: Mathlib/Data/Set/Operations.lean:229
-- Original call: aesop
-- Theorem name: Set.prod_image_left.extracted_1_1.{w,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Set.prod_image_left.extracted_1_1.{w, v, u} {α : Type u} {β : Type v} {γ : Type w} (f : α → γ) (s : Set α) (t : Set β) : (f '' s) ×ˢ t = (fun x => (f x.fst, x.snd)) '' s ×ˢ t := by
  aesop
