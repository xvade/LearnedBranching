-- Benchmark: Mathlib/Topology/Algebra/InfiniteSum/Basic.lean:659
-- Original call: aesop
-- Theorem name: tprod_mulIndicator_of_notMem.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Filter Finset Function Topology SummationFilter

set_option maxHeartbeats 800000

theorem tprod_mulIndicator_of_notMem.extracted_1_1.{u_3, u_2, u_1} {α : Type u_1} {β : Type u_2} {γ : Type u_3} [inst : CommMonoid α] [inst_1 : TopologicalSpace α] (s : γ → Set β) (f : β → α) (i : β) (hi : ∀ (d : γ), i ∉ s d) : ∏' (d : γ), (s d).mulIndicator f i = 1 := by
  aesop
