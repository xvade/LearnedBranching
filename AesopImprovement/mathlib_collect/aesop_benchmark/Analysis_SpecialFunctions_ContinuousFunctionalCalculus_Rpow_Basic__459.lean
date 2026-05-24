-- Benchmark: Mathlib/Analysis/SpecialFunctions/ContinuousFunctionalCalculus/Rpow/Basic.lean:459
-- Original call: aesop
-- Theorem name: CFC.rpow_add.extracted_1_3.{u_1}
import Mathlib
import Mathlib.Tactic

open NNReal

set_option maxHeartbeats 800000

theorem CFC.rpow_add.extracted_1_3.{u_1} {A : Type u_1} [inst : PartialOrder A] [inst_1 : Ring A] [inst_2 : StarRing A] [inst_3 : TopologicalSpace A] [inst_4 : StarOrderedRing A] [inst_5 : Algebra ℝ A] [inst_6 : ContinuousFunctionalCalculus ℝ A IsSelfAdjoint] [inst_7 : NonnegSpectrumClass ℝ A] {a : A} (ha : IsUnit a) (ha' : 0 ∉ spectrum ℝ≥0 a) ⦃z : ℝ≥0⦄ (hz : z ∈ spectrum ℝ≥0 a) : z ≠ 0 := by
  aesop
