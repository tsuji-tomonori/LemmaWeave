import LemmaWeave.Problems.GSM8K.Sprint0919A08Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A08
open LemmaWeave.Problems.GSM8K.Sprint0919A08

theorem budget_house (a b c d e : Nat) (x : MonthlyBudget a b c d e) : a = 150 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hc] at ha hb
  omega

theorem budget_food (a b c d e : Nat) (x : MonthlyBudget a b c d e) : b = 90 := by
  have ha := budget_house a b c d e x
  rcases x with ⟨hx, hb, hc, hd, he⟩
  norm_num [ha, hc] at hb
  omega

theorem budget_phone (a b c d e : Nat) (x : MonthlyBudget a b c d e) : d = 9 := by
  have hb := budget_food a b c d e x
  rcases x with ⟨ha, hx, hc, hd, he⟩
  norm_num [hb] at hd
  omega

theorem budget_total (a b c d e : Nat) (x : MonthlyBudget a b c d e) : e = 249 := by
  have hd := budget_phone a b c d e x
  rcases x with ⟨ha, hb, hc, hx, he⟩
  norm_num [hc, hd] at he
  exact he

theorem budget_solution :
    MonthlyBudget 150 90 240 9 249 ∧ 150 = 150 ∧ 90 = 90 ∧ 9 = 9 ∧ 249 = 249 := by
  have x : MonthlyBudget 150 90 240 9 249 := by norm_num [MonthlyBudget]
  exact ⟨x, budget_house _ _ _ _ _ x, budget_food _ _ _ _ _ x,
    budget_phone _ _ _ _ _ x, budget_total _ _ _ _ _ x⟩

theorem erasers_count (a b c d e f : Nat) (x : EraserRevenue a b c d e f) : c = 1152 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  exact hc

theorem erasers_revenue_cents (a b c d e f : Nat)
    (x : EraserRevenue a b c d e f) : e = 86400 := by
  have hc := erasers_count a b c d e f x
  rcases x with ⟨ha, hb, hx, hd, he, hf⟩
  norm_num [hc, hd] at he
  exact he

theorem erasers_revenue_dollars (a b c d e f : Nat)
    (x : EraserRevenue a b c d e f) : f = 864 := by
  have he := erasers_revenue_cents a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, hx, hf⟩
  norm_num [he] at hf
  omega

theorem erasers_solution :
    EraserRevenue 48 24 1152 75 86400 864 ∧ 1152 = 1152 ∧ 86400 = 86400 ∧ 864 = 864 := by
  have x : EraserRevenue 48 24 1152 75 86400 864 := by norm_num [EraserRevenue]
  exact ⟨x, erasers_count _ _ _ _ _ _ x, erasers_revenue_cents _ _ _ _ _ _ x,
    erasers_revenue_dollars _ _ _ _ _ _ x⟩

theorem family_daughter (a b c d : Nat) (x : FamilyAges a b c d) : c = 36 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  omega

theorem family_granddaughter (a b c d : Nat) (x : FamilyAges a b c d) : d = 12 := by
  have hc := family_daughter a b c d x
  rcases x with ⟨ha, hb, hx, hd⟩
  norm_num [hc] at hd
  omega

theorem family_solution : FamilyAges 60 60 36 12 ∧ 36 = 36 ∧ 12 = 12 := by
  have x : FamilyAges 60 60 36 12 := by norm_num [FamilyAges]
  exact ⟨x, family_daughter _ _ _ _ x, family_granddaughter _ _ _ _ x⟩

theorem dog_mom (a b c d e f g h i j : Nat)
    (x : FosterDogFood a b c d e f g h i j) : d = 54 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [ha, hb, hc] at hd
  exact hd

theorem dog_puppies (a b c d e f g h i j : Nat)
    (x : FosterDogFood a b c d e f g h i j) : h = 60 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hc, he, hf, hg] at hh
  exact hh

theorem dog_total_cups (a b c d e f g h i j : Nat)
    (x : FosterDogFood a b c d e f g h i j) : j = 57 := by
  have hd := dog_mom a b c d e f g h i j x
  have hh := dog_puppies a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hx, he, hf, hg, hy, hi, hj⟩
  norm_num [hd, hh] at hi
  norm_num [hi] at hj
  omega

theorem dog_solution :
    FosterDogFood 3 3 6 54 1 2 5 60 114 57 ∧ 54 = 54 ∧ 60 = 60 ∧ 57 = 57 := by
  have x : FosterDogFood 3 3 6 54 1 2 5 60 114 57 := by norm_num [FosterDogFood]
  exact ⟨x, dog_mom _ _ _ _ _ _ _ _ _ _ x, dog_puppies _ _ _ _ _ _ _ _ _ _ x,
    dog_total_cups _ _ _ _ _ _ _ _ _ _ x⟩

theorem coaster_capacity (a b c d e : Nat) (x : CoasterRuns a b c d e) : d = 14 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hb, hc] at hd
  exact hd

theorem coaster_runs (a b c d e : Nat) (x : CoasterRuns a b c d e) : e = 6 := by
  have hd := coaster_capacity a b c d e x
  rcases x with ⟨ha, hb, hc, hx, he⟩
  norm_num [ha, hd] at he
  omega

theorem coaster_solution : CoasterRuns 84 7 2 14 6 ∧ 14 = 14 ∧ 6 = 6 := by
  have x : CoasterRuns 84 7 2 14 6 := by norm_num [CoasterRuns]
  exact ⟨x, coaster_capacity _ _ _ _ _ x, coaster_runs _ _ _ _ _ x⟩

#print axioms budget_solution
#print axioms erasers_solution
#print axioms family_solution
#print axioms dog_solution
#print axioms coaster_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A08.budget_solution to "work/gsm8k-sprint08-budget-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A08.erasers_solution to "work/gsm8k-sprint08-erasers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A08.family_solution to "work/gsm8k-sprint08-family-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A08.dog_solution to "work/gsm8k-sprint08-dog-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A08.coaster_solution to "work/gsm8k-sprint08-coaster-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A08
