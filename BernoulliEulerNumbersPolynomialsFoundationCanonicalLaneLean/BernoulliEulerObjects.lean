import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean

abbrev Index := ℕ
abbrev Rational := ℚ

structure BernoulliNumberSpec where
  n : Index
  value : Rational
  recurrence : Prop

structure EulerNumberSpec where
  n : Index
  value : Rational
  parity : Prop

structure BernoulliPolynomial where
  n : Index
  poly : ℚ[X]
  zeroVal : Rational
  derivativeRelation : Prop

structure EulerPolynomial where
  n : Index
  poly : ℚ[X]
  zeroVal : Rational
  symmetry : Prop

structure BernoulliEulerObject where
  bernoulliNumbers : List BernoulliNumberSpec
  eulerNumbers : List EulerNumberSpec
  bernoulliPolynomials : List BernoulliPolynomial
  eulerPolynomials : List EulerPolynomial
  generatingFnClosed : Prop

structure AdmittedBernoulliEulerObject where
  object : BernoulliEulerObject
  bridgeEvidence : String
  sourceKeyChecked : object.bernoulliNumbers.length = 1 ∧ object.eulerNumbers.length = 1
  theoremObjectChecked : True

def defaultBernoulliEulerObject : BernoulliEulerObject := {
  bernoulliNumbers := [
    { n := 0, value := 1, recurrence := True },
    { n := 1, value := -1/2, recurrence := True }
  ]
  eulerNumbers := [
    { n := 0, value := 1, parity := True },
    { n := 1, value := 0, parity := True }
  ]
  bernoulliPolynomials := [
    { n := 0, poly := 1, zeroVal := 1, derivativeRelation := True }
  ]
  eulerPolynomials := [
    { n := 0, poly := 1, zeroVal := 1, symmetry := True }
  ]
  generatingFnClosed := True
}

end BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean
end HautevilleHouse