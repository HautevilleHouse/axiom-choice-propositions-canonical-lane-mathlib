import AxiomChoicePropositionsCanonicalLaneLean.ChoiceDependentReconstructions

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure ChoiceContinuityPackage {C : ChoicePrinciplePackage}
    {R : ChoiceReconstructionPackage C} where
  continuityCondition : Prop
  consistencyWithZFC : Prop
  preservationUnderForcing : Prop

structure ChoiceContinuityEvidence {C : ChoicePrinciplePackage}
    {R : ChoiceReconstructionPackage C}
    (Cont : ChoiceContinuityPackage) where
  continuityConditionClosed : Cont.continuityCondition
  consistencyWithZFCClosed : Cont.consistencyWithZFC
  preservationUnderForcingClosed : Cont.preservationUnderForcing

def ChoiceContinuityClosed {C : ChoicePrinciplePackage}
    {R : ChoiceReconstructionPackage C}
    (Cont : ChoiceContinuityPackage) : Prop :=
  Cont.continuityCondition ∧ Cont.consistencyWithZFC ∧ Cont.preservationUnderForcing

theorem choice_continuity_closed_from_evidence
    {C : ChoicePrinciplePackage} {R : ChoiceReconstructionPackage C}
    (Cont : ChoiceContinuityPackage)
    (E : ChoiceContinuityEvidence Cont) : ChoiceContinuityClosed Cont := by
  exact And.intro E.continuityConditionClosed
    (And.intro E.consistencyWithZFCClosed E.preservationUnderForcingClosed)

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse
