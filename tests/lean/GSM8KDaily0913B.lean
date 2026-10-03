import LemmaWeave.Problems.GSM8K.Daily0913BModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0913B
open LemmaWeave.Problems.GSM8K.Daily0913B

theorem cleaning_rooms (a b c d e f g : ℕ) (x : CleaningPay a b c d e f g) : c = 40 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc
theorem cleaning_hours (a b c d e f g : ℕ) (x : CleaningPay a b c d e f g) : e = 240 := by
  have hc0 := cleaning_rooms a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hc0, hd] at he
  exact he
theorem cleaning_pay (a b c d e f g : ℕ) (x : CleaningPay a b c d e f g) : g = 3600 := by
  have he0 := cleaning_hours a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [he0, hf] at hg
  exact hg
theorem cleaning_solution : CleaningPay 4 10 40 6 240 15 3600 ∧
    (∀ a b c d e f g, CleaningPay a b c d e f g → c = 40) ∧
    (∀ a b c d e f g, CleaningPay a b c d e f g → e = 240) ∧
    (∀ a b c d e f g, CleaningPay a b c d e f g → g = 3600) :=
  ⟨by norm_num [CleaningPay], cleaning_rooms, cleaning_hours, cleaning_pay⟩

theorem questions_second (a b c d : ℕ) (x : QuestionProduction a b c d) : b = 26 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha] at hb
  exact hb
theorem questions_third (a b c d : ℕ) (x : QuestionProduction a b c d) : c = 52 := by
  have hb0 := questions_second a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [hb0] at hc
  exact hc
theorem questions_total (a b c d : ℕ) (x : QuestionProduction a b c d) : d = 91 := by
  have hb0 := questions_second a b c d x
  have hc0 := questions_third a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb0, hc0] at hd
  exact hd
theorem questions_solution : QuestionProduction 13 26 52 91 ∧
    (∀ a b c d, QuestionProduction a b c d → b = 26) ∧
    (∀ a b c d, QuestionProduction a b c d → c = 52) ∧
    (∀ a b c d, QuestionProduction a b c d → d = 91) :=
  ⟨by norm_num [QuestionProduction], questions_second, questions_third, questions_total⟩

theorem books_spent (a b c d e : ℕ) (x : BookAverage a b c d e) : c = 222 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem books_average (a b c d e : ℕ) (x : BookAverage a b c d e) : e = 37 := by
  have hc0 := books_spent a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hc0, hd] at he
  omega
theorem books_solution : BookAverage 236 14 222 6 37 ∧
    (∀ a b c d e, BookAverage a b c d e → c = 222) ∧
    (∀ a b c d e, BookAverage a b c d e → e = 37) :=
  ⟨by norm_num [BookAverage], books_spent, books_average⟩

theorem minks_babies (a b c d e f g h : ℕ) (x : MinkCoats a b c d e f g h) : c = 180 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  exact hc
theorem minks_total (a b c d e f g h : ℕ) (x : MinkCoats a b c d e f g h) : d = 210 := by
  have hc0 := minks_babies a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hc0] at hd
  exact hd
theorem minks_remaining (a b c d e f g h : ℕ) (x : MinkCoats a b c d e f g h) : f = 105 := by
  have hd0 := minks_total a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega
theorem minks_coats (a b c d e f g h : ℕ) (x : MinkCoats a b c d e f g h) : h = 7 := by
  have hf0 := minks_remaining a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hf0, hg] at hh
  omega
theorem minks_solution : MinkCoats 30 6 180 210 105 105 15 7 ∧
    (∀ a b c d e f g h, MinkCoats a b c d e f g h → c = 180) ∧
    (∀ a b c d e f g h, MinkCoats a b c d e f g h → d = 210) ∧
    (∀ a b c d e f g h, MinkCoats a b c d e f g h → f = 105) ∧
    (∀ a b c d e f g h, MinkCoats a b c d e f g h → h = 7) :=
  ⟨by norm_num [MinkCoats], minks_babies, minks_total, minks_remaining, minks_coats⟩

theorem tires_motorcycles (a b c d e f g h i j k : ℕ) (x : VehicleTires a b c d e f g h i j k) : c = 8 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [ha, hb] at hc
  omega
theorem tires_cars (a b c d e f g h i j k : ℕ) (x : VehicleTires a b c d e f g h i j k) : d = 16 := by
  have hc0 := tires_motorcycles a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  omega
theorem tires_spare_cars (a b c d e f g h i j k : ℕ) (x : VehicleTires a b c d e f g h i j k) : f = 4 := by
  have hd0 := tires_cars a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [hd0, he] at hf
  omega
theorem tires_total (a b c d e f g h i j k : ℕ) (x : VehicleTires a b c d e f g h i j k) : k = 84 := by
  have hc0 := tires_motorcycles a b c d e f g h i j k x
  have hd0 := tires_cars a b c d e f g h i j k x
  have hf0 := tires_spare_cars a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [hc0, hd0, hf0, hh, hi, hj] at hg hk
  omega
theorem tires_solution : VehicleTires 24 3 8 16 4 4 12 2 5 4 84 ∧
    (∀ a b c d e f g h i j k, VehicleTires a b c d e f g h i j k → c = 8) ∧
    (∀ a b c d e f g h i j k, VehicleTires a b c d e f g h i j k → d = 16) ∧
    (∀ a b c d e f g h i j k, VehicleTires a b c d e f g h i j k → f = 4) ∧
    (∀ a b c d e f g h i j k, VehicleTires a b c d e f g h i j k → k = 84) :=
  ⟨by norm_num [VehicleTires], tires_motorcycles, tires_cars, tires_spare_cars, tires_total⟩

theorem doughnuts_total (a b c d e f g h : ℕ) (x : DoughnutSharing a b c d e f g h) : d = 60 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb, hc] at hd
  exact hd
theorem doughnuts_people (a b c d e f g h : ℕ) (x : DoughnutSharing a b c d e f g h) : g = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [he, hf] at hg
  exact hg
theorem doughnuts_each (a b c d e f g h : ℕ) (x : DoughnutSharing a b c d e f g h) : h = 6 := by
  have hd0 := doughnuts_total a b c d e f g h x
  have hg0 := doughnuts_people a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hd0, hg0] at hh
  omega
theorem doughnuts_solution : DoughnutSharing 12 2 3 60 8 2 10 6 ∧
    (∀ a b c d e f g h, DoughnutSharing a b c d e f g h → d = 60) ∧
    (∀ a b c d e f g h, DoughnutSharing a b c d e f g h → g = 10) ∧
    (∀ a b c d e f g h, DoughnutSharing a b c d e f g h → h = 6) :=
  ⟨by norm_num [DoughnutSharing], doughnuts_total, doughnuts_people, doughnuts_each⟩

theorem attendance_show_percent (a b c d : ℕ) (x : AttendanceEstimate a b c d) : c = 95 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem attendance_estimate (a b c d : ℕ) (x : AttendanceEstimate a b c d) : d = 209 := by
  have hc0 := attendance_show_percent a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hc0] at hd
  omega
theorem attendance_actual_bound (a b : ℕ) (x : ActualAttendance a b) : b ≤ 220 := by
  rcases x with ⟨ha, hb⟩
  exact ha ▸ hb
theorem attendance_actual_not_unique :
    ActualAttendance 220 209 ∧ ActualAttendance 220 220 ∧ 209 ≠ 220 := by
  norm_num [ActualAttendance]
theorem attendance_solution : AttendanceEstimate 220 5 95 209 ∧
    (∀ a b c d, AttendanceEstimate a b c d → c = 95) ∧
    (∀ a b c d, AttendanceEstimate a b c d → d = 209) ∧
    (∀ a b, ActualAttendance a b → b ≤ 220) ∧
    ActualAttendance 220 209 ∧ ActualAttendance 220 220 ∧ 209 ≠ 220 :=
  ⟨by norm_num [AttendanceEstimate], attendance_show_percent, attendance_estimate,
    attendance_actual_bound, attendance_actual_not_unique⟩

theorem roadwork_second (a b c d e f g h i j : ℚ) (x : Roadwork a b c d e f g h i j) : c = 7 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hb] at hc
  exact hc
theorem roadwork_remaining (a b c d e f g h i j : ℚ) (x : Roadwork a b c d e f g h i j) : d = 5 := by
  have hc0 := roadwork_second a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  linarith
theorem roadwork_loads (a b c d e f g h i j : ℚ) (x : Roadwork a b c d e f g h i j) : f = 15 := by
  have hd0 := roadwork_remaining a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hd0, he] at hf
  exact hf
theorem roadwork_gravel (a b c d e f g h i j : ℚ) (x : Roadwork a b c d e f g h i j) : h = 30 := by
  have hf0 := roadwork_loads a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hf0, hg] at hh
  exact hh
theorem roadwork_pitch (a b c d e f g h i j : ℚ) (x : Roadwork a b c d e f g h i j) : j = 6 := by
  have hh0 := roadwork_gravel a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hh0, hj] at hi
  linarith
theorem roadwork_solution : Roadwork 16 4 7 5 3 15 2 30 5 6 ∧
    (∀ a b c d e f g h i j, Roadwork a b c d e f g h i j → c = 7) ∧
    (∀ a b c d e f g h i j, Roadwork a b c d e f g h i j → d = 5) ∧
    (∀ a b c d e f g h i j, Roadwork a b c d e f g h i j → f = 15) ∧
    (∀ a b c d e f g h i j, Roadwork a b c d e f g h i j → h = 30) ∧
    (∀ a b c d e f g h i j, Roadwork a b c d e f g h i j → j = 6) :=
  ⟨by norm_num [Roadwork], roadwork_second, roadwork_remaining,
    roadwork_loads, roadwork_gravel, roadwork_pitch⟩

theorem tax_amount (a b c d : ℕ) (x : SalaryAfterTax a b c d) : c = 10800 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  omega
theorem tax_remaining (a b c d : ℕ) (x : SalaryAfterTax a b c d) : d = 49200 := by
  have hc0 := tax_amount a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem tax_solution : SalaryAfterTax 60000 18 10800 49200 ∧
    (∀ a b c d, SalaryAfterTax a b c d → c = 10800) ∧
    (∀ a b c d, SalaryAfterTax a b c d → d = 49200) :=
  ⟨by norm_num [SalaryAfterTax], tax_amount, tax_remaining⟩

theorem chocolates_regular_four (a b c d e : ℕ) (x : ChocolateMonth 4 a b c d e) : c = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc
theorem chocolates_total_four (a b c d e : ℕ) (x : ChocolateMonth 4 a b c d e) : e = 22 := by
  have hc0 := chocolates_regular_four a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hc0, hd] at he
  exact he
theorem chocolates_total_five (a b c d e : ℕ) (x : ChocolateMonth 5 a b c d e) : e = 25 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  norm_num [hc, hd] at he
  exact he
theorem chocolates_ambiguity :
    ChocolateMonth 4 2 1 12 10 22 ∧ ChocolateMonth 5 2 1 15 10 25 ∧ 22 ≠ 25 := by
  norm_num [ChocolateMonth]
theorem chocolates_solution :
    ChocolateMonth 4 2 1 12 10 22 ∧
    (∀ a b c d e, ChocolateMonth 4 a b c d e → c = 12) ∧
    (∀ a b c d e, ChocolateMonth 4 a b c d e → e = 22) ∧
    (∀ a b c d e, ChocolateMonth 5 a b c d e → e = 25) ∧
    ChocolateMonth 5 2 1 15 10 25 ∧ 22 ≠ 25 :=
  ⟨by norm_num [ChocolateMonth], chocolates_regular_four, chocolates_total_four,
    chocolates_total_five, chocolates_ambiguity.2⟩

end LemmaWeave.Tests.GSM8KDaily0913B

#print axioms LemmaWeave.Tests.GSM8KDaily0913B.cleaning_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913B.questions_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913B.books_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913B.minks_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913B.tires_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913B.doughnuts_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913B.attendance_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913B.roadwork_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913B.tax_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913B.chocolates_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913B.cleaning_solution to "work/gsm8k-daily33-cleaning-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913B.questions_solution to "work/gsm8k-daily33-questions-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913B.books_solution to "work/gsm8k-daily33-books-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913B.minks_solution to "work/gsm8k-daily33-minks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913B.tires_solution to "work/gsm8k-daily33-tires-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913B.doughnuts_solution to "work/gsm8k-daily33-doughnuts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913B.attendance_solution to "work/gsm8k-daily33-attendance-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913B.roadwork_solution to "work/gsm8k-daily33-roadwork-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913B.tax_solution to "work/gsm8k-daily33-tax-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913B.chocolates_solution to "work/gsm8k-daily33-chocolates-graph.json"
