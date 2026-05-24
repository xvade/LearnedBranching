-- Benchmark: Mathlib/Data/Sym/Sym2.lean:918
-- Original call: aesop
-- Theorem name: Sym2.filter_image_mk_not_isDiag.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open List Finset Function Sym

set_option maxHeartbeats 800000

theorem Sym2.filter_image_mk_not_isDiag.extracted_1_1.{u_1} {α : Type u_1} [inst : DecidableEq α] (s : Finset α) : {x ∈ image (uncurry Sym2.mk) (s ×ˢ s) | ¬x.IsDiag} = image (uncurry Sym2.mk) s.offDiag := by
  aesop
