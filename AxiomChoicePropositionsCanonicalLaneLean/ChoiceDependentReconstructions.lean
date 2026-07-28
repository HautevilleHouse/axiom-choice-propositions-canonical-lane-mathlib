import AxiomChoicePropositionsCanonicalLaneLean.ChoicePrincipleTypes

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure ChoiceReconstructionPackage (C : ChoicePrinciplePackage) where
  reconstructionType : Type u
  axiomOfChoiceEmbedding : Prop
  dependencyGraph : Prop
  cylindricalAlgebras : Prop

structure ChoiceReconstructionEvidence {C : ChoicePrinciplePackage}
    (R : ChoiceReconstructionPackage C) where
  axiomOfChoiceEmbeddingClosed : R.axiomOfChoiceEmbedding
  dependencyGraphClosed : R.dependencyGraph
  cylindricalAlgebrasClosed : R.cylindricalAlgebras

def ChoiceReconstructionClosed {C : ChoicePrinciplePackage}
    (R : ChoiceReconstructionPackage C) : Prop :=
  R.axiomOfChoiceEmbedding ∧ R.dependencyGraph ∧ R.cylindricalAlgebras

theorem choice_reconstruction_closed_from_evidence
    {C : ChoicePrinciplePackage} (R : ChoiceReconstructionPackage C)
    (E : ChoiceReconstructionEvidence R) : ChoiceReconstructionClosed R := by
  exact And.intro E.axiomOfChoiceEmbeddingClosed
    (And.intro E.dependencyGraphClosed E.cylindricalAlgebrasClosed)

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse
