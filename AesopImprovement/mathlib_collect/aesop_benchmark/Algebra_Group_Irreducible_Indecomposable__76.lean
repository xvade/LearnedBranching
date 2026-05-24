-- Benchmark: Mathlib/Algebra/Group/Irreducible/Indecomposable.lean:76
-- Original call: aesop
-- Theorem name: IsMulIndecomposable.image_baseOf_inv_comp_eq.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem IsMulIndecomposable.image_baseOf_inv_comp_eq.extracted_1_1.{u_4, u_3, u_1} {ι : Type u_1} {G : Type u_3} {S : Type u_4} [inst : CommGroup G] [inst_1 : LinearOrder S] [inst_2 : InvolutiveInv ι] [inst_3 : CommGroup S] [inst_4 : IsOrderedMonoid S] (v : ι → G) (hv_inv : ∀ (i : ι), v i⁻¹ = (v i)⁻¹) (f : G →* S) (i : ι) (hi_1 : i ∈ {i | 1 < (invMonoidHom.comp f) (v i)}) (j : ι) (hj : j ∈ {i | 1 < f (v i)}) (k : ι) (hk : k ∈ {i | 1 < f (v i)}) (hi : v i = v j⁻¹ * v k⁻¹) (hi' : v j⁻¹ = 1 ∨ v k⁻¹ = 1) : v j = 1 ∨ v k = 1 := by
  aesop
