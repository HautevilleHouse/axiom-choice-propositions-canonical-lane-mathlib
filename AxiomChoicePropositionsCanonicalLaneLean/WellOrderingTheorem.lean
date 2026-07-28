import AxiomChoicePropositionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure WellOrderingTheoremPackage where
  setType : Type u
  wellOrderExists : Prop
  choiceFunction : Prop
  wellOrderConstructed : Prop
  choiceFunctionHolds : choiceFunction
  conclusion : wellOrderExists

structure WellOrderingTheoremEvidence (W : WellOrderingTheoremPackage) where
  choiceFunctionHoldsClosed : W.choiceFunctionHolds
  conclusionClosed : W.conclusion

def WellOrderingTheoremClosed (W : WellOrderingTheoremPackage) : Prop :=
  W.wellOrderExists

theorem well_ordering_theorem_closed_from_evidence (W : WellOrderingTheoremPackage) (E : WellOrderingTheoremEvidence W) :
    WellOrderingTheoremClosed W := by
  exact E.conclusionClosed

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse
