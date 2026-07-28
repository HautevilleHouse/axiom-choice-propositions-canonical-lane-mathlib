import AxiomChoicePropositionsCanonicalLaneLean.AxiomChoiceAdmissibleClass

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure UltrafilterPackage where
  booleanAlgebra : Type u
  ideal : Set (booleanAlgebra)
  primeIdealExists : Prop
  ultrafilterExists : Prop

structure UltrafilterEvidence (U : UltrafilterPackage) where
  primeIdealExistsClosed : U.primeIdealExists
  ultrafilterExistsClosed : U.ultrafilterExists

def UltrafilterClosed (U : UltrafilterPackage) : Prop :=
  U.primeIdealExists ∧ U.ultrafilterExists

theorem ultrafilter_closed_from_evidence (U : UltrafilterPackage)
    (E : UltrafilterEvidence U) : UltrafilterClosed U := by
  exact And.intro E.primeIdealExistsClosed E.ultrafilterExistsClosed

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse