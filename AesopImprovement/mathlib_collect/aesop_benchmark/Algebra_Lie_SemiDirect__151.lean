-- Benchmark: Mathlib/Algebra/Lie/SemiDirect.lean:151
-- Original call: aesop
-- Theorem name: LieAlgebra.SemiDirectSum.instIsExtensionInlProjr.extracted_3.{u_3,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem LieAlgebra.SemiDirectSum.instIsExtensionInlProjr.extracted_3.{u_3, u_2, u_1} {R : Type u_1} [inst : CommRing R] {K : Type u_2} [inst_1 : LieRing K] [inst_2 : LieAlgebra R K] {L : Type u_3} [inst_3 : LieRing L] [inst_4 : LieAlgebra R L] (ψ : L →ₗ⁅R⁆ LieDerivation R K K) (x : K) (y : L) : { left := x, right := y } ∈ (inl ψ).range ↔ { left := x, right := y } ∈ LieIdeal.toLieSubalgebra R (K ⋊⁅ψ⁆ L) (projr ψ).ker := by
  aesop
