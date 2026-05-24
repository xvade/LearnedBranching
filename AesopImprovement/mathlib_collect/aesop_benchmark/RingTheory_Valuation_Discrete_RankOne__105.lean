-- Benchmark: Mathlib/RingTheory/Valuation/Discrete/RankOne.lean:105
-- Original call: aesop
-- Theorem name: Valuation.IsRankOneDiscrete.generator_eq_exp_neg_one_of_surjective.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

open WithZero MonoidWithZeroHom NNReal WithZeroMulInt LinearOrderedCommGroup

set_option maxHeartbeats 800000

theorem Valuation.IsRankOneDiscrete.generator_eq_exp_neg_one_of_surjective.extracted_1_1.{u_2} {R : Type u_2} [inst : Ring R] {v : Valuation R (WithZero (Multiplicative ℤ))} [hv : v.IsRankOneDiscrete] (hsurj : Function.Surjective ⇑v) : exp (-1) ∈ Set.range ⇑v := by
  aesop
