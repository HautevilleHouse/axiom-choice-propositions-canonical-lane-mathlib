import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmittedObject where
  proposition : Prop
  proof : proposition

def axiomChoiceProjection : Projection AdmittedObject := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem axiom_choice_projection_idempotent (x : AdmittedObject) :
    axiomChoiceProjection.toFun (axiomChoiceProjection.toFun x) = axiomChoiceProjection.toFun x := by
  exact axiomChoiceProjection.idempotent x

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse