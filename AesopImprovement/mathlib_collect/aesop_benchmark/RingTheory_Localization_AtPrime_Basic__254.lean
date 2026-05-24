-- Benchmark: Mathlib/RingTheory/Localization/AtPrime/Basic.lean:254
-- Original call: aesop
-- Theorem name: Localization.localRingHom_mk.extracted_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Module IsLocalization

set_option maxHeartbeats 800000

theorem Localization.localRingHom_mk.extracted_1.{u_3, u_1} {R : Type u_1} [inst : CommSemiring R] {P : Type u_3} [inst_1 : CommSemiring P] (I : Ideal R) [hI : I.IsPrime] (J : Ideal P) [inst_2 : J.IsPrime] (f : R →+* P) (hIJ : I = Ideal.comap f J) (y : ↥I.primeCompl) : f ↑y ∈ J.primeCompl := by
  aesop
