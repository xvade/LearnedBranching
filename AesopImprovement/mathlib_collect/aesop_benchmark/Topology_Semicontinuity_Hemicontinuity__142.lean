-- Benchmark: Mathlib/Topology/Semicontinuity/Hemicontinuity.lean:142
-- Original call: aesop
-- Theorem name: isOpenMap_iff_lowerHemicontinuous.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Set Filter Topology

set_option maxHeartbeats 800000

theorem isOpenMap_iff_lowerHemicontinuous.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} [inst : TopologicalSpace α] [inst_1 : TopologicalSpace β] {f : α → β} : (∀ {u : Set α}, IsClosed u → IsClosed (kernImage f u)) ↔ ∀ (u : Set α), IsClosed u → IsClosed ((fun x => f ⁻¹' {x}) ⁻¹' Iic u) := by
  aesop
