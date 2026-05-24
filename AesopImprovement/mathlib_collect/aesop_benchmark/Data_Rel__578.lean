-- Benchmark: Mathlib/Data/Rel.lean:578
-- Original call: aesop
-- Theorem name: Equiv.graph_inv.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Set SetRel

set_option maxHeartbeats 800000

theorem Equiv.graph_inv.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} (f : α ≃ β) : Function.graph ⇑f.symm = (Function.graph ⇑f).inv := by
  aesop
