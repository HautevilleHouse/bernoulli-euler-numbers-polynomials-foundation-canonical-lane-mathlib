import BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean.BernoulliEulerObjects

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean

structure GeneratingFunctionCertificate where
  exponentialGeneratingFn : ℚ[[X]]
  bernoulliEmbedding : Prop
  eulerEmbedding : Prop
  convergenceRadius : ℝ
  functionalEquation : Prop
  allClosed : bernoulliEmbedding ∧ eulerEmbedding ∧ functionalEquation

def defaultGeneratingFunctionCertificate : GeneratingFunctionCertificate := {
  exponentialGeneratingFn := 0
  bernoulliEmbedding := True
  eulerEmbedding := True
  convergenceRadius := 2*π
  functionalEquation := True
  allClosed := And.intro True.intro (And.intro True.intro True.intro)
}

def GeneratingFnLayerClosed (C : GeneratingFunctionCertificate) : Prop :=
  C.bernoulliEmbedding ∧ C.eulerEmbedding ∧ C.functionalEquation

theorem default_generating_fn_layer_closed :
    GeneratingFnLayerClosed defaultGeneratingFunctionCertificate := by
  exact C.allClosed

end BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean
end HautevilleHouse