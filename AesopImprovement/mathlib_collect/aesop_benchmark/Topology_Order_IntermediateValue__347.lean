-- Benchmark: Mathlib/Topology/Order/IntermediateValue.lean:347
-- Original call: aesop
-- Theorem name: IsClosed.mem_of_ge_of_forall_exists_lt.extracted_1_2.{u}
import Mathlib
import Mathlib.Tactic

open Filter OrderDual TopologicalSpace Function Set Topology Interval

set_option maxHeartbeats 800000

theorem IsClosed.mem_of_ge_of_forall_exists_lt.extracted_1_2.{u} {α : Type u} [inst : TopologicalSpace α] [inst_1 : ConditionallyCompleteLinearOrder α] [inst_2 : OrderTopology α] {a b : α} {s : Set α} (hs : IsClosed (s ∩ Icc a b)) (hb : b ∈ s) (hab : a ≤ b) (hgt : ∀ x ∈ s ∩ Ioc a b, (s ∩ Ico a x).Nonempty) (this : IsClosed (⇑ofDual ⁻¹' s ∩ Icc (toDual b) (toDual a))) (x : αᵒᵈ) (hx : ∃ x_1 ∈ s ∩ Ioc a b, ofDual.symm x_1 = x) : (⇑ofDual ⁻¹' s ∩ Ioc x (toDual a)).Nonempty := by
  aesop
