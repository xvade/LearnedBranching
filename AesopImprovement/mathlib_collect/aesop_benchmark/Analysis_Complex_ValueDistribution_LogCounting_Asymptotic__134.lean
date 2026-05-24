-- Benchmark: Mathlib/Analysis/Complex/ValueDistribution/LogCounting/Asymptotic.lean:134
-- Original call: aesop
-- Theorem name: ValueDistribution.logCounting_isBigO_one_iff_analyticOnNhd.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Asymptotics Filter Function Real Set

set_option maxHeartbeats 800000

theorem ValueDistribution.logCounting_isBigO_one_iff_analyticOnNhd.extracted_1_1.{u_2, u_1} {𝕜 : Type u_1} [inst : NontriviallyNormedField 𝕜] [inst_1 : ProperSpace 𝕜] {E : Type u_2} [inst_2 : NormedAddCommGroup E] [inst_3 : NormedSpace 𝕜 E] {f : 𝕜 → E} (h : Meromorphic f) (h₁f : (MeromorphicOn.divisor f univ)⁻ = 0) (z : 𝕜) (hz : z ∈ univ) : (MeromorphicOn.divisor f fun z => True)⁻ z = 0 := by
  aesop
