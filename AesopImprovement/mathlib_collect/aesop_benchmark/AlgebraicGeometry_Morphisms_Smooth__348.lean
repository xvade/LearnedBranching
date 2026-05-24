-- Benchmark: Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:348
-- Original call: aesop (add simp IsUnit.mem_submonoid_iff)
-- Theorem name: AlgebraicGeometry.Scheme.Hom.genericPoint_mem_smoothLocus_of_perfectField.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

open CategoryTheory Limits RingHom

set_option maxHeartbeats 800000

theorem AlgebraicGeometry.Scheme.Hom.genericPoint_mem_smoothLocus_of_perfectField.extracted_1_1.{u} {X : Scheme} {K : Type u} [inst : Field K] [inst_1 : PerfectField K] [inst_2 : IsIntegral X] (f : X ⟶ Spec (CommRingCat.of K)) [inst_3 : LocallyOfFinitePresentation f] (this : (CommRingCat.Hom.hom (stalkMap f (genericPoint ↥X))).EssFiniteType) : let algInst := (CommRingCat.Hom.hom (stalkMap f (genericPoint ↥X))).toAlgebra; Algebra.EssFiniteType ↑((Spec (CommRingCat.of K)).presheaf.stalk (f (genericPoint ↥X))) ↑(X.presheaf.stalk (genericPoint ↥X)) → let K' := (Spec.structureSheaf K).presheaf.stalk (f (genericPoint ↥X)); ∀ x ∈ (f (genericPoint ↥X)).asIdeal.primeCompl, x ∈ IsUnit.submonoid ↑(CommRingCat.of K) := by
  aesop (add simp IsUnit.mem_submonoid_iff)
