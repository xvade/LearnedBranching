-- Benchmark: Mathlib/Algebra/SkewMonoidAlgebra/Single.lean:105
-- Original call: aesop (add norm [update, Finsupp.support_update_ne_zero])
-- Theorem name: SkewMonoidAlgebra.support_update.extracted_1_1.{u_5,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SkewMonoidAlgebra.support_update.extracted_1_1.{u_5, u_4} {M : Type u_4} {α : Type u_5} [inst : AddCommMonoid M] (f : SkewMonoidAlgebra M α) (a : α) (b : M) [inst_1 : DecidableEq α] [inst_2 : DecidableEq M] : (f.update a b).support = if b = 0 then f.support.erase a else insert a f.support := by
  aesop (add norm [update, Finsupp.support_update_ne_zero])
