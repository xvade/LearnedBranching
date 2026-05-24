-- Benchmark: Mathlib/RingTheory/Localization/Basic.lean:616
-- Original call: aesop (add simp [map_mk', mk'_eq_zero_iff])
-- Theorem name: IsLocalization.map_injective_of_injective'.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Function IsLocalization

set_option maxHeartbeats 800000

theorem IsLocalization.map_injective_of_injective'.extracted_1_1.{u_4, u_3, u_2, u_1} {R : Type u_1} [inst : CommRing R] (M : Submonoid R) (S : Type u_2) [inst_1 : CommRing S] {f : R →+* S} {Rₘ : Type u_3} [inst_2 : CommRing Rₘ] [inst_3 : Algebra R Rₘ] [inst_4 : IsLocalization M Rₘ] (Sₘ : Type u_4) {N : Submonoid S} [inst_5 : CommRing Sₘ] [inst_6 : Algebra S Sₘ] [inst_7 : IsLocalization N Sₘ] (hf : M ≤ Submonoid.comap f N) (hN : 0 ∉ N) [inst_8 : IsDomain S] (hf' : Injective ⇑f) (x : R) (s : ↥M) (h : (map Sₘ f hf) (mk' Rₘ x s) = 0) : mk' Rₘ x s = 0 := by
  aesop (add simp [map_mk', mk'_eq_zero_iff])
