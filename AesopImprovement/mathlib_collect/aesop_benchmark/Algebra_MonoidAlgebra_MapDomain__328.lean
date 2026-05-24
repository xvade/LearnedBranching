-- Benchmark: Mathlib/Algebra/MonoidAlgebra/MapDomain.lean:328
-- Original call: aesop
-- Theorem name: MonoidAlgebra.mapRingHom_comp_mapDomainRingHom.extracted_1_1.{u_7,
import Mathlib
import Mathlib.Tactic

open Function Finsupp

set_option maxHeartbeats 800000

theorem MonoidAlgebra.mapRingHom_comp_mapDomainRingHom.extracted_1_1.{u_7, u_6, u_4, u_3} {R : Type u_3} {S : Type u_4} {M : Type u_6} {N : Type u_7} [inst : Semiring R] [inst_1 : Semiring S] [inst_2 : Monoid M] [inst_3 : Monoid N] (f : R →+* S) (g : M →* N) : (mapRingHom N f).comp (mapDomainRingHom R g) = (mapDomainRingHom S g).comp (mapRingHom M f) := by
  aesop
