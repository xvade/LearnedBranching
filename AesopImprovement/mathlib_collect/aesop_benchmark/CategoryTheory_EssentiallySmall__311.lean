-- Benchmark: Mathlib/CategoryTheory/EssentiallySmall.lean:311
-- Original call: aesop
-- Theorem name: CategoryTheory.instLocallySmallFunctor.extracted_1.{u',
import Mathlib
import Mathlib.Tactic

open CategoryTheory

set_option maxHeartbeats 800000

theorem CategoryTheory.instLocallySmallFunctor.extracted_1.{u', v', w} {A : Type u'} [inst : Category.{v', u'} A] [inst_1 : LocallySmall.{w, v', u'} A] (C : Type w) [inst_2 : SmallCategory C] (P Q : C ⥤ A) (f g : P ⟶ Q) (h : f.app = g.app) : f = g := by
  aesop
