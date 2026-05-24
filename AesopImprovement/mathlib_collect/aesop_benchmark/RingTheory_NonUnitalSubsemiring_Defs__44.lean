-- Benchmark: Mathlib/RingTheory/NonUnitalSubsemiring/Defs.lean:44
-- Original call: aesop
-- Theorem name: _example.extracted_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem _example.extracted_1.{u_2, u_1} {R : Type u_1} {S : Type u_2} [inst : Mul R] [inst_1 : HasDistribNeg R] [inst_2 : SetLike S R] [inst_3 : MulMemClass S R] {s : S} {x y z : R} (hx : x ∈ s) (hy : -y ∈ s) (hz : z ∈ s) : x * -y * z ∈ s := by
  aesop
