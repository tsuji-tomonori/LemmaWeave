import LemmaWeave.Problems.GSM8K.Daily0911CModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0911C
open LemmaWeave.Problems.GSM8K.Daily0911C

theorem change_amount (a b c d e f g h : ℕ) (x : ChangeCoins a b c d e f g h) : d = 75 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb, hc] at hd
  omega
theorem change_fixed_coins (a b c d e f g h : ℕ) (x : ChangeCoins a b c d e f g h) : e = 35 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num at he
  exact he
theorem change_nickel_cents (a b c d e f g h : ℕ) (x : ChangeCoins a b c d e f g h) : f = 40 := by
  have hd0 := change_amount a b c d e f g h x
  have he0 := change_fixed_coins a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  clear ha hb hc hd he hg hh
  omega
theorem change_nickels (a b c d e f g h : ℕ) (x : ChangeCoins a b c d e f g h) : h = 8 := by
  have hf0 := change_nickel_cents a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  clear ha hb hc hd he hf
  norm_num [hh, hf0] at hg
  omega
theorem change_exists : ChangeCoins 700 420 205 75 35 40 5 8 := by norm_num [ChangeCoins]
theorem change_solution : ChangeCoins 700 420 205 75 35 40 5 8 ∧
    (∀ a b c d e f g h, ChangeCoins a b c d e f g h → d = 75) ∧
    (∀ a b c d e f g h, ChangeCoins a b c d e f g h → e = 35) ∧
    (∀ a b c d e f g h, ChangeCoins a b c d e f g h → f = 40) ∧
    (∀ a b c d e f g h, ChangeCoins a b c d e f g h → h = 8) :=
  ⟨change_exists, change_amount, change_fixed_coins, change_nickel_cents, change_nickels⟩

theorem trains_yearly (a b c d e f : ℕ) (x : ModelTrains a b c d e f) : c = 3 := by
  simp [ModelTrains] at x
  omega
theorem trains_first_five (a b c d e f : ℕ) (x : ModelTrains a b c d e f) : d = 15 := by
  have hc := trains_yearly a b c d e f x
  rcases x with ⟨ha, hb, hc', hd, he, hf⟩
  clear ha hb hc' he hf
  norm_num [hc] at hd
  exact hd
theorem trains_gift (a b c d e f : ℕ) (x : ModelTrains a b c d e f) : e = 30 := by
  have hd0 := trains_first_five a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  clear ha hb hc hd hf
  norm_num [hd0] at he
  exact he
theorem trains_total (a b c d e f : ℕ) (x : ModelTrains a b c d e f) : f = 45 := by
  have hd0 := trains_first_five a b c d e f x
  have he0 := trains_gift a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  clear ha hb hc hd he
  norm_num [hd0, he0] at hf
  exact hf
theorem trains_exists : ModelTrains 1 2 3 15 30 45 := by norm_num [ModelTrains]
theorem trains_solution : ModelTrains 1 2 3 15 30 45 ∧
    (∀ a b c d e f, ModelTrains a b c d e f → c = 3) ∧
    (∀ a b c d e f, ModelTrains a b c d e f → d = 15) ∧
    (∀ a b c d e f, ModelTrains a b c d e f → e = 30) ∧
    (∀ a b c d e f, ModelTrains a b c d e f → f = 45) :=
  ⟨trains_exists, trains_yearly, trains_first_five, trains_gift, trains_total⟩

theorem money_after_bike (a b c d e f g : ℕ) (x : RemainingMoney a b c d e f g) : c = 2200 := by
  simp [RemainingMoney] at x
  omega
theorem money_after_ticket (a b c d e f g : ℕ) (x : RemainingMoney a b c d e f g) : e = 1100 := by
  have hc := money_after_bike a b c d e f g x
  rcases x with ⟨ha, hb, hc', hd, he, hf, hg⟩
  clear ha hb hc' hf hg
  omega
theorem money_lost (a b c d e f g : ℕ) (x : RemainingMoney a b c d e f g) : f = 275 := by
  have he0 := money_after_ticket a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  clear ha hb hc hd he hg
  omega
theorem money_remaining (a b c d e f g : ℕ) (x : RemainingMoney a b c d e f g) : g = 825 := by
  have he0 := money_after_ticket a b c d e f g x
  have hf0 := money_lost a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  clear ha hb hc hd he hf
  omega
theorem money_exists : RemainingMoney 5000 2800 2200 1100 1100 275 825 := by
  norm_num [RemainingMoney]
theorem money_solution : RemainingMoney 5000 2800 2200 1100 1100 275 825 ∧
    (∀ a b c d e f g, RemainingMoney a b c d e f g → c = 2200) ∧
    (∀ a b c d e f g, RemainingMoney a b c d e f g → e = 1100) ∧
    (∀ a b c d e f g, RemainingMoney a b c d e f g → f = 275) ∧
    (∀ a b c d e f g, RemainingMoney a b c d e f g → g = 825) :=
  ⟨money_exists, money_after_bike, money_after_ticket, money_lost, money_remaining⟩

theorem eggs_tank_second (a b c d e f g h : ℕ) (x : EggHunt a b c d e f g h) : b = 30 := by
  simp [EggHunt] at x
  omega
theorem eggs_second_pair (a b c d e f g h : ℕ) (x : EggHunt a b c d e f g h) : c = 90 := by
  have hb0 := eggs_tank_second a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  clear hb hd he hf hg hh
  norm_num [ha, hb0] at hc
  exact hc
theorem eggs_tank_first (a b c d e f g h : ℕ) (x : EggHunt a b c d e f g h) : d = 50 := by
  have hb0 := eggs_tank_second a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  clear ha hb hc he hf hg hh
  norm_num [hb0] at hd
  exact hd
theorem eggs_emma_first (a b c d e f g h : ℕ) (x : EggHunt a b c d e f g h) : e = 40 := by
  have hd0 := eggs_tank_first a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  clear ha hb hc hd hf hg hh
  norm_num [hd0] at he
  omega
theorem eggs_first_pair (a b c d e f g h : ℕ) (x : EggHunt a b c d e f g h) : f = 90 := by
  have hd0 := eggs_tank_first a b c d e f g h x
  have he0 := eggs_emma_first a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  clear ha hb hc hd he hg hh
  norm_num [hd0, he0] at hf
  exact hf
theorem eggs_pair_total (a b c d e f g h : ℕ) (x : EggHunt a b c d e f g h) : g = 180 := by
  have hc0 := eggs_second_pair a b c d e f g h x
  have hf0 := eggs_first_pair a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  clear ha hb hc hd he hf hh
  norm_num [hc0, hf0] at hg
  exact hg
theorem eggs_others (a b c d e f g h : ℕ) (x : EggHunt a b c d e f g h) : h = 220 := by
  have hg0 := eggs_pair_total a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  clear ha hb hc hd he hf hg
  omega
theorem eggs_exists : EggHunt 60 30 90 50 40 90 180 220 := by norm_num [EggHunt]
theorem eggs_solution : EggHunt 60 30 90 50 40 90 180 220 ∧
    (∀ a b c d e f g h, EggHunt a b c d e f g h → b = 30) ∧
    (∀ a b c d e f g h, EggHunt a b c d e f g h → c = 90) ∧
    (∀ a b c d e f g h, EggHunt a b c d e f g h → d = 50) ∧
    (∀ a b c d e f g h, EggHunt a b c d e f g h → e = 40) ∧
    (∀ a b c d e f g h, EggHunt a b c d e f g h → f = 90) ∧
    (∀ a b c d e f g h, EggHunt a b c d e f g h → g = 180) ∧
    (∀ a b c d e f g h, EggHunt a b c d e f g h → h = 220) :=
  ⟨eggs_exists, eggs_tank_second, eggs_second_pair, eggs_tank_first,
    eggs_emma_first, eggs_first_pair, eggs_pair_total, eggs_others⟩

theorem bake_brownies (a b c d e f : ℕ) (x : BakeSale a b c d e f) : a = 12 := by
  simp [BakeSale] at x
  omega
theorem bake_lemon (a b c d e f : ℕ) (x : BakeSale a b c d e f) : b = 10 := by
  simp [BakeSale] at x
  omega
theorem bake_earned (a b c d e f : ℕ) (x : BakeSale a b c d e f) : c = 22 := by
  have ha0 := bake_brownies a b c d e f x
  have hb0 := bake_lemon a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  clear ha hb hd he hf
  norm_num [ha0, hb0] at hc
  exact hc
theorem bake_needed (a b c d e f : ℕ) (x : BakeSale a b c d e f) : d = 28 := by
  have hc0 := bake_earned a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  clear ha hb hc he hf
  omega
theorem bake_cookies (a b c d e f : ℕ) (x : BakeSale a b c d e f) : f = 7 := by
  have hd0 := bake_needed a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  clear ha hb hc hd
  norm_num [hd0, hf] at he
  omega
theorem bake_exists : BakeSale 12 10 22 28 4 7 := by norm_num [BakeSale]
theorem bake_solution : BakeSale 12 10 22 28 4 7 ∧
    (∀ a b c d e f, BakeSale a b c d e f → a = 12) ∧
    (∀ a b c d e f, BakeSale a b c d e f → b = 10) ∧
    (∀ a b c d e f, BakeSale a b c d e f → c = 22) ∧
    (∀ a b c d e f, BakeSale a b c d e f → d = 28) ∧
    (∀ a b c d e f, BakeSale a b c d e f → f = 7) :=
  ⟨bake_exists, bake_brownies, bake_lemon, bake_earned, bake_needed, bake_cookies⟩

theorem peanuts_total (a b c d e f g h i j : ℕ) (x : PeanutWeek a b c d e f g h i j) : e = 67 := by
  simp [PeanutWeek] at x
  omega
theorem peanuts_spent (a b c d e f g h i j : ℕ) (x : PeanutWeek a b c d e f g h i j) : f = 63 := by
  have he0 := peanuts_total a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  clear ha hb hc hd he hg hh hi hj
  omega
theorem peanuts_pounds (a b c d e f g h i j : ℕ) (x : PeanutWeek a b c d e f g h i j) : h = 21 := by
  have hf0 := peanuts_spent a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  clear ha hb hc hd he hf hi hj
  norm_num [hf0, hh] at hg
  omega
theorem peanuts_daily (a b c d e f g h i j : ℕ) (x : PeanutWeek a b c d e f g h i j) : j = 3 := by
  have hh0 := peanuts_pounds a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  clear ha hb hc hd he hf hg hh
  norm_num [hh0, hj] at hi
  omega
theorem peanuts_exists : PeanutWeek 7 20 20 20 67 63 3 21 7 3 := by norm_num [PeanutWeek]
theorem peanuts_solution : PeanutWeek 7 20 20 20 67 63 3 21 7 3 ∧
    (∀ a b c d e f g h i j, PeanutWeek a b c d e f g h i j → e = 67) ∧
    (∀ a b c d e f g h i j, PeanutWeek a b c d e f g h i j → f = 63) ∧
    (∀ a b c d e f g h i j, PeanutWeek a b c d e f g h i j → h = 21) ∧
    (∀ a b c d e f g h i j, PeanutWeek a b c d e f g h i j → j = 3) :=
  ⟨peanuts_exists, peanuts_total, peanuts_spent, peanuts_pounds, peanuts_daily⟩

theorem balls_red (a b c d e f : ℕ) (x : BouncyBalls a b c d e f) : d = 126 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hc] at hd
  exact hd
theorem balls_yellow (a b c d e f : ℕ) (x : BouncyBalls a b c d e f) : e = 108 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hb, hc] at he
  exact he
theorem balls_difference (a b c d e f : ℕ) (x : BouncyBalls a b c d e f) : f = 18 := by
  have hd0 := balls_red a b c d e f x
  have he0 := balls_yellow a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  clear ha hb hc hd he
  omega
theorem balls_exists : BouncyBalls 7 6 18 126 108 18 := by norm_num [BouncyBalls]
theorem balls_solution : BouncyBalls 7 6 18 126 108 18 ∧
    (∀ a b c d e f, BouncyBalls a b c d e f → d = 126) ∧
    (∀ a b c d e f, BouncyBalls a b c d e f → e = 108) ∧
    (∀ a b c d e f, BouncyBalls a b c d e f → f = 18) :=
  ⟨balls_exists, balls_red, balls_yellow, balls_difference⟩

theorem computers_laptops (a b c d e : ℕ) (x : ComputerSales a b c d e) : b = 36 := by
  simp [ComputerSales] at x
  omega
theorem computers_netbooks (a b c d e : ℕ) (x : ComputerSales a b c d e) : c = 24 := by
  simp [ComputerSales] at x
  omega
theorem computers_non_desktop (a b c d e : ℕ) (x : ComputerSales a b c d e) : d = 60 := by
  have hb0 := computers_laptops a b c d e x
  have hc0 := computers_netbooks a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  clear ha hb hc he
  norm_num [hb0, hc0] at hd
  exact hd
theorem computers_desktops (a b c d e : ℕ) (x : ComputerSales a b c d e) : e = 12 := by
  have hd0 := computers_non_desktop a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  clear hb hc hd
  norm_num [ha, hd0] at he
  omega
theorem computers_exists : ComputerSales 72 36 24 60 12 := by norm_num [ComputerSales]
theorem computers_solution : ComputerSales 72 36 24 60 12 ∧
    (∀ a b c d e, ComputerSales a b c d e → b = 36) ∧
    (∀ a b c d e, ComputerSales a b c d e → c = 24) ∧
    (∀ a b c d e, ComputerSales a b c d e → d = 60) ∧
    (∀ a b c d e, ComputerSales a b c d e → e = 12) :=
  ⟨computers_exists, computers_laptops, computers_netbooks,
    computers_non_desktop, computers_desktops⟩

theorem cookies_oat (a b c d e f g h i j : ℕ) (x : KeptCookies a b c d e f g h i j) : c = 12 := by
  simp [KeptCookies] at x
  omega
theorem cookies_sugar (a b c d e f g h i j : ℕ) (x : KeptCookies a b c d e f g h i j) : f = 6 := by
  simp [KeptCookies] at x
  omega
theorem cookies_chocolate (a b c d e f g h i j : ℕ) (x : KeptCookies a b c d e f g h i j) : i = 18 := by
  simp [KeptCookies] at x
  omega
theorem cookies_total (a b c d e f g h i j : ℕ) (x : KeptCookies a b c d e f g h i j) : j = 36 := by
  have hc0 := cookies_oat a b c d e f g h i j x
  have hf0 := cookies_sugar a b c d e f g h i j x
  have hi0 := cookies_chocolate a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  clear ha hb hc hd he hf hg hh hi
  norm_num [hc0, hf0, hi0] at hj
  exact hj
theorem cookies_exists : KeptCookies 36 24 12 24 18 6 48 30 18 36 := by norm_num [KeptCookies]
theorem cookies_solution : KeptCookies 36 24 12 24 18 6 48 30 18 36 ∧
    (∀ a b c d e f g h i j, KeptCookies a b c d e f g h i j → c = 12) ∧
    (∀ a b c d e f g h i j, KeptCookies a b c d e f g h i j → f = 6) ∧
    (∀ a b c d e f g h i j, KeptCookies a b c d e f g h i j → i = 18) ∧
    (∀ a b c d e f g h i j, KeptCookies a b c d e f g h i j → j = 36) :=
  ⟨cookies_exists, cookies_oat, cookies_sugar, cookies_chocolate, cookies_total⟩

theorem work_office (a b c d e : ℕ) (x : WorkHours a b c d e) : a = 3 := by
  simp [WorkHours] at x
  omega
theorem work_meeting (a b c d e : ℕ) (x : WorkHours a b c d e) : b = 2 := by
  simp [WorkHours] at x
  omega
theorem work_before_final (a b c d e : ℕ) (x : WorkHours a b c d e) : c = 5 := by
  have ha0 := work_office a b c d e x
  have hb0 := work_meeting a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  clear ha hb hd he
  norm_num [ha0, hb0] at hc
  exact hc
theorem work_total (a b c d e : ℕ) (x : WorkHours a b c d e) : e = 7 := by
  have hc0 := work_before_final a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  clear ha hb hc
  norm_num [hc0, hd] at he
  exact he
theorem work_exists : WorkHours 3 2 5 2 7 := by norm_num [WorkHours]
theorem work_solution : WorkHours 3 2 5 2 7 ∧
    (∀ a b c d e, WorkHours a b c d e → a = 3) ∧
    (∀ a b c d e, WorkHours a b c d e → b = 2) ∧
    (∀ a b c d e, WorkHours a b c d e → c = 5) ∧
    (∀ a b c d e, WorkHours a b c d e → e = 7) :=
  ⟨work_exists, work_office, work_meeting, work_before_final, work_total⟩

end LemmaWeave.Tests.GSM8KDaily0911C

#print axioms LemmaWeave.Tests.GSM8KDaily0911C.change_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911C.trains_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911C.money_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911C.eggs_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911C.bake_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911C.peanuts_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911C.balls_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911C.computers_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911C.cookies_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911C.work_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911C.change_solution to "work/gsm8k-daily24-change-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911C.trains_solution to "work/gsm8k-daily24-trains-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911C.money_solution to "work/gsm8k-daily24-money-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911C.eggs_solution to "work/gsm8k-daily24-eggs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911C.bake_solution to "work/gsm8k-daily24-bake-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911C.peanuts_solution to "work/gsm8k-daily24-peanuts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911C.balls_solution to "work/gsm8k-daily24-balls-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911C.computers_solution to "work/gsm8k-daily24-computers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911C.cookies_solution to "work/gsm8k-daily24-cookies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911C.work_solution to "work/gsm8k-daily24-work-graph.json"
