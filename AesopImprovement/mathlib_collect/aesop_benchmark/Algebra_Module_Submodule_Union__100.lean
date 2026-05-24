-- Benchmark: Mathlib/Algebra/Module/Submodule/Union.lean:100
-- Original call: aesop
-- Theorem name: Module.Dual.exists_forall_ne_zero_of_forall_exists.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Function Set

set_option maxHeartbeats 800000

theorem Module.Dual.exists_forall_ne_zero_of_forall_exists.extracted_1_1.{u_3, u_2, u_1} {ι : Type u_1} {K : Type u_2} {M : Type u_3} [inst : Field K] [inst_1 : AddCommGroup M] [inst_2 : Module K M] [inst_3 : Finite ι] [inst_4 : Infinite K] (f : ι → Dual K M) : let p := fun i => LinearMap.ker (f i); ∀ (i : ι), (∃ x, (f i) x ≠ 0) → p i ≠ ⊤ := by
  aesop
