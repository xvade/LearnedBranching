-- Benchmark: Mathlib/Order/Filter/Extr.lean:677
-- Original call: aesop
-- Theorem name: isMaxOn_univ_of_mono_anti.extracted_1_4.{u_1,
import Mathlib
import Mathlib.Tactic

open Set Filter Relator OrderDual

set_option maxHeartbeats 800000

theorem isMaxOn_univ_of_mono_anti.extracted_1_4.{u_1, u} {α : Type u} {β : Type u_1} [inst : LinearOrder α] [inst_1 : Preorder β] {b : α} {f : α → β} (h₀ : MonotoneOn f (Iic b)) (h₁ : AntitoneOn f (Ici b)) (x : α) (x_1 : x ∈ univ) (h : b ≤ x) : x ∈ {x | (fun x => f x ≤ f b) x} := by
  aesop
