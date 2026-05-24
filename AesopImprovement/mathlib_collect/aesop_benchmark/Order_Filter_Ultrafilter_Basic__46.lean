-- Benchmark: Mathlib/Order/Filter/Ultrafilter/Basic.lean:46
-- Original call: aesop
-- Theorem name: Ultrafilter.eventually_exists_mem_iff.extracted_1_2.{v,
import Mathlib
import Mathlib.Tactic

open Set Filter

set_option maxHeartbeats 800000

theorem Ultrafilter.eventually_exists_mem_iff.extracted_1_2.{v, u} {α : Type u} {β : Type v} {f : Ultrafilter α} {is : Set β} {P : β → α → Prop} (his : is.Finite) : {x | ∃ a ∈ is, P a x} = ⋃ i ∈ is, P i := by
  aesop
