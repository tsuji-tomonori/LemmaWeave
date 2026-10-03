import LemmaWeave.Problems.DNC2026M2BC.CubicDerivativeModel
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Analysis.Calculus.Deriv.Add
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.DNC2026CubicDerivativeIndividual

open LemmaWeave.Problems.DNC2026M2BC.CubicDerivative

theorem cubic_term_derivative (x : ℝ) :
    HasDerivAt (fun y : ℝ => (1 / 3 : ℝ) * y ^ 3) (x ^ 2) x := by
  convert! ((hasDerivAt_id' x).pow 3).const_mul (1 / 3 : ℝ) using 1 <;> norm_num <;> ring

theorem quadratic_term_derivative (x : ℝ) :
    HasDerivAt (fun y : ℝ => 2 * y ^ 2) (4 * x) x := by
  convert! ((hasDerivAt_id' x).pow 2).const_mul (2 : ℝ) using 1 <;> norm_num <;> ring

theorem linear_and_constant_derivative (k x : ℝ) :
    HasDerivAt (fun y : ℝ => 3 * y + k) 3 x := by
  convert! ((hasDerivAt_id' x).const_mul (3 : ℝ)).add_const k using 1 <;> norm_num <;> ring

theorem combine_derivatives (k x : ℝ) :
    HasDerivAt (cubic k) (cubicDerivative x) x := by
  have hc := cubic_term_derivative x
  have hq := quadratic_term_derivative x
  have hl := linear_and_constant_derivative k x
  have hfun : (fun y : ℝ => (1 / 3 : ℝ) * y ^ 3 - 2 * y ^ 2 + (3 * y + k)) = cubic k := by
    funext y
    unfold cubic
    ring
  have hsum := (hc.fun_sub hq).fun_add hl
  rw [hfun] at hsum
  exact hsum

theorem individual_solution : DerivativeGoal := by
  intro k x
  exact combine_derivatives k x

end LemmaWeave.Tests.DNC2026CubicDerivativeIndividual

#lw_dependencies LemmaWeave.Tests.DNC2026CubicDerivativeIndividual.individual_solution to "work/dnc2026-cubic-derivative-individual-graph.json"
