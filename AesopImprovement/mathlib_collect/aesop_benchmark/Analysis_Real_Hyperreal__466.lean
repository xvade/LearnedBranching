-- Benchmark: Mathlib/Analysis/Real/Hyperreal.lean:466
-- Original call: aesop
-- Theorem name: Hyperreal.infinite_iff.extracted_1_2
import Mathlib
import Mathlib.Tactic

open ArchimedeanClass Filter Germ Topology Classical

set_option maxHeartbeats 800000

theorem Hyperreal.infinite_iff.extracted_1_2 {x : ℝ*} : 0 < x ∧ ArchimedeanClass.mk x < 0 ∨ x < 0 ∧ ArchimedeanClass.mk x < 0 ↔ ArchimedeanClass.mk x < 0 := by
  aesop
