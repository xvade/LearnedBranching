-- Benchmark: Mathlib/FieldTheory/AbelRuffini.lean:338
-- Original call: aesop
-- Theorem name: isSolvable_gal_of_irreducible.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Polynomial IntermediateField

set_option maxHeartbeats 800000

theorem isSolvable_gal_of_irreducible.extracted_1_1.{u_2, u_1} {F : Type u_1} {E : Type u_2} [inst : Field F] [inst_1 : Field E] [inst_2 : Algebra F E] {x : E} (hx : x ∈ solvableByRad F E) {q : F[X]} (q_irred : Irreducible q) (q_aeval : (aeval x) q = 0) (this : IsSolvable (q * C q.leadingCoeff⁻¹).Gal) : q * C q.leadingCoeff⁻¹ ≠ 0 := by
  aesop
