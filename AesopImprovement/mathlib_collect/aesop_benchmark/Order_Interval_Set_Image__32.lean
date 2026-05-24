-- Benchmark: Mathlib/Order/Interval/Set/Image.lean:32
-- Original call: aesop
-- Theorem name: MonotoneOn.mapsTo_Iic.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem MonotoneOn.mapsTo_Iic.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {f : α → β} [inst : Preorder α] [inst_1 : Preorder β] {b : α} (h : MonotoneOn f (Iic b)) (x : α) (x_1 : x ∈ Iic b) : f x ∈ Iic (f b) := by
  aesop
