import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse