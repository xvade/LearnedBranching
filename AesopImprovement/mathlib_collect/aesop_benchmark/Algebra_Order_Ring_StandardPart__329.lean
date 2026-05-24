-- Benchmark: Mathlib/Algebra/Order/Ring/StandardPart.lean:329
-- Original call: aesop
-- Theorem name: ArchimedeanClass.stdPart_inv.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem ArchimedeanClass.stdPart_inv.extracted_1_1.{u_1} {K : Type u_1} [inst : LinearOrder K] [inst_1 : Field K] [inst_2 : IsOrderedRing K] (x : K) (hx : mk x = 0) (hx' : 0 ≤ mk x⁻¹) : x ≠ 0 := by
  aesop
