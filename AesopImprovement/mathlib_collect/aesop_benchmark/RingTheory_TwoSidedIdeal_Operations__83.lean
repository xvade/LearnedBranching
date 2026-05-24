-- Benchmark: Mathlib/RingTheory/TwoSidedIdeal/Operations.lean:83
-- Original call: aesop
-- Theorem name: TwoSidedIdeal.span_le.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem TwoSidedIdeal.span_le.extracted_1_1.{u_1} {R : Type u_1} [inst : NonUnitalNonAssocRing R] {s : Set R} {I : TwoSidedIdeal R} (h : (fun a b => a - b ∈ s) ≤ ⇑I.ringCon) (x : R) (hx : x ∈ s) : x ∈ ↑I := by
  aesop
