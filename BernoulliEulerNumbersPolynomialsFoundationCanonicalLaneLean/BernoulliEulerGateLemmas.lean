import BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean.BernoulliEulerBridgeLemmas

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean
end HautevilleHouse