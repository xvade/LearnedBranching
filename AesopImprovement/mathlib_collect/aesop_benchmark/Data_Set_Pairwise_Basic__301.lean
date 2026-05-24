-- Benchmark: Mathlib/Data/Set/Pairwise/Basic.lean:301
-- Original call: aesop (add simp [PairwiseDisjoint, Set.Pairwise])
-- Theorem name: Set.pairwiseDisjoint_range_iff.extracted_1_1.{u_7,
import Mathlib
import Mathlib.Tactic

open Function Order Set

set_option maxHeartbeats 800000

theorem Set.pairwiseDisjoint_range_iff.extracted_1_1.{u_7, u_6} {α : Type u_6} {β : Type u_7} {f : α → Set β} : (range f).PairwiseDisjoint id ↔ ∀ (x y : α), f x ≠ f y → Disjoint (f x) (f y) := by
  aesop (add simp [PairwiseDisjoint, Set.Pairwise])
