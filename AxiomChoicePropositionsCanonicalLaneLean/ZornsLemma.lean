import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure ZornsLemmaPackage where
  chainHasUpperBound : Prop
  maximalElementExists : Prop
  inductiveSet : Prop

structure ZornsLemmaEvidence (Z : ZornsLemmaPackage) where
  chainHasUpperBoundClosed : Z.chainHasUpperBound
  maximalElementExistsClosed : Z.maximalElementExists
  inductiveSetClosed : Z.inductiveSet

def ZornsLemmaClosed (Z : ZornsLemmaPackage) : Prop :=
  Z.chainHasUpperBound ∧ Z.maximalElementExists ∧ Z.inductiveSet

theorem zorns_lemma_closed_from_evidence (Z : ZornsLemmaPackage)
    (E : ZornsLemmaEvidence Z) : ZornsLemmaClosed Z := by
  exact And.intro E.chainHasUpperBoundClosed
    (And.intro E.maximalElementExistsClosed E.inductiveSetClosed)

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse
