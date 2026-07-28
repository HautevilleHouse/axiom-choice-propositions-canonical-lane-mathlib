import AxiomChoicePropositionsCanonicalLaneLean.AxiomChoiceAdmissibleClass

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure WellOrderingPackage where
  set : Type u
  wellOrder : WellOrdering set
  existsMaximalChain : Prop
  HausdorffMaximalPrinciple : Prop

structure WellOrderingEvidence (W : WellOrderingPackage) where
  existsMaximalChainClosed : W.existsMaximalChain
  HausdorffMaximalPrincipleClosed : W.HausdorffMaximalPrinciple

def WellOrderingClosed (W : WellOrderingPackage) : Prop :=
  W.existsMaximalChain ∧ W.HausdorffMaximalPrinciple

theorem well_ordering_closed_from_evidence (W : WellOrderingPackage)
    (E : WellOrderingEvidence W) : WellOrderingClosed W := by
  exact And.intro E.existsMaximalChainClosed E.HausdorffMaximalPrincipleClosed

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse