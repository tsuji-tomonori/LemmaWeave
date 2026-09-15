import LemmaWeave.Problems.GSM8K.Daily0910EModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0910E
open LemmaWeave.Problems.GSM8K.Daily0910E

theorem books_total (a b c d e : ℕ) (x : BookPages a b c d e) : c = 960 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  simp [ha, hb] at hc
  exact hc
theorem books_average (a b c d e : ℕ) (x : BookPages a b c d e) : e = 160 := by
  have hc := books_total a b c d e x
  rcases x with ⟨ha, hb, htotal, hd, he⟩
  simp [hc, hd] at he
  omega
theorem books_exists : BookPages 12 80 960 6 160 := by norm_num [BookPages]
theorem books_solution : BookPages 12 80 960 6 160 ∧
    (∀ a b c d e, BookPages a b c d e → c = 960) ∧
    (∀ a b c d e, BookPages a b c d e → e = 160) :=
  ⟨books_exists, books_total, books_average⟩

theorem plates_plus_ones (a b c d e f : ℕ) (x : PartyPlates a b c d e f) : c = 15 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  omega
theorem plates_attendees (a b c d e f : ℕ) (x : PartyPlates a b c d e f) : d = 45 := by
  have hc := plates_plus_ones a b c d e f x
  rcases x with ⟨ha, hb, hplus, hd, he, hf⟩
  omega
theorem plates_total (a b c d e f : ℕ) (x : PartyPlates a b c d e f) : f = 135 := by
  have hd := plates_attendees a b c d e f x
  rcases x with ⟨ha, hb, hc, hattendees, he, hf⟩
  simp [hd, he] at hf
  exact hf
theorem plates_exists : PartyPlates 30 15 15 45 3 135 := by norm_num [PartyPlates]
theorem plates_solution : PartyPlates 30 15 15 45 3 135 ∧
    (∀ a b c d e f, PartyPlates a b c d e f → c = 15) ∧
    (∀ a b c d e f, PartyPlates a b c d e f → d = 45) ∧
    (∀ a b c d e f, PartyPlates a b c d e f → f = 135) :=
  ⟨plates_exists, plates_plus_ones, plates_attendees, plates_total⟩

theorem lions_net (a b c d e f g : ℕ) (x : LionPopulation a b c d e f g) : c = 4 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega
theorem lions_increase (a b c d e f g : ℕ) (x : LionPopulation a b c d e f g) : e = 48 := by
  have hc := lions_net a b c d e f g x
  rcases x with ⟨ha, hb, hnet, hd, he, hf, hg⟩
  simp [hc, hd] at he
  exact he
theorem lions_initial (a b c d e f g : ℕ) (x : LionPopulation a b c d e f g) : g = 100 := by
  have he := lions_increase a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, hincrease, hf, hg⟩
  omega
theorem lions_exists : LionPopulation 5 1 4 12 48 148 100 := by norm_num [LionPopulation]
theorem lions_solution : LionPopulation 5 1 4 12 48 148 100 ∧
    (∀ a b c d e f g, LionPopulation a b c d e f g → c = 4) ∧
    (∀ a b c d e f g, LionPopulation a b c d e f g → e = 48) ∧
    (∀ a b c d e f g, LionPopulation a b c d e f g → g = 100) :=
  ⟨lions_exists, lions_net, lions_increase, lions_initial⟩

theorem volunteer_visits (a b c d e : ℕ) (x : VolunteerHours a b c d e) : c = 24 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  simp [ha, hb] at hc
  exact hc
theorem volunteer_total (a b c d e : ℕ) (x : VolunteerHours a b c d e) : e = 72 := by
  have hc := volunteer_visits a b c d e x
  rcases x with ⟨ha, hb, hvisit, hd, he⟩
  simp [hc, hd] at he
  exact he
theorem volunteer_exists : VolunteerHours 2 12 24 3 72 := by norm_num [VolunteerHours]
theorem volunteer_solution : VolunteerHours 2 12 24 3 72 ∧
    (∀ a b c d e, VolunteerHours a b c d e → c = 24) ∧
    (∀ a b c d e, VolunteerHours a b c d e → e = 72) :=
  ⟨volunteer_exists, volunteer_visits, volunteer_total⟩

theorem savings_months (a b c d e f g : ℕ) (x : VacationSavings a b c d e f g) : d = 24 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  simp [hb, hc] at hd
  exact hd
theorem savings_total (a b c d e f g : ℕ) (x : VacationSavings a b c d e f g) : e = 600 := by
  have hd := savings_months a b c d e f g x
  rcases x with ⟨ha, hb, hc, hmonths, he, hf, hg⟩
  simp [ha, hd] at he
  exact he
theorem savings_left (a b c d e f g : ℕ) (x : VacationSavings a b c d e f g) : g = 200 := by
  have he := savings_total a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, htotal, hf, hg⟩
  omega
theorem savings_exists : VacationSavings 25 12 2 24 600 400 200 := by norm_num [VacationSavings]
theorem savings_solution : VacationSavings 25 12 2 24 600 400 200 ∧
    (∀ a b c d e f g, VacationSavings a b c d e f g → d = 24) ∧
    (∀ a b c d e f g, VacationSavings a b c d e f g → e = 600) ∧
    (∀ a b c d e f g, VacationSavings a b c d e f g → g = 200) :=
  ⟨savings_exists, savings_months, savings_total, savings_left⟩

theorem girls_total (a b c d e : ℕ) (x : FieldTripGirls a b c d e) : c = 140 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  simp [ha, hb] at hc
  exact hc
theorem girls_count (a b c d e : ℕ) (x : FieldTripGirls a b c d e) : e = 80 := by
  have hc := girls_total a b c d e x
  rcases x with ⟨ha, hb, htotal, hd, he⟩
  omega
theorem girls_exists : FieldTripGirls 5 28 140 60 80 := by norm_num [FieldTripGirls]
theorem girls_solution : FieldTripGirls 5 28 140 60 80 ∧
    (∀ a b c d e, FieldTripGirls a b c d e → c = 140) ∧
    (∀ a b c d e, FieldTripGirls a b c d e → e = 80) :=
  ⟨girls_exists, girls_total, girls_count⟩

theorem cars_year1 (a b c d e f : ℕ) (x : ToyCars a b c d e f) : d = 24 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  simp [ha, hb, hc] at hd
  omega
theorem cars_year2 (a b c d e f : ℕ) (x : ToyCars a b c d e f) : e = 36 := by
  have hd := cars_year1 a b c d e f x
  rcases x with ⟨ha, hb, hc, hy1, he, hf⟩
  simp [hb, hc, hd] at he
  omega
theorem cars_year3 (a b c d e f : ℕ) (x : ToyCars a b c d e f) : f = 54 := by
  have he := cars_year2 a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, hy2, hf⟩
  simp [hb, hc, he] at hf
  omega
theorem cars_exists : ToyCars 16 100 150 24 36 54 := by norm_num [ToyCars]
theorem cars_solution : ToyCars 16 100 150 24 36 54 ∧
    (∀ a b c d e f, ToyCars a b c d e f → d = 24) ∧
    (∀ a b c d e f, ToyCars a b c d e f → e = 36) ∧
    (∀ a b c d e f, ToyCars a b c d e f → f = 54) :=
  ⟨cars_exists, cars_year1, cars_year2, cars_year3⟩

theorem expenses_rent (a b c d e f g h i j k l m n : ℕ)
    (x : AnnualExpenseIncrease a b c d e f g h i j k l m n) : d = 300 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn⟩
  simp [ha, hb, hc] at hd
  omega
theorem expenses_food (a b c d e f g h i j k l m n : ℕ)
    (x : AnnualExpenseIncrease a b c d e f g h i j k l m n) : g = 100 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn⟩
  simp [hc, he, hf] at hg
  omega
theorem expenses_new_insurance (a b c d e f g h i j k l m n : ℕ)
    (x : AnnualExpenseIncrease a b c d e f g h i j k l m n) : j = 300 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn⟩
  simp [hh, hi] at hj
  exact hj
theorem expenses_insurance (a b c d e f g h i j k l m n : ℕ)
    (x : AnnualExpenseIncrease a b c d e f g h i j k l m n) : k = 200 := by
  have hj := expenses_new_insurance a b c d e f g h i j k l m n x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hnew, hk, hl, hm, hn⟩
  omega
theorem expenses_monthly (a b c d e f g h i j k l m n : ℕ)
    (x : AnnualExpenseIncrease a b c d e f g h i j k l m n) : l = 600 := by
  have hd := expenses_rent a b c d e f g h i j k l m n x
  have hg := expenses_food a b c d e f g h i j k l m n x
  have hk := expenses_insurance a b c d e f g h i j k l m n x
  rcases x with ⟨ha, hb, hc, hrent, he, hf, hfood, hh, hi, hj, hins, hl, hm, hn⟩
  omega
theorem expenses_annual (a b c d e f g h i j k l m n : ℕ)
    (x : AnnualExpenseIncrease a b c d e f g h i j k l m n) : n = 7200 := by
  have hl := expenses_monthly a b c d e f g h i j k l m n x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hmonthly, hm, hn⟩
  simp [hl, hm] at hn
  exact hn
theorem expenses_exists :
    AnnualExpenseIncrease 1000 30 100 300 200 50 100 100 3 300 200 600 12 7200 := by
  norm_num [AnnualExpenseIncrease]
theorem expenses_solution :
    AnnualExpenseIncrease 1000 30 100 300 200 50 100 100 3 300 200 600 12 7200 ∧
    (∀ a b c d e f g h i j k l m n, AnnualExpenseIncrease a b c d e f g h i j k l m n → d = 300) ∧
    (∀ a b c d e f g h i j k l m n, AnnualExpenseIncrease a b c d e f g h i j k l m n → g = 100) ∧
    (∀ a b c d e f g h i j k l m n, AnnualExpenseIncrease a b c d e f g h i j k l m n → j = 300) ∧
    (∀ a b c d e f g h i j k l m n, AnnualExpenseIncrease a b c d e f g h i j k l m n → k = 200) ∧
    (∀ a b c d e f g h i j k l m n, AnnualExpenseIncrease a b c d e f g h i j k l m n → l = 600) ∧
    (∀ a b c d e f g h i j k l m n, AnnualExpenseIncrease a b c d e f g h i j k l m n → n = 7200) :=
  ⟨expenses_exists, expenses_rent, expenses_food, expenses_new_insurance,
    expenses_insurance, expenses_monthly, expenses_annual⟩

theorem piano_years (a b c d e f g h i j k : ℕ) (x : PianoPractice a b c d e f g h i j k) : c = 8 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  omega
theorem piano_annual (a b c d e f g h i j k : ℕ) (x : PianoPractice a b c d e f g h i j k) : e = 1250 := by
  have hc := piano_years a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hy, hd, he, hf, hg, hh, hi, hj, hk⟩
  simp [hc, hd] at he
  omega
theorem piano_weeks (a b c d e f g h i j k : ℕ) (x : PianoPractice a b c d e f g h i j k) : h = 50 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  omega
theorem piano_days (a b c d e f g h i j k : ℕ) (x : PianoPractice a b c d e f g h i j k) : j = 250 := by
  have hh := piano_weeks a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hweeks, hi, hj, hk⟩
  simp [hh, hi] at hj
  exact hj
theorem piano_daily (a b c d e f g h i j k : ℕ) (x : PianoPractice a b c d e f g h i j k) : k = 5 := by
  have he := piano_annual a b c d e f g h i j k x
  have hj := piano_days a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, hannual, hf, hg, hh, hi, hdays, hk⟩
  simp [he, hj] at hk
  omega
theorem piano_exists : PianoPractice 12 20 8 10000 1250 52 2 50 5 250 5 := by
  norm_num [PianoPractice]
theorem piano_solution : PianoPractice 12 20 8 10000 1250 52 2 50 5 250 5 ∧
    (∀ a b c d e f g h i j k, PianoPractice a b c d e f g h i j k → c = 8) ∧
    (∀ a b c d e f g h i j k, PianoPractice a b c d e f g h i j k → e = 1250) ∧
    (∀ a b c d e f g h i j k, PianoPractice a b c d e f g h i j k → h = 50) ∧
    (∀ a b c d e f g h i j k, PianoPractice a b c d e f g h i j k → j = 250) ∧
    (∀ a b c d e f g h i j k, PianoPractice a b c d e f g h i j k → k = 5) :=
  ⟨piano_exists, piano_years, piano_annual, piano_weeks, piano_days, piano_daily⟩

theorem tomatoes_ted_morning (a b c d e f g h i : ℕ) (x : TomatoSeeds a b c d e f g h i) : c = 100 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  simp [ha, hb] at hc
  exact hc
theorem tomatoes_morning (a b c d e f g h i : ℕ) (x : TomatoSeeds a b c d e f g h i) : d = 150 := by
  have hc := tomatoes_ted_morning a b c d e f g h i x
  rcases x with ⟨ha, hb, hted, hd, he, hf, hg, hh, hi⟩
  omega
theorem tomatoes_ted_afternoon (a b c d e f g h i : ℕ) (x : TomatoSeeds a b c d e f g h i) : g = 40 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  omega
theorem tomatoes_afternoon (a b c d e f g h i : ℕ) (x : TomatoSeeds a b c d e f g h i) : h = 100 := by
  have hg := tomatoes_ted_afternoon a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hted, hh, hi⟩
  omega
theorem tomatoes_total (a b c d e f g h i : ℕ) (x : TomatoSeeds a b c d e f g h i) : i = 250 := by
  have hd := tomatoes_morning a b c d e f g h i x
  have hh := tomatoes_afternoon a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hmorning, he, hf, hg, hafternoon, hi⟩
  omega
theorem tomatoes_exists : TomatoSeeds 50 2 100 150 60 20 40 100 250 := by norm_num [TomatoSeeds]
theorem tomatoes_solution : TomatoSeeds 50 2 100 150 60 20 40 100 250 ∧
    (∀ a b c d e f g h i, TomatoSeeds a b c d e f g h i → c = 100) ∧
    (∀ a b c d e f g h i, TomatoSeeds a b c d e f g h i → d = 150) ∧
    (∀ a b c d e f g h i, TomatoSeeds a b c d e f g h i → g = 40) ∧
    (∀ a b c d e f g h i, TomatoSeeds a b c d e f g h i → h = 100) ∧
    (∀ a b c d e f g h i, TomatoSeeds a b c d e f g h i → i = 250) :=
  ⟨tomatoes_exists, tomatoes_ted_morning, tomatoes_morning,
    tomatoes_ted_afternoon, tomatoes_afternoon, tomatoes_total⟩

end LemmaWeave.Tests.GSM8KDaily0910E

#print axioms LemmaWeave.Tests.GSM8KDaily0910E.books_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910E.plates_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910E.lions_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910E.volunteer_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910E.savings_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910E.girls_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910E.cars_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910E.expenses_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910E.piano_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910E.tomatoes_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910E.books_solution to "work/gsm8k-daily21-books-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910E.plates_solution to "work/gsm8k-daily21-plates-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910E.lions_solution to "work/gsm8k-daily21-lions-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910E.volunteer_solution to "work/gsm8k-daily21-volunteer-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910E.savings_solution to "work/gsm8k-daily21-savings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910E.girls_solution to "work/gsm8k-daily21-girls-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910E.cars_solution to "work/gsm8k-daily21-cars-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910E.expenses_solution to "work/gsm8k-daily21-expenses-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910E.piano_solution to "work/gsm8k-daily21-piano-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910E.tomatoes_solution to "work/gsm8k-daily21-tomatoes-graph.json"
