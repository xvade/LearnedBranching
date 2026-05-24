-- Benchmark: Mathlib/Data/Matrix/Basic.lean:652
-- Original call: aesop
-- Theorem name: RingEquiv.mopMatrix.extracted_3.{u_14,
import Mathlib
import Mathlib.Tactic

open Matrix MulOpposite

set_option maxHeartbeats 800000

theorem RingEquiv.mopMatrix.extracted_3.{u_14, u_2} {m : Type u_2} {α : Type u_14} (x : (Matrix m m α)ᵐᵒᵖ) : (fun M => op (Mᵀ.map unop)) ((fun M => (unop M)ᵀ.map op) x) = x := by
  aesop
