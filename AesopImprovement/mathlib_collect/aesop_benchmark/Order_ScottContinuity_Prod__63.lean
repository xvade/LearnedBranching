-- Benchmark: Mathlib/Order/ScottContinuity/Prod.lean:63
-- Original call: aesop
-- Theorem name: ScottContinuous.prod.extracted_1_2.{u_5,
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem ScottContinuous.prod.extracted_1_2.{u_5, u_4, u_2, u_1} {α : Type u_1} {β : Type u_2} {α' : Type u_4} {β' : Type u_5} [inst : Preorder α] [inst_1 : Preorder β] [inst_2 : Preorder α'] [inst_3 : Preorder β'] {f : α → α'} {g : β → β'} (hf : ScottContinuous f) (hg : ScottContinuous g) (b : β) (d : Set α) (hd₁ : d.Nonempty) (hd₂ : DirectedOn (fun x1 x2 => x1 ≤ x2) d) (c : α) (hdc : IsLUB d c) : (fun a => (f a, g b)) '' d = (f '' d) ×ˢ {g b} := by
  aesop
