-- Benchmark: Mathlib/Topology/Semicontinuity/Hemicontinuity.lean:117
-- Original call: aesop
-- Theorem name: isClosedMap_iff_upperHemicontinuous.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Set Filter Topology

set_option maxHeartbeats 800000

theorem isClosedMap_iff_upperHemicontinuous.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} [inst : TopologicalSpace α] [inst_1 : TopologicalSpace β] {f : α → β} : (∀ {u : Set α}, IsOpen u → IsOpen (kernImage f u)) ↔ ∀ (u : Set α), IsOpen u → IsOpen ((fun x => f ⁻¹' {x}) ⁻¹' Iic u) := by
  aesop
