-- Benchmark: Mathlib/Algebra/Order/Ring/Ordering/Basic.lean:66
-- Original call: aesop
-- Theorem name: RingPreordering.mem_of_isSumSq.extracted_1_4.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem RingPreordering.mem_of_isSumSq.extracted_1_4.{u_1} {R : Type u_1} [inst : CommRing R] {P : RingPreordering R} {x s : R} (hx : IsSquare x) (hs : IsSumSq s) (a : s ∈ P) : x + s ∈ P := by
  aesop
