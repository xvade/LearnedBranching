-- Benchmark: Mathlib/Order/Bounds/Basic.lean:699
-- Original call: aesop (add simp [upperBounds, Prod.le_def, forall_and])
-- Theorem name: upperBounds_prod.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Function Set OrderDual

set_option maxHeartbeats 800000

theorem upperBounds_prod.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} [inst : Preorder α] [inst_1 : Preorder β] {s : Set α} {t : Set β} (hs : Nonempty ↑s) (ht : Nonempty ↑t) (x : α × β) : x ∈ upperBounds (s ×ˢ t) ↔ x ∈ upperBounds s ×ˢ upperBounds t := by
  aesop (add simp [upperBounds, Prod.le_def, forall_and])
