import AxiomChoicePropositionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChoiceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse
