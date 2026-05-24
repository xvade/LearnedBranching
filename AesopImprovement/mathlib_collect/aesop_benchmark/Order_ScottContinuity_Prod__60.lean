-- Benchmark: Mathlib/Order/ScottContinuity/Prod.lean:60
-- Original call: aesop
-- Theorem name: ScottContinuous.prod.extracted_1_1.{u_5,
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem ScottContinuous.prod.extracted_1_1.{u_5, u_4, u_2, u_1} {α : Type u_1} {β : Type u_2} {α' : Type u_4} {β' : Type u_5} [inst : Preorder α] [inst_1 : Preorder β] [inst_2 : Preorder α'] [inst_3 : Preorder β'] {f : α → α'} {g : β → β'} (hf : ScottContinuous f) (hg : ScottContinuous g) (a : α) (d : Set β) (hd₁ : d.Nonempty) (hd₂ : DirectedOn (fun x1 x2 => x1 ≤ x2) d) (c : β) (hdc : IsLUB d c) : (fun b => (f a, g b)) '' d = {f a} ×ˢ (g '' d) := by
  aesop
