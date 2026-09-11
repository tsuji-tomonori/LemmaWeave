import LemmaWeave.Problems.GSM8K.Daily0912AModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0912A
open LemmaWeave.Problems.GSM8K.Daily0912A

theorem restaurant_four_week_days : 4 * 5 = 20 ∧ 4 * 2 = 8 := by norm_num
theorem restaurant_weekend_rate (a b c d e : ℕ) (x : RestaurantMonth a b c d e) : d = 1200 := by
  rcases x with ⟨hc, hd, he⟩
  norm_num [hc] at hd
  exact hd
theorem restaurant_four_week_total (a b c : ℕ) (x : RestaurantMonth 20 8 a b c) : c = 21600 := by
  have hb := restaurant_weekend_rate 20 8 a b c x
  rcases x with ⟨ha, hb0, hc⟩
  norm_num [ha, hb] at hc
  exact hc
theorem restaurant_thirty_day_total (a b c : ℕ) (x : RestaurantMonth 22 8 a b c) : c = 22800 := by
  have hb := restaurant_weekend_rate 22 8 a b c x
  rcases x with ⟨ha, hb0, hc⟩
  norm_num [ha, hb] at hc
  exact hc
theorem restaurant_solution :
    (4 * 5 = 20 ∧ 4 * 2 = 8) ∧ RestaurantMonth 20 8 600 1200 21600 ∧
    (∀ a b c, RestaurantMonth 20 8 a b c → c = 21600) ∧
    RestaurantMonth 22 8 600 1200 22800 ∧ 21600 ≠ 22800 :=
  ⟨restaurant_four_week_days, by norm_num [RestaurantMonth], restaurant_four_week_total,
    by norm_num [RestaurantMonth], by norm_num⟩

theorem shoulder_percent (a b c d e f : ℕ) (x : ShoulderReach a b c d e f) : c = 80 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  omega
theorem shoulder_height (a b c d e f : ℕ) (x : ShoulderReach a b c d e f) : d = 4 := by
  have hc0 := shoulder_percent a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hc0] at hd
  omega
theorem shoulder_total (a b c d e f : ℕ) (x : ShoulderReach a b c d e f) : f = 9 := by
  have hd0 := shoulder_height a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hd0, he] at hf
  exact hf
theorem shoulder_exists : ShoulderReach 5 20 80 4 5 9 := by norm_num [ShoulderReach]
theorem shoulder_solution : ShoulderReach 5 20 80 4 5 9 ∧
    (∀ a b c d e f, ShoulderReach a b c d e f → c = 80) ∧
    (∀ a b c d e f, ShoulderReach a b c d e f → d = 4) ∧
    (∀ a b c d e f, ShoulderReach a b c d e f → f = 9) :=
  ⟨shoulder_exists, shoulder_percent, shoulder_height, shoulder_total⟩

theorem gym_extra (a b c d e f g h : ℕ) (x : GymWeek a b c d e f g h) : d = 20 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hb, hc] at hd
  omega
theorem gym_visit (a b c d e f g h : ℕ) (x : GymWeek a b c d e f g h) : e = 80 := by
  have hd0 := gym_extra a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hb, hd0] at he
  exact he
theorem gym_week_minutes (a b c d e f g h : ℕ) (x : GymWeek a b c d e f g h) : f = 240 := by
  have he0 := gym_visit a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, he0] at hf
  exact hf
theorem gym_hours (a b c d e f g h : ℕ) (x : GymWeek a b c d e f g h) : h = 4 := by
  have hf0 := gym_week_minutes a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hf0, hg] at hh
  omega
theorem gym_exists : GymWeek 3 60 3 20 80 240 60 4 := by norm_num [GymWeek]
theorem gym_solution : GymWeek 3 60 3 20 80 240 60 4 ∧
    (∀ a b c d e f g h, GymWeek a b c d e f g h → d = 20) ∧
    (∀ a b c d e f g h, GymWeek a b c d e f g h → e = 80) ∧
    (∀ a b c d e f g h, GymWeek a b c d e f g h → f = 240) ∧
    (∀ a b c d e f g h, GymWeek a b c d e f g h → h = 4) :=
  ⟨gym_exists, gym_extra, gym_visit, gym_week_minutes, gym_hours⟩

theorem pizza_minutes (a b c d e f g h i : ℕ) (x : PizzaFlour a b c d e f g h i) : d = 420 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hb] at hc
  exact hc
theorem pizza_made (a b c d e f g h i : ℕ) (x : PizzaFlour a b c d e f g h i) : e = 42 := by
  have hd0 := pizza_minutes a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hd0, hc] at he
  omega
theorem pizza_left (a b c d e f g h i : ℕ) (x : PizzaFlour a b c d e f g h i) : h = 2 := by
  have he0 := pizza_made a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [he0, hf, hg] at hh
  omega
theorem pizza_home (a b c d e f g h i : ℕ) (x : PizzaFlour a b c d e f g h i) : i = 2 := by
  have hh0 := pizza_left a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  simpa [hh0] using hi
theorem pizza_exists : PizzaFlour 7 60 10 420 42 44 42 2 2 := by norm_num [PizzaFlour]
theorem pizza_solution : PizzaFlour 7 60 10 420 42 44 42 2 2 ∧
    (∀ a b c d e f g h i, PizzaFlour a b c d e f g h i → d = 420) ∧
    (∀ a b c d e f g h i, PizzaFlour a b c d e f g h i → e = 42) ∧
    (∀ a b c d e f g h i, PizzaFlour a b c d e f g h i → h = 2) ∧
    (∀ a b c d e f g h i, PizzaFlour a b c d e f g h i → i = 2) :=
  ⟨pizza_exists, pizza_minutes, pizza_made, pizza_left, pizza_home⟩

theorem bouquet_total (a b c d e f : ℕ) (x : BouquetAverage a b c d e f) : d = 36 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb, hc] at hd
  exact hd
theorem bouquet_average (a b c d e f : ℕ) (x : BouquetAverage a b c d e f) : f = 12 := by
  have hd0 := bouquet_total a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hd0, he] at hf
  omega
theorem bouquet_exists : BouquetAverage 9 14 13 36 3 12 := by norm_num [BouquetAverage]
theorem bouquet_solution : BouquetAverage 9 14 13 36 3 12 ∧
    (∀ a b c d e f, BouquetAverage a b c d e f → d = 36) ∧
    (∀ a b c d e f, BouquetAverage a b c d e f → f = 12) :=
  ⟨bouquet_exists, bouquet_total, bouquet_average⟩

theorem pogo_sunday (a b c d e f : ℕ) (x : PogoMoney a b c d e f) : b = 9 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha] at hb
  omega
theorem pogo_earned (a b c d e f : ℕ) (x : PogoMoney a b c d e f) : d = 47 := by
  have hb0 := pogo_sunday a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb0, hc] at hd
  exact hd
theorem pogo_needed (a b c d e f : ℕ) (x : PogoMoney a b c d e f) : f = 13 := by
  have hd0 := pogo_earned a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hd0, he] at hf
  omega
theorem pogo_exists : PogoMoney 18 9 20 47 60 13 := by norm_num [PogoMoney]
theorem pogo_solution : PogoMoney 18 9 20 47 60 13 ∧
    (∀ a b c d e f, PogoMoney a b c d e f → b = 9) ∧
    (∀ a b c d e f, PogoMoney a b c d e f → d = 47) ∧
    (∀ a b c d e f, PogoMoney a b c d e f → f = 13) :=
  ⟨pogo_exists, pogo_sunday, pogo_earned, pogo_needed⟩

theorem phone_call_cost (a b c d e f g h i : ℕ) (x : PhoneBill a b c d e f g h i) : d = 300 := by
  rcases x with ⟨hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hb, hc] at hd
  exact hd
theorem phone_weekly (a b c d e f g h i : ℕ) (x : PhoneBill a b c d e f g h i) : f = 15000 := by
  have hd0 := phone_call_cost a b c d e f g h i x
  rcases x with ⟨hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hd0, he] at hf
  exact hf
theorem phone_four_week_dollars (b c d e f g h i : ℕ) (x : PhoneBill 4 b c d e f g h i) : i = 600 := by
  have hf0 := phone_weekly 4 b c d e f g h i x
  rcases x with ⟨hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hf0, hh] at hg hi
  omega
theorem phone_five_week_dollars (b c d e f g h i : ℕ) (x : PhoneBill 5 b c d e f g h i) : i = 750 := by
  have hf0 := phone_weekly 5 b c d e f g h i x
  rcases x with ⟨hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hf0, hh] at hg hi
  omega
theorem phone_solution : PhoneBill 4 60 5 300 50 15000 60000 100 600 ∧
    (∀ b c d e f g h i, PhoneBill 4 b c d e f g h i → i = 600) ∧
    PhoneBill 5 60 5 300 50 15000 75000 100 750 ∧ 600 ≠ 750 :=
  ⟨by norm_num [PhoneBill], phone_four_week_dollars,
    by norm_num [PhoneBill], by norm_num⟩

theorem flower_lilies (a b c d e f g : ℕ) (x : FlowerCost a b c d e f g) : b = 15 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha] at hb
  omega
theorem flower_rose_cost (a b c d e f g : ℕ) (x : FlowerCost a b c d e f g) : e = 100 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hc] at he
  exact he
theorem flower_lily_price (a b c d e f g : ℕ) (x : FlowerCost a b c d e f g) : d = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hc] at hd
  exact hd
theorem flower_lily_cost (a b c d e f g : ℕ) (x : FlowerCost a b c d e f g) : f = 150 := by
  have hb0 := flower_lilies a b c d e f g x
  have hd0 := flower_lily_price a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hb0, hd0] at hf
  exact hf
theorem flower_total (a b c d e f g : ℕ) (x : FlowerCost a b c d e f g) : g = 250 := by
  have he0 := flower_rose_cost a b c d e f g x
  have hf0 := flower_lily_cost a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [he0, hf0] at hg
  exact hg
theorem flower_exists : FlowerCost 20 15 5 10 100 150 250 := by norm_num [FlowerCost]
theorem flower_solution : FlowerCost 20 15 5 10 100 150 250 ∧
    (∀ a b c d e f g, FlowerCost a b c d e f g → b = 15) ∧
    (∀ a b c d e f g, FlowerCost a b c d e f g → e = 100) ∧
    (∀ a b c d e f g, FlowerCost a b c d e f g → d = 10) ∧
    (∀ a b c d e f g, FlowerCost a b c d e f g → f = 150) ∧
    (∀ a b c d e f g, FlowerCost a b c d e f g → g = 250) :=
  ⟨flower_exists, flower_lilies, flower_rose_cost, flower_lily_price,
    flower_lily_cost, flower_total⟩

theorem cash_oliver (a b c d e f g : ℕ) (x : CashDifference a b c d e f g) : c = 215 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc
theorem cash_william (a b c d e f g : ℕ) (x : CashDifference a b c d e f g) : f = 170 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hd, he] at hf
  exact hf
theorem cash_difference (a b c d e f g : ℕ) (x : CashDifference a b c d e f g) : g = 45 := by
  have hc0 := cash_oliver a b c d e f g x
  have hf0 := cash_william a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hc0, hf0] at hg
  omega
theorem cash_exists : CashDifference 10 3 215 15 4 170 45 := by norm_num [CashDifference]
theorem cash_solution : CashDifference 10 3 215 15 4 170 45 ∧
    (∀ a b c d e f g, CashDifference a b c d e f g → c = 215) ∧
    (∀ a b c d e f g, CashDifference a b c d e f g → f = 170) ∧
    (∀ a b c d e f g, CashDifference a b c d e f g → g = 45) :=
  ⟨cash_exists, cash_oliver, cash_william, cash_difference⟩

theorem commercial_reduction (a b c d : ℕ) (x : CommercialLength a b c d) : c = 9 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  omega
theorem commercial_final (a b c d : ℕ) (x : CommercialLength a b c d) : d = 21 := by
  have hc0 := commercial_reduction a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hc0] at hd
  omega
theorem commercial_exists : CommercialLength 30 30 9 21 := by norm_num [CommercialLength]
theorem commercial_solution : CommercialLength 30 30 9 21 ∧
    (∀ a b c d, CommercialLength a b c d → c = 9) ∧
    (∀ a b c d, CommercialLength a b c d → d = 21) :=
  ⟨commercial_exists, commercial_reduction, commercial_final⟩

end LemmaWeave.Tests.GSM8KDaily0912A

#print axioms LemmaWeave.Tests.GSM8KDaily0912A.restaurant_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912A.shoulder_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912A.gym_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912A.pizza_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912A.bouquet_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912A.pogo_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912A.phone_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912A.flower_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912A.cash_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912A.commercial_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912A.restaurant_solution to "work/gsm8k-daily27-restaurant-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912A.shoulder_solution to "work/gsm8k-daily27-shoulder-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912A.gym_solution to "work/gsm8k-daily27-gym-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912A.pizza_solution to "work/gsm8k-daily27-pizza-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912A.bouquet_solution to "work/gsm8k-daily27-bouquet-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912A.pogo_solution to "work/gsm8k-daily27-pogo-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912A.phone_solution to "work/gsm8k-daily27-phone-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912A.flower_solution to "work/gsm8k-daily27-flower-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912A.cash_solution to "work/gsm8k-daily27-cash-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912A.commercial_solution to "work/gsm8k-daily27-commercial-graph.json"
