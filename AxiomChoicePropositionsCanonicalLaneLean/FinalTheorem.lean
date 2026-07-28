import canonicalLaneMathlib.AdmissibleClass
import AxiomChoicePropositionsCanonicalLaneLean.AxiomOfChoice
import AxiomChoicePropositionsCanonicalLaneLean.ZornsLemma

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

def ConstrainedChoiceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_choice_endgame (A : AdmissibleClass) :
    ConstrainedChoiceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse
