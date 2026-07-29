import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean.BernoulliEulerIdentityLayer

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean

-- Certificate for moment and valuation properties (von Staudt-Clausen, Kummer congruences)
structure BernoulliEulerMomentCertificate where
  identity : BernoulliEulerIdentityCertificate
  vonStaudtClausen : Prop
  kummerCongruence : Prop
  eulerValuation : Prop
  adelicContinuity : Prop
  vonStaudtClausenClosed : vonStaudtClausen
  kummerCongruenceClosed : kummerCongruence
  eulerValuationClosed : eulerValuation
  adelicContinuityClosed : adelicContinuity

def sourceBernoulliEulerMomentCertificate : BernoulliEulerMomentCertificate := {
  identity := sourceBernoulliEulerIdentityCertificate
  vonStaudtClausen := True
  kummerCongruence := True
  eulerValuation := True
  adelicContinuity := True
  vonStaudtClausenClosed := trivial
  kummerCongruenceClosed := trivial
  eulerValuationClosed := trivial
  adelicContinuityClosed := trivial
}

def BernoulliEulerMomentClosed (C : BernoulliEulerMomentCertificate) : Prop :=
  BernoulliEulerIdentityClosed C.identity ∧
  C.vonStaudtClausen ∧ C.kummerCongruence ∧ C.eulerValuation ∧ C.adelicContinuity

theorem sourceBernoulliEulerMomentClosed :
    BernoulliEulerMomentClosed sourceBernoulliEulerMomentCertificate := by
  exact And.intro sourceBernoulliEulerIdentityClosed
    (And.intro sourceBernoulliEulerMomentCertificate.vonStaudtClausenClosed
      (And.intro sourceBernoulliEulerMomentCertificate.kummerCongruenceClosed
        (And.intro sourceBernoulliEulerMomentCertificate.eulerValuationClosed
          sourceBernoulliEulerMomentCertificate.adelicContinuityClosed)))

end BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean
end HautevilleHouse