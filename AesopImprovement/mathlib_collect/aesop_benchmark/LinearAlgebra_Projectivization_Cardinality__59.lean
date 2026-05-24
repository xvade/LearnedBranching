-- Benchmark: Mathlib/LinearAlgebra/Projectivization/Cardinality.lean:59
-- Original call: aesop
-- Theorem name: Projectivization.finite_iff_of_finite.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open LinearAlgebra.Projectivization

set_option maxHeartbeats 800000

theorem Projectivization.finite_iff_of_finite.extracted_1_1.{u_2, u_1} (k : Type u_1) (V : Type u_2) [inst : DivisionRing k] [inst_1 : AddCommGroup V] [inst_2 : Module k V] [inst_3 : Finite k] (h : Finite (ℙ k V)) : let e := nonZeroEquivProjectivizationProdUnits k V; Finite { v // v ≠ 0 } → ∀ (x : { v // v ≠ 0 } ⊕ Unit), (fun v => if h : v = 0 then Sum.inr () else Sum.inl ⟨v, h⟩) (Sum.elim Subtype.val (fun x => 0) x) = x := by
  aesop
