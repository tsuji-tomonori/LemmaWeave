import LemmaWeave.Problems.GSM8K.Daily0907DModels
import LemmaWeave.Lemmas.ArithmeticMethods
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0907D
open LemmaWeave.Problems.GSM8K.Daily0907D

theorem shared_tony (t s : ℚ) (x : SharedMoney t s) : t = 3500 := by
  have ht := x.1
  norm_num at ht ⊢
  exact ht
theorem shared_total (t s : ℚ) (x : SharedMoney t s) : s = 5250 := by
  have ht := shared_tony t s x
  have hs := x.2
  linarith
theorem shared_exists : SharedMoney 3500 5250 := by norm_num [SharedMoney]
theorem shared_solution :
    SharedMoney 3500 5250 ∧ (∀ t s, SharedMoney t s → t = 3500) ∧
    (∀ t s, SharedMoney t s → s = 5250) :=
  ⟨shared_exists, shared_tony, shared_total⟩

theorem grades_below (b a : ℚ) (x : GradeResults b a) : b = 24 := by
  have hb := x.1
  norm_num at hb ⊢
  exact hb
theorem grades_above (b a : ℚ) (x : GradeResults b a) : a = 36 := by
  have hb := grades_below b a x
  have ha := x.2
  linarith
theorem grades_exists : GradeResults 24 36 := by norm_num [GradeResults]
theorem grades_solution :
    GradeResults 24 36 ∧ (∀ b a, GradeResults b a → b = 24) ∧
    (∀ b a, GradeResults b a → a = 36) :=
  ⟨grades_exists, grades_below, grades_above⟩

theorem earnings_lisa (l t d : ℚ) (x : CarWashEarnings l t d) : l = 30 := by
  have hl := x.1
  norm_num at hl ⊢
  exact hl
theorem earnings_tommy (l t d : ℚ) (x : CarWashEarnings l t d) : t = 15 := by
  have hl := earnings_lisa l t d x
  have ht := x.2.1
  linarith
theorem earnings_difference (l t d : ℚ) (x : CarWashEarnings l t d) : d = 15 := by
  have hl := earnings_lisa l t d x
  have ht := earnings_tommy l t d x
  have hd := x.2.2
  linarith
theorem earnings_exists : CarWashEarnings 30 15 15 := by norm_num [CarWashEarnings]
theorem earnings_solution :
    CarWashEarnings 30 15 15 ∧ (∀ l t d, CarWashEarnings l t d → l = 30) ∧
    (∀ l t d, CarWashEarnings l t d → t = 15) ∧
    (∀ l t d, CarWashEarnings l t d → d = 15) :=
  ⟨earnings_exists, earnings_lisa, earnings_tommy, earnings_difference⟩

theorem food_bill_burgers (b f s t e : ℚ) (x : FastFoodBill b f s t e) : b = 15 := by
  have hb := x.1
  norm_num at hb ⊢
  exact hb
theorem food_bill_fries (b f s t e : ℚ) (x : FastFoodBill b f s t e) : f = 24 / 5 := by
  have hf := x.2.1
  norm_num at hf ⊢
  exact hf
theorem food_bill_soda (b f s t e : ℚ) (x : FastFoodBill b f s t e) : s = 5 / 2 := by
  have hs := x.2.2.1
  norm_num at hs ⊢
  exact hs
theorem food_bill_total (b f s t e : ℚ) (x : FastFoodBill b f s t e) : t = 25 := by
  have hb := food_bill_burgers b f s t e x
  have hf := food_bill_fries b f s t e x
  have hs := food_bill_soda b f s t e x
  have ht := x.2.2.2.1
  norm_num at ht
  linarith
theorem food_bill_each (b f s t e : ℚ) (x : FastFoodBill b f s t e) : e = 5 := by
  have ht := food_bill_total b f s t e x
  have he := x.2.2.2.2
  linarith
theorem food_bill_exists : FastFoodBill 15 (24 / 5) (5 / 2) 25 5 := by
  norm_num [FastFoodBill]
theorem food_bill_solution :
    FastFoodBill 15 (24 / 5) (5 / 2) 25 5 ∧
    (∀ b f s t e, FastFoodBill b f s t e → b = 15) ∧
    (∀ b f s t e, FastFoodBill b f s t e → f = 24 / 5) ∧
    (∀ b f s t e, FastFoodBill b f s t e → s = 5 / 2) ∧
    (∀ b f s t e, FastFoodBill b f s t e → t = 25) ∧
    (∀ b f s t e, FastFoodBill b f s t e → e = 5) :=
  ⟨food_bill_exists, food_bill_burgers, food_bill_fries, food_bill_soda,
    food_bill_total, food_bill_each⟩

theorem tea_party_drink (p b t : ℚ) (x : PartyTea p b t) : p = 72 := by
  have hp := x.1
  norm_num at hp ⊢
  exact hp
theorem tea_batches (p b t : ℚ) (x : PartyTea p b t) : b = 9 := by
  have hp := tea_party_drink p b t x
  have hb := x.2.1
  linarith
theorem tea_amount (p b t : ℚ) (x : PartyTea p b t) : t = 9 := by
  have hb := tea_batches p b t x
  have ht := x.2.2
  linarith
theorem tea_exists : PartyTea 72 9 9 := by norm_num [PartyTea]
theorem tea_solution :
    PartyTea 72 9 9 ∧ (∀ p b t, PartyTea p b t → p = 72) ∧
    (∀ p b t, PartyTea p b t → b = 9) ∧
    (∀ p b t, PartyTea p b t → t = 9) :=
  ⟨tea_exists, tea_party_drink, tea_batches, tea_amount⟩

theorem candy_anna (a b d : ℕ) (x : CandyDifference a b d) : a = 840 := x.1
theorem candy_billy (a b d : ℕ) (x : CandyDifference a b d) : b = 825 := x.2.1
theorem candy_difference (a b d : ℕ) (x : CandyDifference a b d) : d = 15 := by
  have ha := candy_anna a b d x
  have hb := candy_billy a b d x
  have hd := x.2.2
  omega
theorem candy_exists : CandyDifference 840 825 15 := by norm_num [CandyDifference]
theorem candy_solution :
    CandyDifference 840 825 15 ∧ (∀ a b d, CandyDifference a b d → a = 840) ∧
    (∀ a b d, CandyDifference a b d → b = 825) ∧
    (∀ a b d, CandyDifference a b d → d = 15) :=
  ⟨candy_exists, candy_anna, candy_billy, candy_difference⟩

theorem tickets_discounted (n d c f t : ℚ) (x : TicketBill n d c f t) : n = 2 := by
  have hn := x.1
  norm_num at hn ⊢
  exact hn
theorem tickets_discount (n d c f t : ℚ) (x : TicketBill n d c f t) : d = 2 := by
  have hd := x.2.1
  norm_num at hd ⊢
  exact hd
theorem tickets_discounted_cost (n d c f t : ℚ) (x : TicketBill n d c f t) : c = 76 := by
  have hn := tickets_discounted n d c f t x
  have hd := tickets_discount n d c f t x
  have hc := x.2.2.1
  nlinarith
theorem tickets_full_cost (n d c f t : ℚ) (x : TicketBill n d c f t) : f = 400 := by
  have hf := x.2.2.2.1
  norm_num at hf ⊢
  exact hf
theorem tickets_total (n d c f t : ℚ) (x : TicketBill n d c f t) : t = 476 := by
  have hc := tickets_discounted_cost n d c f t x
  have hf := tickets_full_cost n d c f t x
  have ht := x.2.2.2.2
  linarith
theorem tickets_exists : TicketBill 2 2 76 400 476 := by norm_num [TicketBill]
theorem tickets_solution :
    TicketBill 2 2 76 400 476 ∧ (∀ n d c f t, TicketBill n d c f t → n = 2) ∧
    (∀ n d c f t, TicketBill n d c f t → d = 2) ∧
    (∀ n d c f t, TicketBill n d c f t → c = 76) ∧
    (∀ n d c f t, TicketBill n d c f t → f = 400) ∧
    (∀ n d c f t, TicketBill n d c f t → t = 476) :=
  ⟨tickets_exists, tickets_discounted, tickets_discount, tickets_discounted_cost,
    tickets_full_cost, tickets_total⟩

theorem budget_shoes (s d t r : ℚ) (x : RachelBudget s d t r) : s = 50 := x.1
theorem budget_dress (s d t r : ℚ) (x : RachelBudget s d t r) : d = 200 := x.2.1
theorem budget_sara (s d t r : ℚ) (x : RachelBudget s d t r) : t = 250 := by
  have hs := budget_shoes s d t r x
  have hd := budget_dress s d t r x
  have ht := x.2.2.1
  linarith
theorem budget_rachel (s d t r : ℚ) (x : RachelBudget s d t r) : r = 500 := by
  have ht := budget_sara s d t r x
  have hr := x.2.2.2
  linarith
theorem budget_exists : RachelBudget 50 200 250 500 := by norm_num [RachelBudget]
theorem budget_solution :
    RachelBudget 50 200 250 500 ∧ (∀ s d t r, RachelBudget s d t r → s = 50) ∧
    (∀ s d t r, RachelBudget s d t r → d = 200) ∧
    (∀ s d t r, RachelBudget s d t r → t = 250) ∧
    (∀ s d t r, RachelBudget s d t r → r = 500) :=
  ⟨budget_exists, budget_shoes, budget_dress, budget_sara, budget_rachel⟩

theorem monkeys_remaining_piles (r f b t e : ℕ) (x : MonkeyBananas r f b t e) : r = 4 := x.1
theorem monkeys_first (r f b t e : ℕ) (x : MonkeyBananas r f b t e) : f = 756 := x.2.1
theorem monkeys_remaining (r f b t e : ℕ) (x : MonkeyBananas r f b t e) : b = 432 := by
  have hr := monkeys_remaining_piles r f b t e x
  have hb := x.2.2.1
  omega
theorem monkeys_total (r f b t e : ℕ) (x : MonkeyBananas r f b t e) : t = 1188 := by
  have hf := monkeys_first r f b t e x
  have hb := monkeys_remaining r f b t e x
  have ht := x.2.2.2.1
  omega
theorem monkeys_each (r f b t e : ℕ) (x : MonkeyBananas r f b t e) : e = 99 := by
  have ht := monkeys_total r f b t e x
  have he := x.2.2.2.2
  omega
theorem monkeys_divides : 1188 = 12 * 99 := by norm_num
theorem monkeys_exists : MonkeyBananas 4 756 432 1188 99 := by norm_num [MonkeyBananas]
theorem monkeys_solution :
    MonkeyBananas 4 756 432 1188 99 ∧
    (∀ r f b t e, MonkeyBananas r f b t e → r = 4) ∧
    (∀ r f b t e, MonkeyBananas r f b t e → f = 756) ∧
    (∀ r f b t e, MonkeyBananas r f b t e → b = 432) ∧
    (∀ r f b t e, MonkeyBananas r f b t e → t = 1188) ∧
    (∀ r f b t e, MonkeyBananas r f b t e → e = 99) ∧ 1188 = 12 * 99 :=
  ⟨monkeys_exists, monkeys_remaining_piles, monkeys_first, monkeys_remaining,
    monkeys_total, monkeys_each, monkeys_divides⟩

theorem earthquake_second (s t f a : ℕ) (x : PredictedEarthquakes s t f a) : s = 8 := x.1
theorem earthquake_third (s t f a : ℕ) (x : PredictedEarthquakes s t f a) : t = 16 := by
  rw [x.2.1, earthquake_second s t f a x]
theorem earthquake_fourth (s t f a : ℕ) (x : PredictedEarthquakes s t f a) : f = 32 := by
  rw [x.2.2.1, earthquake_third s t f a x]
theorem earthquake_predicted_total (s t f a : ℕ) (x : PredictedEarthquakes s t f a) : a = 60 := by
  have hs := earthquake_second s t f a x
  have ht := earthquake_third s t f a x
  have hf := earthquake_fourth s t f a x
  have ha := x.2.2.2
  omega
theorem earthquake_actual_examples :
    ActualCollapseTotal 0 0 0 4 ∧ ActualCollapseTotal 8 16 32 60 ∧ (4 : ℕ) ≠ 60 := by
  norm_num [ActualCollapseTotal]
theorem earthquake_exists : PredictedEarthquakes 8 16 32 60 := by
  norm_num [PredictedEarthquakes]
theorem earthquake_solution :
    PredictedEarthquakes 8 16 32 60 ∧
    (∀ s t f a, PredictedEarthquakes s t f a → s = 8) ∧
    (∀ s t f a, PredictedEarthquakes s t f a → t = 16) ∧
    (∀ s t f a, PredictedEarthquakes s t f a → f = 32) ∧
    (∀ s t f a, PredictedEarthquakes s t f a → a = 60) ∧
    (ActualCollapseTotal 0 0 0 4 ∧ ActualCollapseTotal 8 16 32 60 ∧ (4 : ℕ) ≠ 60) :=
  ⟨earthquake_exists, earthquake_second, earthquake_third, earthquake_fourth,
    earthquake_predicted_total, earthquake_actual_examples⟩

end LemmaWeave.Tests.GSM8KDaily0907D

#print axioms LemmaWeave.Tests.GSM8KDaily0907D.shared_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907D.grades_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907D.earnings_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907D.food_bill_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907D.tea_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907D.candy_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907D.tickets_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907D.budget_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907D.monkeys_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907D.earthquake_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907D.shared_solution to "work/gsm8k-daily4-shared-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907D.grades_solution to "work/gsm8k-daily4-grades-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907D.earnings_solution to "work/gsm8k-daily4-earnings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907D.food_bill_solution to "work/gsm8k-daily4-food-bill-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907D.tea_solution to "work/gsm8k-daily4-tea-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907D.candy_solution to "work/gsm8k-daily4-candy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907D.tickets_solution to "work/gsm8k-daily4-tickets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907D.budget_solution to "work/gsm8k-daily4-budget-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907D.monkeys_solution to "work/gsm8k-daily4-monkeys-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907D.earthquake_solution to "work/gsm8k-daily4-earthquake-graph.json"
