-- Benchmark: Mathlib/FieldTheory/IsSepClosed.lean:188
-- Original call: aesop
-- Theorem name: IsSepClosed.of_exists_root.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

open Polynomial

set_option maxHeartbeats 800000

theorem IsSepClosed.of_exists_root.extracted_1_1.{u} (k : Type u) [inst : Field k] (H : ∀ (p : k[X]), p.Monic → Irreducible p → p.Separable → ∃ x, eval x p = 0) (p : k[X]) (hp : Irreducible p) (hs : p.Separable) : IsUnit (C p.leadingCoeff⁻¹) := by
  aesop
