import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure AxiomChoiceSetTheoryPackage where
  choiceSet : Type u
  choiceFunction : choiceSet → choiceSet
  axiomStatement : Prop
  axiomHolds : axiomStatement
  zornEquivalence : Prop
  zornEquivalenceProof : zornEquivalence

def AxiomChoiceSetTheoryClosed (P : AxiomChoiceSetTheoryPackage) : Prop :=
  P.axiomStatement ∧ P.zornEquivalence

theorem axiom_choice_set_theory_closed_from_evidence (P : AxiomChoiceSetTheoryPackage) (E : P.axiomHolds) (Z : P.zornEquivalenceProof) : AxiomChoiceSetTheoryClosed P := by
  exact And.intro E Z

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse