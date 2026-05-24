-- Benchmark: Mathlib/Topology/Order/HullKernel.lean:140
-- Original call: aesop
-- Theorem name: PrimitiveSpectrum.hull_iSup.extracted_1_1.{u_1,
import Mathlib
import Mathlib.Tactic

open TopologicalSpace Topology Set Set.Notation Finset

set_option maxHeartbeats 800000

theorem PrimitiveSpectrum.hull_iSup.extracted_1_1.{u_1, v} {α : Type u_1} [inst : CompleteLattice α] {T : Set α} {ι : Sort v} (s : ι → α) : hull T (iSup s) = ⋂ i, hull T (s i) := by
  aesop
