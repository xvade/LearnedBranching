-- Benchmark: Mathlib/Algebra/Lie/Subalgebra.lean:744
-- Original call: aesop
-- Theorem name: LieSubalgebra.comap_lieSpan_range_eq.extracted_1_3.{u_1,
import Mathlib
import Mathlib.Tactic

open Set Submodule

set_option maxHeartbeats 800000

theorem LieSubalgebra.comap_lieSpan_range_eq.extracted_1_3.{u_1, v, u} (R : Type u) {L : Type v} [inst : CommRing R] [inst_1 : LieRing L] [inst_2 : LieAlgebra R L] (K : LieSubalgebra R L) {ι : Type u_1} (f : ι → ↥K) (x : L) (hx : x ∈ K) (hx' : x ∈ lieSpan R L (range (Subtype.val ∘ f))) (this : x ∈ map K.incl (lieSpan R (↥K) (range f))) : ⟨x, hx⟩ ∈ lieSpan R (↥K) (range f) := by
  aesop
