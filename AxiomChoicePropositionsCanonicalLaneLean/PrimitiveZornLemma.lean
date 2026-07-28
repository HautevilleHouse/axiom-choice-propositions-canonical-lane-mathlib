import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure PrimitiveZornLemmaPackage where
  partialOrder : Type u → Prop
  chainCondition : (α : Type u) → (partialOrder α) → Prop
  upperBoundProperty : (α : Type u) → (partialOrder α) → (chain : Set α) → (upperBound : α) → Prop
  maximalElementExists : Prop
  zornStatement : Prop
  zornImpliesChoice : Prop
  maximalElementExistsTerm : maximalElementExists
  zornStatementTerm : zornStatement
  zornImpliesChoiceTerm : zornImpliesChoice

data PrimitiveZornConstruction (α : Type u) where
  | chain : Set α → PrimitiveZornConstruction α
  | upperBound : α → PrimitiveZornConstruction α
  | maximal : α → PrimitiveZornConstruction α

structure PrimitiveChoiceFunctionPackage where
  familyOfSets : Type u → Type v
  choiceFunction : (α : Type u) → (family : familyOfSets α) → (s : familyOfSets α) → α
  choiceFunctionProperty : (α : Type u) → (family : familyOfSets α) → 
    ∀ (s : familyOfSets α), choiceFunction α family s ∈ s
  choiceFunctionTerm : choiceFunctionProperty

def PrimitiveZornLemmaClosed (P : PrimitiveZornLemmaPackage) : Prop :=
  P.zornStatement ∧ P.maximalElementExists ∧ P.zornImpliesChoice

theorem primitive_zorn_lemma_closed_from_evidence (P : PrimitiveZornLemmaPackage) (E : P.maximalElementExists) (H : P.zornStatementTerm) (I : P.zornImpliesChoiceTerm) : PrimitiveZornLemmaClosed P := by
  exact And.intro H (And.intro E I)

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse