-- Benchmark: Mathlib/Algebra/Order/Monoid/LocallyFiniteOrder.lean:211
-- Original call: aesop (add simp orderMonoidWithZeroHom)
-- Theorem name: LocallyFiniteOrder.orderMonoidWithZeroHom_strictMono.extracted_1_1.{u_3}
import Mathlib
import Mathlib.Tactic

open Finset WithZero

set_option maxHeartbeats 800000

theorem LocallyFiniteOrder.orderMonoidWithZeroHom_strictMono.extracted_1_1.{u_3} {G : Type u_3} [inst : LinearOrderedCommGroupWithZero G] [inst_1 : LocallyFiniteOrder Gˣ] (this : StrictMono ⇑(orderMonoidHom Gˣ)) ⦃a b : G⦄ (h : a < b) : (orderMonoidWithZeroHom G) a < (orderMonoidWithZeroHom G) b := by
  aesop (add simp orderMonoidWithZeroHom)
