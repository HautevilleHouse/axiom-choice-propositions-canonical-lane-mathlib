import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure ChoiceAdmittedObject where
  choiceSet : Type u
  axiomChoice : Prop
  witnessFunction : choiceSet → choiceSet
  conclusion : axiomChoice

structure AdmissibleClass where
  object : ChoiceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∧ A.remainderRecorded

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse