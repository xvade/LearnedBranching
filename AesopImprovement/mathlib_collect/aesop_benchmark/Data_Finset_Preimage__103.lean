-- Benchmark: Mathlib/Data/Finset/Preimage.lean:103
-- Original call: aesop
-- Theorem name: Finset.card_preimage.extracted_1_2.{v,
import Mathlib
import Mathlib.Tactic

open Set Function

set_option maxHeartbeats 800000

theorem Finset.card_preimage.extracted_1_2.{v, u} {α : Type u} {β : Type v} (s : Finset β) (f : α → β) (hf : InjOn f (f ⁻¹' ↑s)) [inst : DecidablePred fun x => x ∈ Set.range f] (b : β) (hb : b ∈ ↑({x ∈ s | x ∈ Set.range f})) : b ∈ f '' ↑(s.preimage f hf) := by
  aesop
