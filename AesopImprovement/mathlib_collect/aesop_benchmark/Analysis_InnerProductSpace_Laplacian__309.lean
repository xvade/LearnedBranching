-- Benchmark: Mathlib/Analysis/InnerProductSpace/Laplacian.lean:309
-- Original call: aesop
-- Theorem name: InnerProductSpace.laplacianWithin_neg.extracted_1_2.{u_3,
import Mathlib
import Mathlib.Tactic

open Filter TensorProduct Topology Laplacian

set_option maxHeartbeats 800000

theorem InnerProductSpace.laplacianWithin_neg.extracted_1_2.{u_3, u_2} {E : Type u_2} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E] [inst_2 : FiniteDimensional ℝ E] {F : Type u_3} [inst_3 : NormedAddCommGroup F] [inst_4 : NormedSpace ℝ F] {f : E → F} {x : E} {s : Set E} (hs : UniqueDiffOn ℝ s) (hx : x ∈ s) : ∑ i, (-iteratedFDerivWithin ℝ 2 f s x) ![(stdOrthonormalBasis ℝ E) i, (stdOrthonormalBasis ℝ E) i] = -∑ i, (iteratedFDerivWithin ℝ 2 f s x) ![(stdOrthonormalBasis ℝ E) i, (stdOrthonormalBasis ℝ E) i] := by
  aesop
