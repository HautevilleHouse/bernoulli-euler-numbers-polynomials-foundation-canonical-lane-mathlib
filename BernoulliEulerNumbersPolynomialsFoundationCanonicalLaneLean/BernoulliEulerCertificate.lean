import BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean.BernoulliEulerFinalTheorem

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean

structure BernoulliEulerCertificate where
  objects : BernoulliEulerObjects
  admissible : AdmissibleClass
  bridgeClosedProof : bridgeClosed admissible
  gateClosedProof : gateClosed admissible
  closureProof : ConstrainedBernoulliEulerClosure admissible

def defaultBernoulliEulerCertificate : BernoulliEulerCertificate :=
  let defaultObjects : BernoulliEulerObjects := defaultBernoulliEulerObjects
  let admissible : AdmissibleClass :=
    { object := defaultObjects
    , endpointSatisfied := True
    , remainderRecorded := False
    , gateWitness := Or.inl trivial
    }
  { objects := defaultObjects
  , admissible := admissible
  , bridgeClosedProof := bridge_from_admissible_class admissible
  , gateClosedProof := gate_from_admissible_class admissible
  , closureProof := constrained_bernoulli_euler_closure admissible
  }

theorem bernoulli_euler_certificate_closed :
    ConstrainedBernoulliEulerClosure (defaultBernoulliEulerCertificate.admissible) :=
  defaultBernoulliEulerCertificate.closureProof

end BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean
end HautevilleHouse