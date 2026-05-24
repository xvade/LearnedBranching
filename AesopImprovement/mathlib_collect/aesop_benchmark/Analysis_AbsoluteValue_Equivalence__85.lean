-- Benchmark: Mathlib/Analysis/AbsoluteValue/Equivalence.lean:85
-- Original call: aesop (add simp [not_isNontrivial_iff, h.eq_one_iff])
-- Theorem name: AbsoluteValue.IsEquiv.isNontrivial_congr.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem AbsoluteValue.IsEquiv.isNontrivial_congr.extracted_1_1.{u_2, u_1} {R : Type u_1} [inst : Semiring R] {S : Type u_2} [inst_1 : Semiring S] [inst_2 : PartialOrder S] {v : AbsoluteValue R S} [inst_3 : IsDomain S] [inst_4 : Nontrivial R] {w : AbsoluteValue R S} (h : v.IsEquiv w) : ¬v.IsNontrivial ↔ ¬w.IsNontrivial := by
  aesop (add simp [not_isNontrivial_iff, h.eq_one_iff])
