-- Benchmark: Mathlib/RingTheory/IntegralDomain.lean:126
-- Original call: aesop (add safe unfold Set.MapsTo)
-- Theorem name: card_nthRoots_subgroup_units.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Finset Polynomial Function

set_option maxHeartbeats 800000

theorem card_nthRoots_subgroup_units.extracted_1_1.{u_2, u_1} {R : Type u_1} {G : Type u_2} [inst : CommRing R] [inst_1 : IsDomain R] [inst_2 : Group G] [inst_3 : Fintype G] [inst_4 : DecidableEq G] (f : G →* R) (hf : Injective ⇑f) {n : ℕ} (hn : 0 < n) (g₀ : G) (this : DecidableEq R) : Set.MapsTo ⇑f ↑{g | g ^ n = g₀} ↑(nthRoots n (f g₀)).toFinset := by
  aesop (add safe unfold Set.MapsTo)
