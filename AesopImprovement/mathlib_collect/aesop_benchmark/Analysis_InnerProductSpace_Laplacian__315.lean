-- Benchmark: Mathlib/Analysis/InnerProductSpace/Laplacian.lean:315
-- Original call: aesop
-- Theorem name: InnerProductSpace.laplacian_neg.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Filter TensorProduct Topology Laplacian

set_option maxHeartbeats 800000

theorem InnerProductSpace.laplacian_neg.extracted_1_1.{u_3, u_2} {E : Type u_2} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E] [inst_2 : FiniteDimensional ℝ E] {F : Type u_3} [inst_3 : NormedAddCommGroup F] [inst_4 : NormedSpace ℝ F] {f : E → F} : (fun x => ∑ x_1, ((-iteratedFDeriv ℝ 2 f) x) ![(stdOrthonormalBasis ℝ E) x_1, (stdOrthonormalBasis ℝ E) x_1]) = -fun x => ∑ i, (iteratedFDeriv ℝ 2 f x) ![(stdOrthonormalBasis ℝ E) i, (stdOrthonormalBasis ℝ E) i] := by
  aesop
