-- Benchmark: Mathlib/LinearAlgebra/AffineSpace/Independent.lean:891
-- Original call: aesop
-- Theorem name: AffineIndependent.affineIndependent_update_of_notMem_affineSpan.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Finset Function Module Affine

set_option maxHeartbeats 800000

theorem AffineIndependent.affineIndependent_update_of_notMem_affineSpan.extracted_1_1.{u_4, u_3, u_2, u_1} {k : Type u_1} {V : Type u_2} {P : Type u_3} [inst : DivisionRing k] [inst_1 : AddCommGroup V] [inst_2 : Module k V] [inst_3 : AffineSpace V P] {ι : Type u_4} [inst_4 : DecidableEq ι] {p : ι → P} (ha : AffineIndependent k p) {i : ι} {p₀ : P} (hp₀ : p₀ ∉ affineSpan k (p '' {x | x ≠ i})) : let f := update p i p₀; f = update p i p₀ → ∀ (x : ↑{x | x ≠ i}), p ↑x = f ↑x := by
  aesop
