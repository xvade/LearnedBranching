-- Benchmark: Mathlib/Analysis/Normed/Module/Span.lean:108
-- Original call: aesop
-- Theorem name: LinearIsometryEquiv.toSpanUnitSingleton.extracted_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem LinearIsometryEquiv.toSpanUnitSingleton.extracted_1.{u_2, u_1} {𝕜 : Type u_1} {E : Type u_2} [inst : NormedDivisionRing 𝕜] [inst_1 : SeminormedAddCommGroup E] [inst_2 : Module 𝕜 E] [inst_3 : NormSMulClass 𝕜 E] (x : E) (hx : ‖x‖ = 1) : x ≠ 0 := by
  aesop
