-- Benchmark: Mathlib/Order/Interval/Set/Image.lean:29
-- Original call: aesop
-- Theorem name: MonotoneOn.mapsTo_Ici.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem MonotoneOn.mapsTo_Ici.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {f : α → β} [inst : Preorder α] [inst_1 : Preorder β] {a : α} (h : MonotoneOn f (Ici a)) (x : α) (x_1 : x ∈ Ici a) : f x ∈ Ici (f a) := by
  aesop
