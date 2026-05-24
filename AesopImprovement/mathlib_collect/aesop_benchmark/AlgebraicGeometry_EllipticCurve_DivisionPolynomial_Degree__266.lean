-- Benchmark: Mathlib/AlgebraicGeometry/EllipticCurve/DivisionPolynomial/Degree.lean:266
-- Original call: aesop
-- Theorem name: WeierstrassCurve.preΨ'_ne_zero.extracted_1_7.{u}
import Mathlib
import Mathlib.Tactic

open Polynomial

set_option maxHeartbeats 800000

theorem WeierstrassCurve.preΨ'_ne_zero.extracted_1_7.{u} {R : Type u} [inst : CommRing R] (W : WeierstrassCurve R) [inst_1 : Nontrivial R] (n : ℕ) (h : ↑(n + 1 + 1) ≠ 0) (hn : ¬2 < n + 1 + 1) : W.preΨ' (n + 1 + 1) ≠ 0 := by
  aesop
