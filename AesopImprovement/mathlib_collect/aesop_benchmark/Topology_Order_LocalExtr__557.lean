-- Benchmark: Mathlib/Topology/Order/LocalExtr.lean:557
-- Original call: aesop
-- Theorem name: isLocalMin_of_anti_mono'.extracted_1_4.{u_2,
import Mathlib
import Mathlib.Tactic

open Set Filter Topology Relator

set_option maxHeartbeats 800000

theorem isLocalMin_of_anti_mono'.extracted_1_4.{u_2, u_1} {α : Type u_1} [inst : TopologicalSpace α] [inst_1 : LinearOrder α] {β : Type u_2} [inst_2 : Preorder β] {b : α} {f : α → β} {a : Set α} (ha : a ∈ 𝓝[≤] b) {c : Set α} (hc : c ∈ 𝓝[≥] b) (h₀ : AntitoneOn f a) (h₁ : MonotoneOn f c) (this_1 : b ∈ a) (this : b ∈ c) (x : α) (x_1 : x ∈ a ∩ Iic b ∪ c ∩ Ici b) (h : b ≤ x) : x ∈ {x | (fun x => f b ≤ f x) x} := by
  aesop
