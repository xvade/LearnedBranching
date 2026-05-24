-- Benchmark: Mathlib/Order/Interval/Set/Image.lean:42
-- Original call: aesop
-- Theorem name: AntitoneOn.mapsTo_Iic.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem AntitoneOn.mapsTo_Iic.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {f : α → β} [inst : Preorder α] [inst_1 : Preorder β] {b : α} (h : AntitoneOn f (Iic b)) (x : α) (x_1 : x ∈ Iic b) : f x ∈ Ici (f b) := by
  aesop
