-- Benchmark: Mathlib/Order/Interval/Set/Image.lean:39
-- Original call: aesop
-- Theorem name: AntitoneOn.mapsTo_Ici.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem AntitoneOn.mapsTo_Ici.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {f : α → β} [inst : Preorder α] [inst_1 : Preorder β] {a : α} (h : AntitoneOn f (Ici a)) (x : α) (x_1 : x ∈ Ici a) : f x ∈ Iic (f a) := by
  aesop
