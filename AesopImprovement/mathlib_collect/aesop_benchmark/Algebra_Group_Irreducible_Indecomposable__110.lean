-- Benchmark: Mathlib/Algebra/Group/Irreducible/Indecomposable.lean:110
-- Original call: aesop
-- Theorem name: Submonoid.closure_image_isMulIndecomposable_baseOf.extracted_1_4.{u_4,
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem Submonoid.closure_image_isMulIndecomposable_baseOf.extracted_1_4.{u_4, u_2, u_1} {ι : Type u_1} {M : Type u_2} {S : Type u_4} [inst : Monoid M] [inst_1 : LinearOrder S] [inst_2 : Finite ι] [inst_3 : CommMonoid S] [inst_4 : IsOrderedCancelMonoid S] (v : ι → M) (f : M →* S) : let t := {i | IsMulIndecomposable v {j | 1 < f (v j)} i}; let s := {j | 1 < f (v j) ∧ v j ∉ closure (v '' t)}; s.Nonempty → ∀ (i : ι), MinimalFor (fun x => x ∈ s) (⇑f ∘ v) i → 1 < f (v i) → v i ∉ closure (v '' t) → (∀ (k : ι), 1 < f (v k) → f (v k) < f (v i) → v k ∈ closure (v '' t)) → i ∉ t → ∀ (j k : ι), 1 < f (v j) → 1 < f (v k) → v i = v j * v k → f (v j) < f (v i) := by
  aesop
