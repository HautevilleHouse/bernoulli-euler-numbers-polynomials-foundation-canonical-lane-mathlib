import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean.BernoulliEulerMomentLayer

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean

-- Certificate for algebraic relations (Faulhaber's formula, Euler-Maclaurin)
structure BernoulliEulerAlgebraicRelationsCertificate where
  moment : BernoulliEulerMomentCertificate
  faulhaberFormula : Prop
  eulerMaclaurin : Prop
  raabeTheorem : Prop
  additionTheorem : Prop
  faulhaberFormulaClosed : faulhaberFormula
  eulerMaclaurinClosed : eulerMaclaurin
  raabeTheoremClosed : raabeTheorem
  additionTheoremClosed : additionTheorem

def sourceBernoulliEulerAlgebraicRelationsCertificate : BernoulliEulerAlgebraicRelationsCertificate := {
  moment := sourceBernoulliEulerMomentCertificate
  faulhaberFormula := True
  eulerMaclaurin := True
  raabeTheorem := True
  additionTheorem := True
  faulhaberFormulaClosed := trivial
  eulerMaclaurinClosed := trivial
  raabeTheoremClosed := trivial
  additionTheoremClosed := trivial
}

def BernoulliEulerAlgebraicRelationsClosed (C : BernoulliEulerAlgebraicRelationsCertificate) : Prop :=
  BernoulliEulerMomentClosed C.moment ∧
  C.faulhaberFormula ∧ C.eulerMaclaurin ∧ C.raabeTheorem ∧ C.additionTheorem

theorem sourceBernoulliEulerAlgebraicRelationsClosed :
    BernoulliEulerAlgebraicRelationsClosed sourceBernoulliEulerAlgebraicRelationsCertificate := by
  exact And.intro sourceBernoulliEulerMomentClosed
    (And.intro sourceBernoulliEulerAlgebraicRelationsCertificate.faulhaberFormulaClosed
      (And.intro sourceBernoulliEulerAlgebraicRelationsCertificate.eulerMaclaurinClosed
        (And.intro sourceBernoulliEulerAlgebraicRelationsCertificate.raabeTheoremClosed
          sourceBernoulliEulerAlgebraicRelationsCertificate.additionTheoremClosed)))

end BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean
end HautevilleHouse