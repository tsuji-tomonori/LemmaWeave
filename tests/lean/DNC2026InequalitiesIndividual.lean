import LemmaWeave.Problems.DNC2026M1.Goals
import LemmaWeave.Audit.Extract
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

namespace LemmaWeave.Tests.DNC2026InequalitiesIndividual

open LemmaWeave.Problems.DNC2026M1

/-- `a = 2` を第1不等式へ代入して得られる下限。 -/
theorem lower_bound_from_first (x : ℝ) :
    x - Real.sqrt 6 * 2 + 1 ≥ 0 ↔ 2 * Real.sqrt 6 - 1 ≤ x := by
  constructor <;> intro h <;> nlinarith

/-- `a = 2` を第2不等式へ代入して得られる上限。 -/
theorem upper_bound_from_second (x : ℝ) :
    (2 - 1) * x - 2 * 2 ^ 2 - 2 + 3 ≤ 0 ↔ x ≤ 7 := by
  constructor <;> intro h <;> norm_num at h ⊢ <;> linarith

/-- 二つの不等式を同時に満たす実数全体は閉区間である。 -/
theorem interval_from_both (x : ℝ) :
    Inequalities 2 x ↔ 2 * Real.sqrt 6 - 1 ≤ x ∧ x ≤ 7 := by
  unfold Inequalities
  rw [lower_bound_from_first x, upper_bound_from_second x]

/-- 原題が求める全実数解を、三つの説明行から再構成する。 -/
theorem individual_solution : InequalitiesGoal := by
  intro x
  exact interval_from_both x

#print axioms individual_solution
#lw_dependencies LemmaWeave.Tests.DNC2026InequalitiesIndividual.individual_solution to
  "work/dnc2026-inequalities-individual-graph.json"

end LemmaWeave.Tests.DNC2026InequalitiesIndividual
