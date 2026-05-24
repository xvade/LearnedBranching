-- Benchmark: Mathlib/Topology/MetricSpace/Bounded.lean:139
-- Original call: aesop (add safe apply IsOpen.inter)
-- Theorem name: Metric.hasBasis_nhds_isOpen_isBounded.extracted_1_2.{u}
import Mathlib
import Mathlib.Tactic

open Set Filter Bornology ENNReal Uniformity Topology Pointwise

set_option maxHeartbeats 800000

theorem Metric.hasBasis_nhds_isOpen_isBounded.extracted_1_2.{u} {α : Type u} [inst : PseudoMetricSpace α] (x : α) (s : Set α) (hs : x ∈ s ∧ IsOpen s) : x ∈ s ∩ ball x 1 ∧ IsOpen (s ∩ ball x 1) := by
  aesop (add safe apply IsOpen.inter)
