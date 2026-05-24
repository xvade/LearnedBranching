-- Benchmark: Mathlib/Order/OmegaCompletePartialOrder.lean:155
-- Original call: aesop
-- Theorem name: OmegaCompletePartialOrder.Chain.pair.extracted_3.{u_2}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem OmegaCompletePartialOrder.Chain.pair.extracted_3.{u_2} {α : Type u_2} [inst : Preorder α] (a b : α) (hab : a ≤ b) (x x_1 : ℕ) (x_2 : x ≤ x_1) : (fun x => match x with | 0 => a | x => b) x ≤ (fun x => match x with | 0 => a | x => b) x_1 := by
  aesop
