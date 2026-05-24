-- Benchmark: Mathlib/Topology/Order/Basic.lean:103
-- Original call: aesop
-- Theorem name: OrderTopology.continuous_iff.extracted_1_2.{v,
import Mathlib
import Mathlib.Tactic

open Set Filter TopologicalSpace Topology Function OrderDual

set_option maxHeartbeats 800000

theorem OrderTopology.continuous_iff.extracted_1_2.{v, u} {α : Type u} {β : Type v} [ts : TopologicalSpace α] [inst : Preorder α] [inst_1 : OrderTopology α] [inst_2 : TopologicalSpace β] {f : β → α} : (∀ s ∈ {s | ∃ a, s = Ioi a ∨ s = Iio a}, IsOpen (f ⁻¹' s)) ↔ ∀ (a : α), IsOpen (f ⁻¹' Ioi a) ∧ IsOpen (f ⁻¹' Iio a) := by
  aesop
