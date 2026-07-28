import AxiomChoicePropositionsCanonicalLaneLean.ChoiceCoherence

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure ChoiceCanonicalModelConstruction {C : ChoicePrinciplePackage}
    {R : ChoiceReconstructionPackage C}
    {Cont : ChoiceContinuityPackage}
    {M : ChoiceCoherencePackage} where
  modelSet : Type u
  choiceFunction : Type v
  truthDegree : Prop
  reflectionPrinciple : Prop
  choiceFunctionTerm : choiceFunction
  truthDegreeTerm : truthDegree
  reflectionPrincipleTerm : reflectionPrinciple
  modelFromCoherence :
    M.logicalCoherence → M.modelExistence → modelSet
  choiceFunctionFromCoherence :
    M.categoricalEmbedding → choiceFunction

def ChoiceCanonicalModelConstruction.toFoundationalInhabitants
    {C : ChoicePrinciplePackage} {R : ChoiceReconstructionPackage C}
    {Cont : ChoiceContinuityPackage} {M : ChoiceCoherencePackage}
    (Const : ChoiceCanonicalModelConstruction M) :
    ChoiceFoundationalInhabitants := by
  sorry -- Placeholder, need to fill

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse
