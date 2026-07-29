import BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean.BernoulliEulerAnalyticLayer

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedBernoulliEulerObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.object.generatingFnClosed

def gateClosed (A : AdmissibleClass) : Prop :=
  GeneratingFnLayerClosed defaultGeneratingFunctionCertificate

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.object.generatingFnClosed

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact default_generating_fn_layer_closed

theorem constrained_theorem_closure (A : AdmissibleClass) : ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean
end HautevilleHouse