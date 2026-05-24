-- Benchmark: Mathlib/RingTheory/Congruence/Hom.lean:194
-- Original call: aesop
-- Theorem name: RingCon.lift_unique.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Function Setoid

set_option maxHeartbeats 800000

theorem RingCon.lift_unique.extracted_1_1.{u_3, u_1} {M : Type u_1} {P : Type u_3} [inst : NonAssocSemiring M] [inst_1 : NonAssocSemiring P] {c : RingCon M} {f : M →+* P} (H : c ≤ ker f) (g : c.Quotient →+* P) (Hg : g.comp c.mk' = f) : g.comp c.mk' = (c.lift f H).comp c.mk' := by
  aesop
