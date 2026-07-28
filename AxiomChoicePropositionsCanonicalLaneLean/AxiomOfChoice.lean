import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure AxiomOfChoicePackage where
  choiceFunctionExists : Prop
  choiceSetNonempty : Prop
  choiceFunctionConsistent : Prop

structure AxiomOfChoiceEvidence (P : AxiomOfChoicePackage) where
  choiceFunctionExistsClosed : P.choiceFunctionExists
  choiceSetNonemptyClosed : P.choiceSetNonempty
  choiceFunctionConsistentClosed : P.choiceFunctionConsistent

def AxiomOfChoiceClosed (P : AxiomOfChoicePackage) : Prop :=
  P.choiceFunctionExists ∧ P.choiceSetNonempty ∧ P.choiceFunctionConsistent

theorem axiom_of_choice_closed_from_evidence (P : AxiomOfChoicePackage)
    (E : AxiomOfChoiceEvidence P) : AxiomOfChoiceClosed P := by
  exact And.intro E.choiceFunctionExistsClosed
    (And.intro E.choiceSetNonemptyClosed E.choiceFunctionConsistentClosed)

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse
