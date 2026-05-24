-- Benchmark: Mathlib/Order/Hom/Set.lean:44
-- Original call: aesop
-- Theorem name: Set.MapsTo.sumElim.extracted_1_4.{u_3,
import Mathlib
import Mathlib.Tactic

open OrderDual Set

set_option maxHeartbeats 800000

theorem Set.MapsTo.sumElim.extracted_1_4.{u_3, u_2, u_1} {α : Type u_1} {β : Type u_2} {γ : Type u_3} {f : α → γ} {g : β → γ} {s : Set α × Set β} {t : Set γ} (hf : MapsTo f s.1 t) (hg : MapsTo g s.2 t) (b : β) : Sum.inr b ∈ sumEquiv.symm s → Sum.elim f g (Sum.inr b) ∈ t := by
  aesop
