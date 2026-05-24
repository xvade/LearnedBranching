-- Benchmark: Mathlib/Topology/OmegaCompletePartialOrder.lean:62
-- Original call: aesop
-- Theorem name: Scott.isOpen_sUnion.extracted_1_2.{u}
import Mathlib
import Mathlib.Tactic

open Set OmegaCompletePartialOrder Topology Topology.IsScott

set_option maxHeartbeats 800000

theorem Scott.isOpen_sUnion.extracted_1_2.{u} (α : Type u) [inst : OmegaCompletePartialOrder α] (s : Set (Set α)) (hs : ∀ t ∈ s, ωScottContinuous fun x => x ∈ t) : Membership.mem (⋃₀ s) = sSup s := by
  aesop
