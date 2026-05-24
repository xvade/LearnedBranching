-- Benchmark: Mathlib/Algebra/Group/Graph.lean:61
-- Original call: aesop
-- Theorem name: MonoidHom.mgraph_eq_mrange_prod.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Function Set

set_option maxHeartbeats 800000

theorem MonoidHom.mgraph_eq_mrange_prod.extracted_1_1.{u_2, u_1} {G : Type u_1} {H : Type u_2} [inst : Monoid G] [inst_1 : Monoid H] (f : G →* H) : f.mgraph = mrange ((id G).prod f) := by
  aesop
