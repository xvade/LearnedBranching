-- Benchmark: Mathlib/Order/SuccPred/IntervalSucc.lean:57
-- Original call: aesop (add simp [upperBounds, le_of_lt])
-- Theorem name: biUnion_Ici_Ioc_map_succ.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Set Order

set_option maxHeartbeats 800000

theorem biUnion_Ici_Ioc_map_succ.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} [inst : LinearOrder α] [inst_1 : SuccOrder α] [inst_2 : IsSuccArchimedean α] [inst_3 : LinearOrder β] {f : α → β} {a : α} (hf : ∀ i ∈ Ici a, f a ≤ f i) ⦃b : β⦄ (hb : b ∈ Ioi (f a)) (h2f : b ∉ ⋃ i ∈ Ici a, Ioc (f i) (f (succ i))) (this : ∀ (i : α), a ≤ i → f i < b) : b ∈ upperBounds (f '' Ici a) := by
  aesop (add simp [upperBounds, le_of_lt])
