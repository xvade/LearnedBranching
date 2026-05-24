-- Benchmark: Mathlib/Analysis/RCLike/Sqrt.lean:77
-- Original call: aesop (add simp [sqrt, Complex.re_sqrt_ofReal])
-- Theorem name: RCLike.re_sqrt_ofReal.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open ComplexOrder Complex

set_option maxHeartbeats 800000

theorem RCLike.re_sqrt_ofReal.extracted_1_1.{u_1} {𝕜 : Type u_1} [inst : RCLike 𝕜] {a : ℝ} : re (sqrt ↑a) = √a := by
  aesop (add simp [sqrt, Complex.re_sqrt_ofReal])
