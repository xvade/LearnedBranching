-- Benchmark: Mathlib/Analysis/Normed/Affine/AddTorsor.lean:268
-- Original call: aesop (add simp norm_smul)
-- Theorem name: DilationEquiv.smulTorsor_preimage_ball.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open NNReal Topology Filter AffineMap Dilation

set_option maxHeartbeats 800000

theorem DilationEquiv.smulTorsor_preimage_ball.extracted_1_1.{u_3, u_2, u_1} {𝕜 : Type u_1} {E : Type u_2} [inst : NormedDivisionRing 𝕜] [inst_1 : SeminormedAddCommGroup E] [inst_2 : Module 𝕜 E] [inst_3 : NormSMulClass 𝕜 E] {P : Type u_3} [inst_4 : PseudoMetricSpace P] [inst_5 : NormedAddTorsor E P] {c : P} {k : 𝕜} (hk : k ≠ 0) : ⇑(smulTorsor c hk) ⁻¹' Metric.ball c ‖k‖ = Metric.ball 0 1 := by
  aesop (add simp norm_smul)
