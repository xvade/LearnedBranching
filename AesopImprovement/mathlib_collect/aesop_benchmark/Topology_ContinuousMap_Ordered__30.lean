-- Benchmark: Mathlib/Topology/ContinuousMap/Ordered.lean:30
-- Original call: aesop
-- Theorem name: ContinuousMap.partialOrder.extracted_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem ContinuousMap.partialOrder.extracted_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} [inst : TopologicalSpace α] [inst_1 : TopologicalSpace β] (f g : C(α, β)) (x : (fun f => f.toFun) f = (fun f => f.toFun) g) : f = g := by
  aesop
