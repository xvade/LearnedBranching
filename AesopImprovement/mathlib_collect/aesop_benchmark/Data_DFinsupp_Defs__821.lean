-- Benchmark: Mathlib/Data/DFinsupp/Defs.lean:821
-- Original call: aesop
-- Theorem name: DFinsupp.eq_mk_support.extracted_1_1.{v,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem DFinsupp.eq_mk_support.extracted_1_1.{v, u} {ι : Type u} {β : ι → Type v} [inst : DecidableEq ι] [inst_1 : (i : ι) → Zero (β i)] [inst_2 : (i : ι) → (x : β i) → Decidable (x ≠ 0)] (f : Π₀ (i : ι), β i) : f = mk f.support fun i => f ↑i := by
  aesop
