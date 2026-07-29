import HautevilleHouse.BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean
end HautevilleHouse