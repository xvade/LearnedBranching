-- Benchmark: Mathlib/Geometry/Manifold/LocalInvariantProperties.lean:359
-- Original call: aesop
-- Theorem name: StructureGroupoid.LocalInvariantProp.liftPropWithinAt_congr_set.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Set Filter TopologicalSpace Manifold Topology ChartedSpace

set_option maxHeartbeats 800000

theorem StructureGroupoid.LocalInvariantProp.liftPropWithinAt_congr_set.extracted_1_1.{u_4, u_3, u_2, u_1} {H : Type u_1} {M : Type u_2} {H' : Type u_3} {M' : Type u_4} [inst : TopologicalSpace H] [inst_1 : TopologicalSpace M] [inst_2 : ChartedSpace H M] [inst_3 : TopologicalSpace H'] [inst_4 : TopologicalSpace M'] [inst_5 : ChartedSpace H' M'] {G : StructureGroupoid H} {G' : StructureGroupoid H'} {P : (H → H') → Set H → H → Prop} {g : M → M'} {s t : Set M} {x : M} (hG : G.LocalInvariantProp G' P) (hu : s =ᶠ[𝓝 x] t) : s ∩ {x | (fun x => s x = t x) x} = t ∩ {x | (fun x => s x = t x) x} := by
  aesop
