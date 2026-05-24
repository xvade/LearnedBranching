-- Benchmark: Mathlib/MeasureTheory/Function/ConditionalExpectation/CondJensen.lean:218
-- Original call: aesop
-- Theorem name: norm_condExp_le.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open MeasureTheory Function Set Filter

set_option maxHeartbeats 800000

theorem norm_condExp_le.extracted_1_1.{u_2, u_1} {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : NormedSpace ℝ E] [inst_2 : CompleteSpace E] {α : Type u_2} {f : α → E} {m mα : MeasurableSpace α} {μ : Measure α} (hm : ¬m ≤ mα) : (fun x => 0) ≤ᶠ[ae μ] 0 := by
  aesop
