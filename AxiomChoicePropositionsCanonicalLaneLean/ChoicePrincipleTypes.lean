namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure ChoicePrinciplePackage where
  principle : Type u
  formulation : Prop
  consistent : Prop
  independent : Prop
  relativeStrength : Prop

structure ChoicePrincipleEvidence (C : ChoicePrinciplePackage) where
  formulationClosed : C.formulation
  consistentClosed : C.consistent
  independentClosed : C.independent
  relativeStrengthClosed : C.relativeStrength

def ChoicePrincipleClosed (C : ChoicePrinciplePackage) : Prop :=
  C.formulation ∧ C.consistent ∧ C.independent ∧ C.relativeStrength

theorem choice_principle_closed_from_evidence (C : ChoicePrinciplePackage)
    (E : ChoicePrincipleEvidence C) : ChoicePrincipleClosed C := by
  exact And.intro E.formulationClosed
    (And.intro E.consistentClosed
      (And.intro E.independentClosed E.relativeStrengthClosed))

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse
