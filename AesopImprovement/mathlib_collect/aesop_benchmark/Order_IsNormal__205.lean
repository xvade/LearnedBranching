-- Benchmark: Mathlib/Order/IsNormal.lean:205
-- Original call: aesop
-- Theorem name: Order.IsNormal.ext_iff.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem Order.IsNormal.ext_iff.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {f : α → β} [inst : LinearOrder α] [inst_1 : WellFoundedLT α] [inst_2 : SuccOrder α] [inst_3 : LinearOrder β] [inst_4 : OrderBot α] {g : α → β} (hf : IsNormal f) (hg : IsNormal g) (H₁ : f ⊥ = g ⊥) (H₂ : ∀ (a : α), f a = g a → f (succ a) = g (succ a)) (a : α) (ha : IsSuccLimit a) (IH : ∀ b < a, f b = g b) : f '' Iio a = g '' Iio a := by
  aesop
