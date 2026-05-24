-- Benchmark: Mathlib/Topology/LocallyFinsupp.lean:666
-- Original call: aesop
-- Theorem name: Function.locallyFinsuppWithin.restrict_posPart.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Filter Function Set Topology Classical

set_option maxHeartbeats 800000

theorem Function.locallyFinsuppWithin.restrict_posPart.extracted_1_1.{u_1} {X : Type u_1} [inst : TopologicalSpace X] {U V : Set X} (D : locallyFinsuppWithin U ℤ) (h : V ⊆ U) (x : X) : (if x ∈ V then (D x)⁺ else 0) = (if x ∈ V then D x else 0)⁺ := by
  aesop
