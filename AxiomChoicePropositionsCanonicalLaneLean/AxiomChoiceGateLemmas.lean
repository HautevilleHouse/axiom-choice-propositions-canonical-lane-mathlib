import AxiomChoicePropositionsCanonicalLaneLean.AxiomChoiceBridgeLemmas

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded ∨ A.endpointSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact Or.inr A.gateWitness.elim id id

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse