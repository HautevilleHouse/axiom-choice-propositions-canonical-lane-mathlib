import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure AxiomChoiceFoundation where
  zornLemmaPackage : PrimitiveZornLemmaPackage
  zornLemmaEvidence : PrimitiveZornLemmaClosed zornLemmaPackage
  choiceFunctionPackage : PrimitiveChoiceFunctionPackage
  choiceFunctionEvidence : choiceFunctionPackage.choiceFunctionTerm
  wellOrderingTheorem : Prop
  wellOrderingEvidence : wellOrderingTheorem
  transfiniteRecursionTheorem : Prop
  transfiniteRecursionEvidence : transfiniteRecursionTheorem

def AxiomChoiceFoundationClosed (A : AxiomChoiceFoundation) : Prop :=
  PrimitiveZornLemmaClosed A.zornLemmaPackage ∧
  A.choiceFunctionPackage.choiceFunctionTerm ∧
  A.wellOrderingTheorem ∧
  A.transfiniteRecursionTheorem

theorem axiom_choice_foundation_closed_from_evidence (A : AxiomChoiceFoundation) :
    AxiomChoiceFoundationClosed A := by
  exact And.intro A.zornLemmaEvidence
    (And.intro A.choiceFunctionEvidence
      (And.intro A.wellOrderingEvidence A.transfiniteRecursionEvidence))

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse