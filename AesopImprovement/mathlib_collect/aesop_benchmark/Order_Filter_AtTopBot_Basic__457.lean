-- Benchmark: Mathlib/Order/Filter/AtTopBot/Basic.lean:457
-- Original call: aesop (add safe Ioi_mem_atTop)
-- Theorem name: Filter.not_bddAbove_of_tendsto_atTop.extracted_1_3.{u_4,
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem Filter.not_bddAbove_of_tendsto_atTop.extracted_1_3.{u_4, u_3} {α : Type u_3} {β : Type u_4} [inst : Preorder β] {l : Filter α} [inst_1 : l.NeBot] {f : α → β} [inst_2 : NoMaxOrder β] (h : Tendsto f l atTop) (M : β) (hM : M ∈ upperBounds (range f)) (this_1 : ∀ (x : α), f x ≤ M) (this : ∅ = f ⁻¹' Ioi M) : ∅ ∈ l := by
  aesop (add safe Ioi_mem_atTop)
