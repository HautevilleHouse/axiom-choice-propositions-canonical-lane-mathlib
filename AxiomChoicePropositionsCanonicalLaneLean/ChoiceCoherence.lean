import AxiomChoicePropositionsCanonicalLaneLean.ChoiceContinuityAndConsistency

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure ChoiceCoherencePackage {C : ChoicePrinciplePackage}
    {R : ChoiceReconstructionPackage C}
    {Cont : ChoiceContinuityPackage} where
  logicalCoherence : Prop
  modelExistence : Prop
  categoricalEmbedding : Prop

structure ChoiceCoherenceEvidence {C : ChoicePrinciplePackage}
    {R : ChoiceReconstructionPackage C}
    {Cont : ChoiceContinuityPackage}
    (M : ChoiceCoherencePackage) where
  logicalCoherenceClosed : M.logicalCoherence
  modelExistenceClosed : M.modelExistence
  categoricalEmbeddingClosed : M.categoricalEmbedding

def ChoiceCoherenceClosed {C : ChoicePrinciplePackage}
    {R : ChoiceReconstructionPackage C}
    {Cont : ChoiceContinuityPackage}
    (M : ChoiceCoherencePackage) : Prop :=
  M.logicalCoherence ∧ M.modelExistence ∧ M.categoricalEmbedding

theorem choice_coherence_closed_from_evidence
    {C : ChoicePrinciplePackage} {R : ChoiceReconstructionPackage C}
    {Cont : ChoiceContinuityPackage} (M : ChoiceCoherencePackage)
    (E : ChoiceCoherenceEvidence M) : ChoiceCoherenceClosed M := by
  exact And.intro E.logicalCoherenceClosed
    (And.intro E.modelExistenceClosed E.categoricalEmbeddingClosed)

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse
