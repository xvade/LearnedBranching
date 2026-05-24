-- Benchmark: Mathlib/Algebra/Group/Graph.lean:173
-- Original call: aesop
-- Theorem name: MonoidHom.graph_eq_range_prod.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Function Set

set_option maxHeartbeats 800000

theorem MonoidHom.graph_eq_range_prod.extracted_1_1.{u_2, u_1} {G : Type u_1} {H : Type u_2} [inst : Group G] [inst_1 : Group H] (f : G →* H) : f.graph = ((id G).prod f).range := by
  aesop
