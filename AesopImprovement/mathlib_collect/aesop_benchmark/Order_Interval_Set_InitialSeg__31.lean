-- Benchmark: Mathlib/Order/Interval/Set/InitialSeg.lean:31
-- Original call: aesop
-- Theorem name: Set.initialSegIic.extracted_3.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Set.initialSegIic.extracted_3.{u_1} {α : Type u_1} [inst : Preorder α] (j : α) (x x_1 : ↑(Iic j)) (x_2 : (fun x => match x with | ⟨j_1, hj⟩ => j_1) x = (fun x => match x with | ⟨j_1, hj⟩ => j_1) x_1) : x = x_1 := by
  aesop
