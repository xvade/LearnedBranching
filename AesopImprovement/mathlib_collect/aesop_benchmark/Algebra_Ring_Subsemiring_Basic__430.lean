-- Benchmark: Mathlib/Algebra/Ring/Subsemiring/Basic.lean:430
-- Original call: aesop
-- Theorem name: Submonoid.subsemiringClosure_toNonUnitalSubsemiring.extracted_1_9.{u}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Submonoid.subsemiringClosure_toNonUnitalSubsemiring.extracted_1_9.{u} {R : Type u} [inst : NonAssocSemiring R] (M : Submonoid R) (x y : R) (hx : x ∈ AddSubmonoid.closure ↑M) (hy : y ∈ AddSubmonoid.closure ↑M) (a : x ∈ NonUnitalSubsemiring.closure ↑M) (a_1 : y ∈ NonUnitalSubsemiring.closure ↑M) : x + y ∈ NonUnitalSubsemiring.closure ↑M := by
  aesop
