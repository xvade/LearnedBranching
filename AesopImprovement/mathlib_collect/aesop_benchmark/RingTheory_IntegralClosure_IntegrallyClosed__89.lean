-- Benchmark: Mathlib/RingTheory/IntegralClosure/IntegrallyClosed.lean:89
-- Original call: aesop
-- Theorem name: AlgHom.isIntegrallyClosedIn.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Polynomial

set_option maxHeartbeats 800000

theorem AlgHom.isIntegrallyClosedIn.extracted_1_1.{u_3, u_2, u_1} {R : Type u_1} [inst : CommRing R] {A : Type u_2} {B : Type u_3} [inst_1 : CommRing A] [inst_2 : CommRing B] [inst_3 : Algebra R A] [inst_4 : Algebra R B] (f : A →ₐ[R] B) (hf : Function.Injective ⇑f) (inj : Function.Injective ⇑(algebraMap R B)) (cl : ∀ {x : B}, IsIntegral R x ↔ ∃ y, (algebraMap R B) y = x) : ⇑f ∘ ⇑(algebraMap R A) = ⇑(algebraMap R B) := by
  aesop
