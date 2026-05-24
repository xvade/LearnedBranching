-- Benchmark: Mathlib/SetTheory/Ordinal/Veblen.lean:275
-- Original call: aesop (add simp lt_asymm)
-- Theorem name: Ordinal.veblenWith_eq_veblenWith_iff.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

open Order Set

set_option maxHeartbeats 800000

theorem Ordinal.veblenWith_eq_veblenWith_iff.extracted_1_1.{u} {f : Ordinal.{u} → Ordinal.{u}} {o₁ o₂ a b : Ordinal.{u}} (hf : IsNormal f) : (match cmp o₁ o₂ with | Ordering.eq => cmp a b | Ordering.lt => cmp a (veblenWith f o₂ b) | Ordering.gt => cmp (veblenWith f o₁ a) b) = Ordering.eq ↔ o₁ = o₂ ∧ a = b ∨ o₁ < o₂ ∧ a = veblenWith f o₂ b ∨ o₂ < o₁ ∧ veblenWith f o₁ a = b := by
  aesop (add simp lt_asymm)
