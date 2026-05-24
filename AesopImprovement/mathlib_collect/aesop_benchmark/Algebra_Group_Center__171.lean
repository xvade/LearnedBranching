-- Benchmark: Mathlib/Algebra/Group/Center.lean:171
-- Original call: aesop (add simp [Prod.forall, forall_and, commute_iff_eq, isMulCentral_iff, mem_center_iff])
-- Theorem name: Set.center_prod.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Set.center_prod.extracted_1_1.{u_2, u_1} {M : Type u_1} [inst : Mul M] {N : Type u_2} [inst_1 : Mul N] : center (M × N) = center M ×ˢ center N := by
  aesop (add simp [Prod.forall, forall_and, commute_iff_eq, isMulCentral_iff, mem_center_iff])
