import BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean.BernoulliEulerAdmissibleClass

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean

def NativeBridgeClosed (O : BernoulliEulerObjects) : Prop :=
  O.bernoulliRecursion 0 = rfl ∧ O.eulerRecursion 0 = rfl

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  by
    unfold bridgeClosed NativeBridgeClosed
    exact And.intro A.object.bernoulliRecursion 0 A.object.eulerRecursion 0

end BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean
end HautevilleHouse