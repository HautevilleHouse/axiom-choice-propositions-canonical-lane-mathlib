import AxiomChoicePropositionsCanonicalLaneLean.AxiomChoiceGateLemmas

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

def ConstrainedAxiomChoiceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_axiom_choice_endgame (A : AdmissibleClass) :
    ConstrainedAxiomChoiceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse