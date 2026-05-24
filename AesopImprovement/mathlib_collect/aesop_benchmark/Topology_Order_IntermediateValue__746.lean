-- Benchmark: Mathlib/Topology/Order/IntermediateValue.lean:746
-- Original call: aesop
-- Theorem name: ContinuousOn.strictMonoOn_of_injOn_Icc.extracted_1_1.{u_1,
import Mathlib
import Mathlib.Tactic

open Filter OrderDual TopologicalSpace Function Set Topology Interval

set_option maxHeartbeats 800000

theorem ContinuousOn.strictMonoOn_of_injOn_Icc.extracted_1_1.{u_1, u} {α : Type u} [inst : TopologicalSpace α] [inst_1 : ConditionallyCompleteLinearOrder α] [inst_2 : OrderTopology α] [inst_3 : DenselyOrdered α] {δ : Type u_1} [inst_4 : LinearOrder δ] [inst_5 : TopologicalSpace δ] [inst_6 : OrderClosedTopology δ] {a b : α} {f : α → δ} (hab : a ≤ b) (hfab : f a ≤ f b) (hf_c : ContinuousOn f (Icc a b)) (hf_i : InjOn f (Icc a b)) (this : Fact (a ≤ b)) : let g := (Icc a b).restrict f; g ⊥ ≤ g ⊤ := by
  aesop
