-- Benchmark: Mathlib/AlgebraicTopology/SimplexCategory/SemiSimplexCategory.lean:106
-- Original call: aesop
-- Theorem name: SemiSimplexCategory.toSimplexCategory_map_homOfMono.extracted_1_1
import Mathlib
import Mathlib.Tactic

open CategoryTheory Simplicial

set_option maxHeartbeats 800000

theorem SemiSimplexCategory.toSimplexCategory_map_homOfMono.extracted_1_1 {n m : SemiSimplexCategory} (f : toSimplexCategory.obj n ⟶ toSimplexCategory.obj m) [inst : Mono f] : toSimplexCategory.map (homOfMono f) = f := by
  aesop
