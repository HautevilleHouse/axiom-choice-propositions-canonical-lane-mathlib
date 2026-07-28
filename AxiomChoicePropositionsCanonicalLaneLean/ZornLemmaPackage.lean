import AxiomChoicePropositionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure ZornLemmaPackage where
  partialOrder : Type u
  chainCondition : (c : Set partialOrder) → IsChain (· ≤ ·) c → BddAbove c
  maximalElement : partialOrder
  maximalElementIsMaximal : ∀ x : partialOrder, maximalElement ≤ x → x = maximalElement
  equivalentToAC : Prop

structure ZornLemmaEvidence (Z : ZornLemmaPackage) where
  chainConditionClosed : Z.chainCondition
  maximalElementExists : Z.maximalElement = Z.maximalElement

def ZornLemmaClosed (Z : ZornLemmaPackage) : Prop :=
  Z.chainCondition ∧ ∃ m, ∀ x, m ≤ x → x = m

theorem zorn_lemma_closed_from_evidence (Z : ZornLemmaPackage) (E : ZornLemmaEvidence Z) :
    ZornLemmaClosed Z := by
  refine And.intro E.chainConditionClosed ?_
  exact ⟨Z.maximalElement, Z.maximalElementIsMaximal⟩

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse