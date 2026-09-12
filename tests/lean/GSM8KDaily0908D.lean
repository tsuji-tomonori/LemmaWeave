import LemmaWeave.Problems.GSM8K.Daily0908DModels
import LemmaWeave.Lemmas.ArithmeticMethods
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0908D
open LemmaWeave.Problems.GSM8K.Daily0908D

theorem hotel_total (t u a : ℕ) (x : HotelRooms t u a) : t = 100 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem hotel_unavailable (t u a : ℕ) (x : HotelRooms t u a) : u = 10 := by
  have h := x.2.1
  norm_num at h ⊢
  exact h
theorem hotel_available (t u a : ℕ) (x : HotelRooms t u a) : a = 90 := by
  have ht := hotel_total t u a x
  have hu := hotel_unavailable t u a x
  have ha := x.2.2
  omega
theorem hotel_exists : HotelRooms 100 10 90 := by norm_num [HotelRooms]
theorem hotel_solution : HotelRooms 100 10 90 ∧
    (∀ t u a, HotelRooms t u a → t = 100) ∧
    (∀ t u a, HotelRooms t u a → u = 10) ∧
    (∀ t u a, HotelRooms t u a → a = 90) :=
  ⟨hotel_exists, hotel_total, hotel_unavailable, hotel_available⟩

theorem ages_jolyn_over_aivo (j l d : ℕ) (x : AgeDifference j l d) : j = 7 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem ages_leon_over_aivo (j l d : ℕ) (x : AgeDifference j l d) : l = 2 := by
  have h := x.2.1
  norm_num at h ⊢
  exact h
theorem ages_difference (j l d : ℕ) (x : AgeDifference j l d) : d = 5 := by
  have hj := ages_jolyn_over_aivo j l d x
  have hl := ages_leon_over_aivo j l d x
  have hd := x.2.2
  omega
theorem ages_exists : AgeDifference 7 2 5 := by norm_num [AgeDifference]
theorem ages_solution : AgeDifference 7 2 5 ∧
    (∀ j l d, AgeDifference j l d → j = 7) ∧
    (∀ j l d, AgeDifference j l d → l = 2) ∧
    (∀ j l d, AgeDifference j l d → d = 5) :=
  ⟨ages_exists, ages_jolyn_over_aivo, ages_leon_over_aivo, ages_difference⟩

theorem soda_spent (s o : ℕ) (x : SodaPurchase s o) : s = 150 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem soda_ounces (s o : ℕ) (x : SodaPurchase s o) : o = 6 := by
  have hs := soda_spent s o x
  have ho := x.2
  omega
theorem soda_exists : SodaPurchase 150 6 := by norm_num [SodaPurchase]
theorem soda_solution : SodaPurchase 150 6 ∧
    (∀ s o, SodaPurchase s o → s = 150) ∧
    (∀ s o, SodaPurchase s o → o = 6) :=
  ⟨soda_exists, soda_spent, soda_ounces⟩

theorem cow_new_weight (n g v : ℕ) (x : CowValue n g v) : n = 600 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem cow_gain (n g v : ℕ) (x : CowValue n g v) : g = 200 := by
  have hn := cow_new_weight n g v x
  have hg := x.2.1
  omega
theorem cow_value_increase (n g v : ℕ) (x : CowValue n g v) : v = 600 := by
  have hg := cow_gain n g v x
  have hv := x.2.2
  omega
theorem cow_exists : CowValue 600 200 600 := by norm_num [CowValue]
theorem cow_solution : CowValue 600 200 600 ∧
    (∀ n g v, CowValue n g v → n = 600) ∧
    (∀ n g v, CowValue n g v → g = 200) ∧
    (∀ n g v, CowValue n g v → v = 600) :=
  ⟨cow_exists, cow_new_weight, cow_gain, cow_value_increase⟩

theorem geckos_previous (p t : ℕ) (x : GeckoSales p t) : p = 172 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem geckos_total (p t : ℕ) (x : GeckoSales p t) : t = 258 := by
  have hp := geckos_previous p t x
  have ht := x.2
  omega
theorem geckos_exists : GeckoSales 172 258 := by norm_num [GeckoSales]
theorem geckos_solution : GeckoSales 172 258 ∧
    (∀ p t, GeckoSales p t → p = 172) ∧
    (∀ p t, GeckoSales p t → t = 258) :=
  ⟨geckos_exists, geckos_previous, geckos_total⟩

theorem library_friday_increase : 40 * 40 / 100 = 16 := by norm_num
theorem library_friday : 40 + 40 * 40 / 100 = 56 := by
  have h := library_friday_increase
  omega
theorem library_baseline : LibraryBaselineWeek 56 216 := by
  constructor
  · exact library_friday
  · norm_num
theorem library_overall : LibraryOverallAverage 56 200 := by
  constructor
  · exact library_friday
  · norm_num
theorem library_ambiguity : LibraryBaselineWeek 56 216 ∧
    LibraryOverallAverage 56 200 ∧ (216 : ℕ) ≠ 200 :=
  ⟨library_baseline, library_overall, by omega⟩
theorem library_solution : LibraryBaselineWeek 56 216 ∧
    LibraryOverallAverage 56 200 ∧ (216 : ℕ) ≠ 200 :=
  library_ambiguity

theorem birds_daily_cup : (1 / 2 : ℚ) + 1 / 2 = 1 := by norm_num
theorem birds_regular_days : 31 + 31 + 28 = 90 := by norm_num
theorem birds_regular_total : BirdFood 28 90 1 90 := by
  exact ⟨Or.inl rfl, birds_regular_days, birds_daily_cup.symm, by norm_num⟩
theorem birds_leap_days : 31 + 31 + 29 = 91 := by norm_num
theorem birds_leap_total : BirdFood 29 91 1 91 := by
  exact ⟨Or.inr rfl, birds_leap_days, birds_daily_cup.symm, by norm_num⟩
theorem birds_possible (f d : ℕ) (c t : ℚ) (x : BirdFood f d c t) :
    t = 90 ∨ t = 91 := by
  rcases x with ⟨hf, hd, hc, ht⟩
  rcases hf with hf | hf
  · left
    norm_num [hf] at hd
    norm_num at hc
    rw [hd, hc] at ht
    norm_num at ht
    exact ht
  · right
    norm_num [hf] at hd
    norm_num at hc
    rw [hd, hc] at ht
    norm_num at ht
    exact ht
theorem birds_ambiguity : BirdFood 28 90 1 90 ∧ BirdFood 29 91 1 91 ∧
    (90 : ℚ) ≠ 91 :=
  ⟨birds_regular_total, birds_leap_total, by norm_num⟩
theorem birds_solution : ((1 / 2 : ℚ) + 1 / 2 = 1) ∧
    (31 + 31 + 28 = 90) ∧ (31 + 31 + 29 = 91) ∧
    BirdFood 28 90 1 90 ∧ BirdFood 29 91 1 91 ∧
    (∀ f d c t, BirdFood f d c t → t = 90 ∨ t = 91) ∧ (90 : ℚ) ≠ 91 :=
  ⟨birds_daily_cup, birds_regular_days, birds_leap_days,
    birds_regular_total, birds_leap_total, birds_possible,
    birds_ambiguity.2.2⟩

theorem bonus_hours (h p r : ℕ) (x : BonusHourlyPay h p r) : h = 10 := by
  have hh := x.1
  norm_num at hh ⊢
  exact hh
theorem bonus_total_pay (h p r : ℕ) (x : BonusHourlyPay h p r) : p = 100 := by
  have hp := x.2.1
  norm_num at hp ⊢
  exact hp
theorem bonus_hourly (h p r : ℕ) (x : BonusHourlyPay h p r) : r = 10 := by
  have hh := bonus_hours h p r x
  have hp := bonus_total_pay h p r x
  have hr := x.2.2
  rw [hh, hp] at hr
  norm_num at hr ⊢
  exact hr
theorem bonus_exists : BonusHourlyPay 10 100 10 := by norm_num [BonusHourlyPay]
theorem bonus_solution : BonusHourlyPay 10 100 10 ∧
    (∀ h p r, BonusHourlyPay h p r → h = 10) ∧
    (∀ h p r, BonusHourlyPay h p r → p = 100) ∧
    (∀ h p r, BonusHourlyPay h p r → r = 10) :=
  ⟨bonus_exists, bonus_hours, bonus_total_pay, bonus_hourly⟩

theorem savings_sally_daily : 6 / 2 = 3 := by norm_num
theorem savings_bob_daily : 4 / 2 = 2 := by norm_num
theorem savings_regular : AnnualSavings 365 3 2 1825 := by norm_num [AnnualSavings]
theorem savings_leap : AnnualSavings 366 3 2 1830 := by norm_num [AnnualSavings]
theorem savings_possible (d s b t : ℕ) (x : AnnualSavings d s b t) :
    t = 1825 ∨ t = 1830 := by
  rcases x with ⟨hd, hs, hb, ht⟩
  rcases hd with hd | hd
  · left
    rw [hd, hs, hb] at ht
    norm_num at ht
    exact ht
  · right
    rw [hd, hs, hb] at ht
    norm_num at ht
    exact ht
theorem savings_ambiguity : AnnualSavings 365 3 2 1825 ∧
    AnnualSavings 366 3 2 1830 ∧ (1825 : ℕ) ≠ 1830 :=
  ⟨savings_regular, savings_leap, by omega⟩
theorem savings_solution : (6 / 2 = 3) ∧ (4 / 2 = 2) ∧
    AnnualSavings 365 3 2 1825 ∧ AnnualSavings 366 3 2 1830 ∧
    (∀ d s b t, AnnualSavings d s b t → t = 1825 ∨ t = 1830) ∧
    (1825 : ℕ) ≠ 1830 :=
  ⟨savings_sally_daily, savings_bob_daily, savings_regular, savings_leap,
    savings_possible, savings_ambiguity.2.2⟩

theorem order_beef (b p c t : ℕ) (x : RestaurantOrder b p c t) : b = 8000 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem order_chicken_pounds (b p c t : ℕ) (x : RestaurantOrder b p c t) : p = 2000 := by
  have h := x.2.1
  norm_num at h ⊢
  exact h
theorem order_chicken_cost (b p c t : ℕ) (x : RestaurantOrder b p c t) : c = 6000 := by
  have hp := order_chicken_pounds b p c t x
  have hc := x.2.2.1
  omega
theorem order_total (b p c t : ℕ) (x : RestaurantOrder b p c t) : t = 14000 := by
  have hb := order_beef b p c t x
  have hc := order_chicken_cost b p c t x
  have ht := x.2.2.2
  omega
theorem order_exists : RestaurantOrder 8000 2000 6000 14000 := by
  norm_num [RestaurantOrder]
theorem order_solution : RestaurantOrder 8000 2000 6000 14000 ∧
    (∀ b p c t, RestaurantOrder b p c t → b = 8000) ∧
    (∀ b p c t, RestaurantOrder b p c t → p = 2000) ∧
    (∀ b p c t, RestaurantOrder b p c t → c = 6000) ∧
    (∀ b p c t, RestaurantOrder b p c t → t = 14000) :=
  ⟨order_exists, order_beef, order_chicken_pounds, order_chicken_cost, order_total⟩

end LemmaWeave.Tests.GSM8KDaily0908D

#print axioms LemmaWeave.Tests.GSM8KDaily0908D.hotel_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908D.ages_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908D.soda_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908D.cow_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908D.geckos_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908D.library_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908D.birds_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908D.bonus_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908D.savings_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908D.order_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908D.hotel_solution to "work/gsm8k-daily9-hotel-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908D.ages_solution to "work/gsm8k-daily9-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908D.soda_solution to "work/gsm8k-daily9-soda-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908D.cow_solution to "work/gsm8k-daily9-cow-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908D.geckos_solution to "work/gsm8k-daily9-geckos-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908D.library_solution to "work/gsm8k-daily9-library-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908D.birds_solution to "work/gsm8k-daily9-birds-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908D.bonus_solution to "work/gsm8k-daily9-bonus-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908D.savings_solution to "work/gsm8k-daily9-savings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908D.order_solution to "work/gsm8k-daily9-order-graph.json"
