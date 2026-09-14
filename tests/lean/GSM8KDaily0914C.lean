import LemmaWeave.Problems.GSM8K.Daily0914CModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0914C
open LemmaWeave.Problems.GSM8K.Daily0914C

theorem books_albert (a b c d : ℕ) (x : CombinedBooks a b c d) : c = 36 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  exact hc
theorem books_total (a b c d : ℕ) (x : CombinedBooks a b c d) : d = 45 := by
  have hc0 := books_albert a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hc0] at hd
  exact hd
theorem books_solution : CombinedBooks 9 4 36 45 ∧
    (∀ a b c d, CombinedBooks a b c d → c = 36) ∧
    (∀ a b c d, CombinedBooks a b c d → d = 45) :=
  ⟨by norm_num [CombinedBooks], books_albert, books_total⟩

theorem runners_late_group (a b c d e f g h i : ℕ) (x : RunnerTimes a b c d e f g h i) : e = 3 ∧ f = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  omega
theorem runners_group_hours (a b c d e f g h i : ℕ) (x : RunnerTimes a b c d e f g h i) : g = 40 ∧ h = 30 := by
  have hef := runners_late_group a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  constructor
  · norm_num [hb, hc] at hg
    exact hg
  · norm_num [hef.1, hef.2] at hh
    exact hh
theorem runners_aggregate (a b c d e f g h i : ℕ) (x : RunnerTimes a b c d e f g h i) : i = 70 := by
  have hgh := runners_group_hours a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hgh.1, hgh.2] at hi
  exact hi
theorem runners_solution : RunnerTimes 8 5 8 2 3 10 40 30 70 ∧
    (∀ a b c d e f g h i, RunnerTimes a b c d e f g h i → e = 3 ∧ f = 10) ∧
    (∀ a b c d e f g h i, RunnerTimes a b c d e f g h i → g = 40 ∧ h = 30) ∧
    (∀ a b c d e f g h i, RunnerTimes a b c d e f g h i → i = 70) :=
  ⟨by norm_num [RunnerTimes], runners_late_group, runners_group_hours, runners_aggregate⟩

theorem ladders_individual (a b c d e f g h i j : ℕ) (x : LadderDistance a b c d e f g h i j) : c = 600 ∧ e = 26 ∧ g = 390 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  constructor
  · norm_num [ha, hb] at hc
    exact hc
  constructor
  · omega
  · have he0 : e = 26 := by omega
    norm_num [he0, hf] at hg
    exact hg
theorem ladders_total_feet (a b c d e f g h i j : ℕ) (x : LadderDistance a b c d e f g h i j) : h = 990 := by
  have hceg := ladders_individual a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hceg.1, hceg.2.2] at hh
  exact hh
theorem ladders_inches (a b c d e f g h i j : ℕ) (x : LadderDistance a b c d e f g h i j) : j = 11880 := by
  have hh0 := ladders_total_feet a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hh0, hi] at hj
  exact hj
theorem ladders_solution : LadderDistance 30 20 600 4 26 15 390 990 12 11880 ∧
    (∀ a b c d e f g h i j, LadderDistance a b c d e f g h i j → c = 600 ∧ e = 26 ∧ g = 390) ∧
    (∀ a b c d e f g h i j, LadderDistance a b c d e f g h i j → h = 990) ∧
    (∀ a b c d e f g h i j, LadderDistance a b c d e f g h i j → j = 11880) :=
  ⟨by norm_num [LadderDistance], ladders_individual, ladders_total_feet, ladders_inches⟩

theorem salary_raise (a b c d e f g : ℕ) (x : SalaryRedistribution a b c d e f g) : e = 15000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega
theorem salary_total_raise (a b c d e f g : ℕ) (x : SalaryRedistribution a b c d e f g) : f = 150000 := by
  have he0 := salary_raise a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hb, he0] at hf
  exact hf
theorem salary_new (a b c d e f g : ℕ) (x : SalaryRedistribution a b c d e f g) : g = 850000 := by
  have hf0 := salary_total_raise a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega
theorem salary_solution : SalaryRedistribution 1000000 10 20000 35000 15000 150000 850000 ∧
    (∀ a b c d e f g, SalaryRedistribution a b c d e f g → e = 15000) ∧
    (∀ a b c d e f g, SalaryRedistribution a b c d e f g → f = 150000) ∧
    (∀ a b c d e f g, SalaryRedistribution a b c d e f g → g = 850000) :=
  ⟨by norm_num [SalaryRedistribution], salary_raise, salary_total_raise, salary_new⟩

theorem stuffed_known (a b c d e f g : ℕ) (x : StuffedAnimalCost a b c d e f g) : e = 1400 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb, hc, hd] at he
  exact he
theorem stuffed_price (a b c d e f g : ℕ) (x : StuffedAnimalCost a b c d e f g) : g = 1100 := by
  have he0 := stuffed_known a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega
theorem stuffed_solution : StuffedAnimalCost 2 400 4 150 1400 2500 1100 ∧
    (∀ a b c d e f g, StuffedAnimalCost a b c d e f g → e = 1400) ∧
    (∀ a b c d e f g, StuffedAnimalCost a b c d e f g → g = 1100) :=
  ⟨by norm_num [StuffedAnimalCost], stuffed_known, stuffed_price⟩

theorem spending_parts (a b c d e f g h : ℕ) (x : DaySpending a b c d e f g h) : d = 7200 ∧ g = 2500 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  constructor
  · norm_num [hb, hc] at hd
    exact hd
  · norm_num [he, hf] at hg
    exact hg
theorem spending_total (a b c d e f g h : ℕ) (x : DaySpending a b c d e f g h) : h = 34700 := by
  have hdg := spending_parts a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hdg.1, hdg.2] at hh
  exact hh
theorem spending_solution : DaySpending 25000 3 2400 7200 20 125 2500 34700 ∧
    (∀ a b c d e f g h, DaySpending a b c d e f g h → d = 7200 ∧ g = 2500) ∧
    (∀ a b c d e f g h, DaySpending a b c d e f g h → h = 34700) :=
  ⟨by norm_num [DaySpending], spending_parts, spending_total⟩

theorem serving_patient_counts (a b c d e f g h : ℕ) (x : DinnerServing a b c d e f g h) : b = 4 ∧ c = 8 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega
theorem serving_special_time (a b c d e f g h : ℕ) (x : DinnerServing a b c d e f g h) : e = 6 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hd] at he
  omega
theorem serving_subtotals (a b c d e f g h : ℕ) (x : DinnerServing a b c d e f g h) : f = 40 ∧ g = 24 := by
  have hbc := serving_patient_counts a b c d e f g h x
  have he0 := serving_special_time a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  constructor
  · norm_num [hbc.2, hd] at hf
    exact hf
  · norm_num [hbc.1, he0] at hg
    exact hg
theorem serving_total (a b c d e f g h : ℕ) (x : DinnerServing a b c d e f g h) : h = 64 := by
  have hfg := serving_subtotals a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hfg.1, hfg.2] at hh
  exact hh
theorem serving_solution : DinnerServing 12 4 8 5 6 40 24 64 ∧
    (∀ a b c d e f g h, DinnerServing a b c d e f g h → b = 4 ∧ c = 8) ∧
    (∀ a b c d e f g h, DinnerServing a b c d e f g h → e = 6) ∧
    (∀ a b c d e f g h, DinnerServing a b c d e f g h → f = 40 ∧ g = 24) ∧
    (∀ a b c d e f g h, DinnerServing a b c d e f g h → h = 64) :=
  ⟨by norm_num [DinnerServing], serving_patient_counts, serving_special_time,
    serving_subtotals, serving_total⟩

theorem grill_remaining (a b c d e : ℕ) (x : GrillSessions a b c d e) : c = 75 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem grill_sessions (a b c d e : ℕ) (x : GrillSessions a b c d e) : e = 5 := by
  have hc0 := grill_remaining a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hc0, hd] at he
  omega
theorem grill_solution : GrillSessions 115 40 75 15 5 ∧
    (∀ a b c d e, GrillSessions a b c d e → c = 75) ∧
    (∀ a b c d e, GrillSessions a b c d e → e = 5) :=
  ⟨by norm_num [GrillSessions], grill_remaining, grill_sessions⟩

theorem pace_total (a b c d e : ℕ) (x : RacePace a b c d e) : d = 50 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hb, hc] at hd
  exact hd
theorem pace_average (a b c d e : ℕ) (x : RacePace a b c d e) : e = 5 := by
  have hd0 := pace_total a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hd0] at he
  omega
theorem pace_solution : RacePace 10 20 30 50 5 ∧
    (∀ a b c d e, RacePace a b c d e → d = 50) ∧
    (∀ a b c d e, RacePace a b c d e → e = 5) :=
  ⟨by norm_num [RacePace], pace_total, pace_average⟩

theorem tubs_large_total (a b c d e : ℕ) (x : StorageTubs a b c d e) : a * c = 18 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hc]
theorem tubs_small_price (a b c d e : ℕ) (x : StorageTubs a b c d e) : e = 5 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb, hc, hd] at he
  omega
theorem tubs_solution : StorageTubs 3 6 6 48 5 ∧
    (∀ a b c d e, StorageTubs a b c d e → a * c = 18) ∧
    (∀ a b c d e, StorageTubs a b c d e → e = 5) :=
  ⟨by norm_num [StorageTubs], tubs_large_total, tubs_small_price⟩

end LemmaWeave.Tests.GSM8KDaily0914C

#print axioms LemmaWeave.Tests.GSM8KDaily0914C.books_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914C.runners_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914C.ladders_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914C.salary_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914C.stuffed_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914C.spending_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914C.serving_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914C.grill_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914C.pace_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914C.tubs_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914C.books_solution to "work/gsm8k-daily37-books-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914C.runners_solution to "work/gsm8k-daily37-runners-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914C.ladders_solution to "work/gsm8k-daily37-ladders-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914C.salary_solution to "work/gsm8k-daily37-salary-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914C.stuffed_solution to "work/gsm8k-daily37-stuffed-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914C.spending_solution to "work/gsm8k-daily37-spending-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914C.serving_solution to "work/gsm8k-daily37-serving-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914C.grill_solution to "work/gsm8k-daily37-grill-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914C.pace_solution to "work/gsm8k-daily37-pace-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914C.tubs_solution to "work/gsm8k-daily37-tubs-graph.json"
