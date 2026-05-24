-- Benchmark: Mathlib/CategoryTheory/ObjectProperty/Small.lean:79
-- Original call: aesop
-- Theorem name: CategoryTheory.ObjectProperty.instSmallISupOfSmall.extracted_3.{u_1,
import Mathlib
import Mathlib.Tactic

open Opposite

set_option maxHeartbeats 800000

theorem CategoryTheory.ObjectProperty.instSmallISupOfSmall.extracted_3.{u_1, u, v, w} {C : Type u} [inst : Category.{v, u} C] {α : Type u_1} (P : α → ObjectProperty C) [inst_1 : ∀ (a : α), ObjectProperty.Small.{w, v, u} (P a)] [inst_2 : Small.{w, u_1} α] (x : (a : α) × Subtype (P a)) : (⨆ a, P a) ↑x.snd := by
  aesop
