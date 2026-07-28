import AxiomChoicePropositionsCanonicalLaneLean.AxiomChoiceAdmissibleClass

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.gateWitness.elim (fun h => h) (fun h => h)

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse