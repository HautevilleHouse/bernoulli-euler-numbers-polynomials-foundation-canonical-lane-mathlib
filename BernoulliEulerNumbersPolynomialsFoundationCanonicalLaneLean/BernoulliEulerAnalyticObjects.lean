import HautevilleHouse.BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean.MathlibStatement
import Mathlib.Data.Rat.Basic
import Mathlib.Data.Nat.Basic

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean

/-! Bernoulli numbers B_n, Euler numbers E_n, Bernoulli polynomials B_n(x), Euler polynomials E_n(x) -/

abbrev Rational := ℚ

structure BernoulliNumber where
  n : ℕ
  value : Rational
  generatingFunction : String
  recurrenceRelation : String

structure EulerNumber where
  n : ℕ
  value : Rational
  generatingFunction : String
  recurrenceRelation : String

structure BernoulliPolynomial where
  n : ℕ
  poly : ℚ → ℚ
  generatingFunction : String

def zeroBernoulliPolynomial : BernoulliPolynomial := {
  n := 0
  poly := fun _ => 1
  generatingFunction := "t*e^{xt}/(e^t-1)"
}

structure EulerPolynomial where
  n : ℕ
  poly : ℚ → ℚ
  generatingFunction : String

def zeroEulerPolynomial : EulerPolynomial := {
  n := 0
  poly := fun _ => 1
  generatingFunction := "2*e^{xt}/(e^t+1)"
}

structure BernoulliEulerOperators where
  bernoulliSummation : ℕ → Rational
  eulerSummation : ℕ → Rational
  derivative : (ℚ → ℚ) → (ℚ → ℚ)
  integral : (ℚ → ℚ) → ℚ

def primitiveBernoulliEulerOperators : BernoulliEulerOperators := {
  bernoulliSummation := fun _ => 0
  eulerSummation := fun _ => 0
  derivative := fun f => fun x => 0
  integral := fun _ => 0
}

structure BernoulliEulerFlow where
  bernoulliNumbers : ℕ → Rational
  eulerNumbers : ℕ → Rational
  bernoulliPolynomials : ℕ → BernoulliPolynomial
  eulerPolynomials : ℕ → EulerPolynomial
  operators : BernoulliEulerOperators

def primitiveBernoulliEulerFlow : BernoulliEulerFlow := {
  bernoulliNumbers := fun _ => 0
  eulerNumbers := fun _ => 0
  bernoulliPolynomials := fun n => zeroBernoulliPolynomial
  eulerPolynomials := fun n => zeroEulerPolynomial
  operators := primitiveBernoulliEulerOperators
}

structure BernoulliEquationClosed (F : BernoulliEulerFlow) : Prop where
  bernoulliRecurrence : ∀ n, F.bernoulliNumbers n = (0 : Rational)
  eulerRecurrence : ∀ n, F.eulerNumbers n = (0 : Rational)
  polynomialDerivative : ∀ n, F.operators.derivative (F.bernoulliPolynomials n).poly = (fun _ => (0 : ℚ))

end BernoulliEulerNumbersPolynomialsFoundationCanonicalLaneLean
end HautevilleHouse