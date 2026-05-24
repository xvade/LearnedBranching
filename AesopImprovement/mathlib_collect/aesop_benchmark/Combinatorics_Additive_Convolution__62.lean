-- Benchmark: Mathlib/Combinatorics/Additive/Convolution.lean:62
-- Original call: aesop (add simp [convolution, Finset.Nonempty, mem_mul])
-- Theorem name: Finset.convolution_pos.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open MulOpposite MulAction Pointwise RightActions

set_option maxHeartbeats 800000

theorem Finset.convolution_pos.extracted_1_1.{u_1} {G : Type u_1} [inst : Group G] [inst_1 : DecidableEq G] {A B : Finset G} {x : G} : 0 < A.convolution B x ↔ x ∈ A * B := by
  aesop (add simp [convolution, Finset.Nonempty, mem_mul])
