import AxiomChoicePropositionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure WellOrderingTheoremPackage where
  set : Type u
  wellOrder : WellOrdering set
  everySetWellOrderable : Prop
  equivalentToAC : Prop

structure WellOrderingEvidence (W : WellOrderingTheoremPackage) where
  wellOrderExists : W.wellOrder = W.wellOrder
  everySetWellOrderableClosed : W.everySetWellOrderable

def WellOrderingClosed (W : WellOrderingTheoremPackage) : Prop :=
  W.everySetWellOrderable

theorem well_ordering_closed_from_evidence (W : WellOrderingTheoremPackage)
    (E : WellOrderingEvidence W) : WellOrderingClosed W := by
  exact E.everySetWellOrderableClosed

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse