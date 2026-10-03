import LemmaWeave.Problems.GSM8K.Daily0913AModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0913A
open LemmaWeave.Problems.GSM8K.Daily0913A

theorem reading_weekly (a b c d e f g h i j k : ℕ) (x : ReadingGoal a b c d e f g h i j k) : c = 350 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [ha, hb] at hc
  exact hc
theorem reading_before (a b c d e f g h i j k : ℕ) (x : ReadingGoal a b c d e f g h i j k) : j = 262 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [hd, he, hf, hg, hh, hi] at hj
  exact hj
theorem reading_saturday (a b c d e f g h i j k : ℕ) (x : ReadingGoal a b c d e f g h i j k) : k = 88 := by
  have hc0 := reading_weekly a b c d e f g h i j k x
  have hj0 := reading_before a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  omega
theorem reading_solution : ReadingGoal 50 7 350 43 65 28 0 70 56 262 88 ∧
    (∀ a b c d e f g h i j k, ReadingGoal a b c d e f g h i j k → c = 350) ∧
    (∀ a b c d e f g h i j k, ReadingGoal a b c d e f g h i j k → j = 262) ∧
    (∀ a b c d e f g h i j k, ReadingGoal a b c d e f g h i j k → k = 88) :=
  ⟨by norm_num [ReadingGoal], reading_weekly, reading_before, reading_saturday⟩

theorem castle_people (a b c d e f g : ℕ) (x : CastleProvisions a b c d e f g) : e = 200 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega
theorem castle_food (a b c d e f g : ℕ) (x : CastleProvisions a b c d e f g) : f = 18000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb, hc] at hf
  omega
theorem castle_days (a b c d e f g : ℕ) (x : CastleProvisions a b c d e f g) : g = 90 := by
  have he0 := castle_people a b c d e f g x
  have hf0 := castle_food a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [he0, hf0] at hg
  omega
theorem castle_solution : CastleProvisions 300 90 30 100 200 18000 90 ∧
    (∀ a b c d e f g, CastleProvisions a b c d e f g → e = 200) ∧
    (∀ a b c d e f g, CastleProvisions a b c d e f g → f = 18000) ∧
    (∀ a b c d e f g, CastleProvisions a b c d e f g → g = 90) :=
  ⟨by norm_num [CastleProvisions], castle_people, castle_food, castle_days⟩

theorem bicycle_increase (a b c d : ℕ) (x : BicyclePrice a b c d) : c = 33 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  omega
theorem bicycle_new (a b c d : ℕ) (x : BicyclePrice a b c d) : d = 253 := by
  have hc0 := bicycle_increase a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem bicycle_solution : BicyclePrice 220 15 33 253 ∧
    (∀ a b c d, BicyclePrice a b c d → c = 33) ∧
    (∀ a b c d, BicyclePrice a b c d → d = 253) :=
  ⟨by norm_num [BicyclePrice], bicycle_increase, bicycle_new⟩

theorem time_total (a b c d e f g h i j k : ℕ) (x : WeeklyTime a b c d e f g h i j k) : c = 168 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [ha, hb] at hc
  exact hc
theorem time_homework (a b c d e f g h i j k : ℕ) (x : WeeklyTime a b c d e f g h i j k) : e = 28 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [ha, hd] at he
  exact he
theorem time_sleep (a b c d e f g h i j k : ℕ) (x : WeeklyTime a b c d e f g h i j k) : h = 56 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [ha, hg] at hh
  exact hh
theorem time_busy (a b c d e f g h i j k : ℕ) (x : WeeklyTime a b c d e f g h i j k) : j = 122 := by
  have he0 := time_homework a b c d e f g h i j k x
  have hh0 := time_sleep a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [he0, hf, hh0, hi] at hj
  exact hj
theorem time_left (a b c d e f g h i j k : ℕ) (x : WeeklyTime a b c d e f g h i j k) : k = 46 := by
  have hc0 := time_total a b c d e f g h i j k x
  have hj0 := time_busy a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  omega
theorem time_solution : WeeklyTime 7 24 168 4 28 18 8 56 20 122 46 ∧
    (∀ a b c d e f g h i j k, WeeklyTime a b c d e f g h i j k → c = 168) ∧
    (∀ a b c d e f g h i j k, WeeklyTime a b c d e f g h i j k → e = 28) ∧
    (∀ a b c d e f g h i j k, WeeklyTime a b c d e f g h i j k → h = 56) ∧
    (∀ a b c d e f g h i j k, WeeklyTime a b c d e f g h i j k → j = 122) ∧
    (∀ a b c d e f g h i j k, WeeklyTime a b c d e f g h i j k → k = 46) :=
  ⟨by norm_num [WeeklyTime], time_total, time_homework, time_sleep, time_busy, time_left⟩

theorem gifts_mara (a b c d e f : ℕ) (x : BookGifts a b c d e f) : c = 120 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  exact hc
theorem gifts_given (a b c d e f : ℕ) (x : BookGifts a b c d e f) : d = 160 := by
  have hc0 := gifts_mara a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hc0] at hd
  exact hd
theorem gifts_initial (a b c d e f : ℕ) (x : BookGifts a b c d e f) : f = 220 := by
  have hd0 := gifts_given a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hd0, he] at hf
  exact hf
theorem gifts_solution : BookGifts 40 3 120 160 60 220 ∧
    (∀ a b c d e f, BookGifts a b c d e f → c = 120) ∧
    (∀ a b c d e f, BookGifts a b c d e f → d = 160) ∧
    (∀ a b c d e f, BookGifts a b c d e f → f = 220) :=
  ⟨by norm_num [BookGifts], gifts_mara, gifts_given, gifts_initial⟩

theorem diaries_bought (a b c d e f : ℕ) (x : DiaryCount a b c d e f) : b = 16 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha] at hb
  exact hb
theorem diaries_before (a b c d e f : ℕ) (x : DiaryCount a b c d e f) : c = 24 := by
  have hb0 := diaries_bought a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb0] at hc
  exact hc
theorem diaries_lost (a b c d e f : ℕ) (x : DiaryCount a b c d e f) : e = 6 := by
  have hc0 := diaries_before a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hc0, hd] at he
  omega
theorem diaries_remaining (a b c d e f : ℕ) (x : DiaryCount a b c d e f) : f = 18 := by
  have hc0 := diaries_before a b c d e f x
  have he0 := diaries_lost a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  omega
theorem diaries_solution : DiaryCount 8 16 24 4 6 18 ∧
    (∀ a b c d e f, DiaryCount a b c d e f → b = 16) ∧
    (∀ a b c d e f, DiaryCount a b c d e f → c = 24) ∧
    (∀ a b c d e f, DiaryCount a b c d e f → e = 6) ∧
    (∀ a b c d e f, DiaryCount a b c d e f → f = 18) :=
  ⟨by norm_num [DiaryCount], diaries_bought, diaries_before, diaries_lost, diaries_remaining⟩

theorem robots_goods (a b c d e f g : ℕ) (x : RobotPurchase a b c d e f g) : c = 6125 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc
theorem robots_spent (a b c d e f g : ℕ) (x : RobotPurchase a b c d e f g) : e = 6847 := by
  have hc0 := robots_goods a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hc0, hd] at he
  exact he
theorem robots_start (a b c d e f g : ℕ) (x : RobotPurchase a b c d e f g) : g = 8000 := by
  have he0 := robots_spent a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [he0, hf] at hg
  exact hg
theorem robots_solution : RobotPurchase 7 875 6125 722 6847 1153 8000 ∧
    (∀ a b c d e f g, RobotPurchase a b c d e f g → c = 6125) ∧
    (∀ a b c d e f g, RobotPurchase a b c d e f g → e = 6847) ∧
    (∀ a b c d e f g, RobotPurchase a b c d e f g → g = 8000) :=
  ⟨by norm_num [RobotPurchase], robots_goods, robots_spent, robots_start⟩

theorem salary_literal_old (a b c d e f : ℕ) (x : SalaryLiteralMore a b c d e f) : c = 11000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  exact hc
theorem salary_literal_current (a b c d e f : ℕ) (x : SalaryLiteralMore a b c d e f) : f = 15400 := by
  have hc0 := salary_literal_old a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hc0, hd] at he
  omega
theorem salary_common_old (a b c d e f : ℕ) (x : SalaryTimesAsMuch a b c d e f) : c = 10000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  exact hc
theorem salary_common_current (a b c d e f : ℕ) (x : SalaryTimesAsMuch a b c d e f) : f = 14000 := by
  have hc0 := salary_common_old a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hc0, hd] at he
  omega
theorem salary_solution :
    SalaryLiteralMore 1000 10 11000 40 4400 15400 ∧
    SalaryTimesAsMuch 1000 10 10000 40 4000 14000 ∧
    (∀ a b c d e f, SalaryLiteralMore a b c d e f → c = 11000) ∧
    (∀ a b c d e f, SalaryLiteralMore a b c d e f → f = 15400) ∧
    (∀ a b c d e f, SalaryTimesAsMuch a b c d e f → c = 10000) ∧
    (∀ a b c d e f, SalaryTimesAsMuch a b c d e f → f = 14000) :=
  ⟨by norm_num [SalaryLiteralMore], by norm_num [SalaryTimesAsMuch],
    salary_literal_old, salary_literal_current, salary_common_old, salary_common_current⟩

theorem restaurant_subtotal (a b c d e f g h : ℕ) (x : RestaurantBill a b c d e f g h) : c = 90 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  exact hc
theorem restaurant_tax (a b c d e f g h : ℕ) (x : RestaurantBill a b c d e f g h) : e = 9 := by
  have hc0 := restaurant_subtotal a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hc0, hd] at he
  omega
theorem restaurant_before (a b c d e f g h : ℕ) (x : RestaurantBill a b c d e f g h) : f = 99 := by
  have hc0 := restaurant_subtotal a b c d e f g h x
  have he0 := restaurant_tax a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hc0, he0] at hf
  exact hf
theorem restaurant_gratuity (a b c d e f g h : ℕ) (x : RestaurantBill a b c d e f g h) : h = 41 := by
  have hf0 := restaurant_before a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega
theorem restaurant_solution : RestaurantBill 80 10 90 10 9 99 140 41 ∧
    (∀ a b c d e f g h, RestaurantBill a b c d e f g h → c = 90) ∧
    (∀ a b c d e f g h, RestaurantBill a b c d e f g h → e = 9) ∧
    (∀ a b c d e f g h, RestaurantBill a b c d e f g h → f = 99) ∧
    (∀ a b c d e f g h, RestaurantBill a b c d e f g h → h = 41) :=
  ⟨by norm_num [RestaurantBill], restaurant_subtotal, restaurant_tax,
    restaurant_before, restaurant_gratuity⟩

theorem flags_guests (a b c d e f g : ℕ) (x : PartyFlags a b c d e f g) : c = 58 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc
theorem flags_total (a b c d e f g : ℕ) (x : PartyFlags a b c d e f g) : e = 60 := by
  have hc0 := flags_guests a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hc0, hd] at he
  exact he
theorem flags_cost (a b c d e f g : ℕ) (x : PartyFlags a b c d e f g) : g = 12 := by
  have he0 := flags_total a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [he0, hf] at hg
  omega
theorem flags_solution : PartyFlags 22 36 58 2 60 5 12 ∧
    (∀ a b c d e f g, PartyFlags a b c d e f g → c = 58) ∧
    (∀ a b c d e f g, PartyFlags a b c d e f g → e = 60) ∧
    (∀ a b c d e f g, PartyFlags a b c d e f g → g = 12) :=
  ⟨by norm_num [PartyFlags], flags_guests, flags_total, flags_cost⟩

end LemmaWeave.Tests.GSM8KDaily0913A

#print axioms LemmaWeave.Tests.GSM8KDaily0913A.reading_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913A.castle_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913A.bicycle_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913A.time_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913A.gifts_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913A.diaries_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913A.robots_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913A.salary_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913A.restaurant_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913A.flags_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913A.reading_solution to "work/gsm8k-daily32-reading-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913A.castle_solution to "work/gsm8k-daily32-castle-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913A.bicycle_solution to "work/gsm8k-daily32-bicycle-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913A.time_solution to "work/gsm8k-daily32-time-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913A.gifts_solution to "work/gsm8k-daily32-gifts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913A.diaries_solution to "work/gsm8k-daily32-diaries-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913A.robots_solution to "work/gsm8k-daily32-robots-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913A.salary_solution to "work/gsm8k-daily32-salary-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913A.restaurant_solution to "work/gsm8k-daily32-restaurant-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913A.flags_solution to "work/gsm8k-daily32-flags-graph.json"
