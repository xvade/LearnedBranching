-- Benchmark: Mathlib/Topology/Order/IntermediateValue.lean:342
-- Original call: aesop
-- Theorem name: IsClosed.mem_of_ge_of_forall_exists_lt.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

open Filter OrderDual TopologicalSpace Function Set Topology Interval

set_option maxHeartbeats 800000

theorem IsClosed.mem_of_ge_of_forall_exists_lt.extracted_1_1.{u} {α : Type u} [inst : TopologicalSpace α] [inst_1 : ConditionallyCompleteLinearOrder α] [inst_2 : OrderTopology α] {a b : α} {s : Set α} (hs : IsClosed (s ∩ Icc a b)) (hb : b ∈ s) (hab : a ≤ b) (hgt : ∀ x ∈ s ∩ Ioc a b, (s ∩ Ico a x).Nonempty) (this : toDual a ∈ ⇑ofDual ⁻¹' s) : a ∈ s := by
  aesop
