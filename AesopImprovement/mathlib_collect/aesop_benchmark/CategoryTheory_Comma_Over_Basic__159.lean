-- Benchmark: Mathlib/CategoryTheory/Comma/Over/Basic.lean:159
-- Original call: aesop
-- Theorem name: CategoryTheory.Over.forall_iff.extracted_1_1.{u₁,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem CategoryTheory.Over.forall_iff.extracted_1_1.{u₁, v₁} {T : Type u₁} [inst : Category.{v₁, u₁} T] {X : T} (P : Over X → Prop) : (∀ (Y : Over X), P Y) ↔ ∀ (Y : T) (f : Y ⟶ X), P (mk f) := by
  aesop
