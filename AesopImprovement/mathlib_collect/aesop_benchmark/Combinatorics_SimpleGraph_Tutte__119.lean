-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Tutte.lean:119
-- Original call: aesop
-- Theorem name: SimpleGraph.Subgraph.IsMatching.exists_verts_compl_subset_universalVerts.extracted_1_4.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SimpleGraph.Subgraph.IsMatching.exists_verts_compl_subset_universalVerts.extracted_1_4.{u_1} {V : Type u_1} {G : SimpleGraph V} [inst : Finite V] (h_1 : ¬G.IsTutteViolator G.universalVerts) (h' : ∀ (K : G.deleteUniversalVerts.coe.ConnectedComponent), G.deleteUniversalVerts.coe.IsClique K.supp) (hrep : ConnectedComponent.Represents (Quot.out '' G.deleteUniversalVerts.coe.oddComponents) G.deleteUniversalVerts.coe.oddComponents) (t : Set V) (ht : t ⊆ G.universalVerts) (M1 : G.Subgraph) (hM1 : M1.verts = Subtype.val '' (Quot.out '' G.deleteUniversalVerts.coe.oddComponents) ∪ t ∧ M1.IsMatching) (complMatch : G.deleteUniversalVerts.coe.ConnectedComponent → G.Subgraph) (hcomplMatch_compl : ∀ (K : G.deleteUniversalVerts.coe.ConnectedComponent), (complMatch K).verts = Subtype.val '' K.supp \ M1.verts) (hcomplMatch_match : ∀ (K : G.deleteUniversalVerts.coe.ConnectedComponent), (complMatch K).IsMatching) : let M2 := ⨆ K, complMatch K; M2.IsMatching → Disjoint M1.support M2.support → ∀ ⦃v : V⦄ (hv : v ∈ Set.univ \ G.universalVerts), v ∉ M1.verts → v ∈ (fun a => ↑a) '' (G.deleteUniversalVerts.coe.connectedComponentMk ⟨v, hv⟩).supp \ M1.verts := by
  aesop
