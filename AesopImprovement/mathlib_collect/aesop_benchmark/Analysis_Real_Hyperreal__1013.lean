-- Benchmark: Mathlib/Analysis/Real/Hyperreal.lean:1013
-- Original call: aesop
-- Theorem name: Hyperreal.infinitePos_iff_infinitesimal_inv_pos.extracted_1_1
import Mathlib
import Mathlib.Tactic

open ArchimedeanClass Filter Germ Topology Classical

set_option maxHeartbeats 800000

theorem Hyperreal.infinitePos_iff_infinitesimal_inv_pos.extracted_1_1 {x : ℝ*} : 0 < x ∧ ArchimedeanClass.mk x < 0 ↔ 0 < ArchimedeanClass.mk x⁻¹ ∧ 0 < x⁻¹ := by
  aesop
