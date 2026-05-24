-- Benchmark: Mathlib/Order/SupIndep.lean:523
-- Original call: aesop
-- Theorem name: iSupIndep.disjoint_biSup_biSup'.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Set Function

set_option maxHeartbeats 800000

theorem iSupIndep.disjoint_biSup_biSup'.extracted_1_1.{u_3, u_1} {α : Type u_1} {ι : Type u_3} [inst : CompleteLattice α] [inst_1 : IsModularLattice α] {f : ι → α} {s t : Set ι} (hf : iSupIndep f) (hst : Disjoint s t) (hs : s.Finite) (this : Disjoint (↑hs.toFinset) t → Disjoint (⨆ i ∈ hs.toFinset, f i) (⨆ i ∈ t, f i)) : Disjoint (⨆ i ∈ s, f i) (⨆ i ∈ t, f i) := by
  aesop
