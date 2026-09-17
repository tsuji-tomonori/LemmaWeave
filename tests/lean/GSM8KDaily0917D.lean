import LemmaWeave.Problems.GSM8K.Daily0917DModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0917D
open LemmaWeave.Problems.GSM8K.Daily0917D

theorem juice_lemon_remaining (a b c d e : Nat) (h : JuiceOrders a b c d e) :
    b = 12 ∧ c = 18 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  omega

theorem juice_mango_orange (a b c d e : Nat) (h : JuiceOrders a b c d e) :
    d = 6 ∧ e = 12 := by
  have hbc := juice_lemon_remaining a b c d e h
  rcases h with ⟨ha, hb, hc, hd, he⟩
  omega

theorem juice_solution : JuiceOrders 30 12 18 6 12 ∧
    (12 = 12 ∧ 18 = 18) ∧ (6 = 6 ∧ 12 = 12) := by
  have h : JuiceOrders 30 12 18 6 12 := by norm_num [JuiceOrders]
  exact ⟨h, juice_lemon_remaining _ _ _ _ _ h, juice_mango_orange _ _ _ _ _ h⟩

theorem apples_total (a b c d e f : Nat) (h : AppleAverage a b c d e f) : e = 90 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hc, hd] at he
  exact he

theorem apples_layla (a b c d e f : Nat) (h : AppleAverage a b c d e f) : f = 22 := by
  have he := apples_total a b c d e f h
  rcases h with ⟨ha, hb, hc, hd, hx, hf⟩
  omega

theorem apples_solution : AppleAverage 40 28 3 30 90 22 ∧ 90 = 90 ∧ 22 = 22 := by
  have h : AppleAverage 40 28 3 30 90 22 := by norm_num [AppleAverage]
  exact ⟨h, apples_total _ _ _ _ _ _ h, apples_layla _ _ _ _ _ _ h⟩

theorem sneakers_income (a b c d e f g h i j : Nat) (x : SneakerCost a b c d e f g h i j) :
    g = 24 ∧ h = 18 ∧ i = 50 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [ha, hb] at hg
  norm_num [hc, hd] at hh
  norm_num [he, hf] at hi
  exact ⟨hg, hh, hi⟩

theorem sneakers_total (a b c d e f g h i j : Nat) (x : SneakerCost a b c d e f g h i j) :
    j = 92 := by
  have hghi := sneakers_income a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  omega

theorem sneakers_solution : SneakerCost 3 8 2 9 10 5 24 18 50 92 ∧
    (24 = 24 ∧ 18 = 18 ∧ 50 = 50) ∧ 92 = 92 := by
  have h : SneakerCost 3 8 2 9 10 5 24 18 50 92 := by norm_num [SneakerCost]
  exact ⟨h, sneakers_income _ _ _ _ _ _ _ _ _ _ h,
    sneakers_total _ _ _ _ _ _ _ _ _ _ h⟩

theorem wedding_family (a b c d e f : Nat) (h : WeddingFriends a b c d e f) :
    d = 40 ∧ e = 40 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hb, hc] at hd he
  exact ⟨hd, he⟩

theorem wedding_friends (a b c d e f : Nat) (h : WeddingFriends a b c d e f) : f = 100 := by
  have hde := wedding_family a b c d e f h
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem wedding_solution : WeddingFriends 180 20 2 40 40 100 ∧
    (40 = 40 ∧ 40 = 40) ∧ 100 = 100 := by
  have h : WeddingFriends 180 20 2 40 40 100 := by norm_num [WeddingFriends]
  exact ⟨h, wedding_family _ _ _ _ _ _ h, wedding_friends _ _ _ _ _ _ h⟩

theorem weights_each (a b c d e f : Nat) (h : CombinedWeight a b c d e f) :
    d = 102 ∧ e = 107 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem weights_total (a b c d e f : Nat) (h : CombinedWeight a b c d e f) : f = 319 := by
  have hde := weights_each a b c d e f h
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem weights_solution : CombinedWeight 110 8 5 102 107 319 ∧
    (102 = 102 ∧ 107 = 107) ∧ 319 = 319 := by
  have h : CombinedWeight 110 8 5 102 107 319 := by norm_num [CombinedWeight]
  exact ⟨h, weights_each _ _ _ _ _ _ h, weights_total _ _ _ _ _ _ h⟩

theorem boxing_parts (a b c d e f g h : Nat) (x : BoxingTraining a b c d e f g h) :
    c = 3 ∧ f = 12 ∧ g = 6 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  norm_num [hd, he] at hf
  omega

theorem boxing_total (a b c d e f g h : Nat) (x : BoxingTraining a b c d e f g h) : h = 9 := by
  have hcfg := boxing_parts a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega

theorem boxing_solution : BoxingTraining 3 1 3 4 3 12 6 9 ∧
    (3 = 3 ∧ 12 = 12 ∧ 6 = 6) ∧ 9 = 9 := by
  have h : BoxingTraining 3 1 3 4 3 12 6 9 := by norm_num [BoxingTraining]
  exact ⟨h, boxing_parts _ _ _ _ _ _ _ _ h, boxing_total _ _ _ _ _ _ _ _ h⟩

theorem salary_first_and_raise (a b c d e f g h i j : Nat)
    (x : SalaryEarnings a b c d e f g h i j) : c = 72000 ∧ f = 1800 ∧ g = 7800 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [ha, hb] at hc
  norm_num [hd, he, ha] at hf
  omega

theorem salary_later (a b c d e f g h i j : Nat)
    (x : SalaryEarnings a b c d e f g h i j) : i = 187200 := by
  have hcfg := salary_first_and_raise a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hcfg.2.2, hb, hh] at hi
  exact hi

theorem salary_total (a b c d e f g h i j : Nat)
    (x : SalaryEarnings a b c d e f g h i j) : j = 259200 := by
  have hcfg := salary_first_and_raise a b c d e f g h i j x
  have hi := salary_later a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hx, hj⟩
  omega

theorem salary_solution : SalaryEarnings 6000 12 72000 30 100 1800 7800 2 187200 259200 ∧
    (72000 = 72000 ∧ 1800 = 1800 ∧ 7800 = 7800) ∧ 187200 = 187200 ∧
    259200 = 259200 := by
  have h : SalaryEarnings 6000 12 72000 30 100 1800 7800 2 187200 259200 := by
    norm_num [SalaryEarnings]
  exact ⟨h, salary_first_and_raise _ _ _ _ _ _ _ _ _ _ h,
    salary_later _ _ _ _ _ _ _ _ _ _ h, salary_total _ _ _ _ _ _ _ _ _ _ h⟩

theorem tickets_parts (a b c d e f g : Nat) (h : TicketCost a b c d e f g) :
    e = 36 ∧ f = 30 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at he
  norm_num [hc, hd] at hf
  exact ⟨he, hf⟩

theorem tickets_total (a b c d e f g : Nat) (h : TicketCost a b c d e f g) : g = 66 := by
  have hef := tickets_parts a b c d e f g h
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega

theorem tickets_solution : TicketCost 3 12 3 10 36 30 66 ∧
    (36 = 36 ∧ 30 = 30) ∧ 66 = 66 := by
  have h : TicketCost 3 12 3 10 36 30 66 := by norm_num [TicketCost]
  exact ⟨h, tickets_parts _ _ _ _ _ _ _ h, tickets_total _ _ _ _ _ _ _ h⟩

theorem jogging_distance (a b c d e f g : Nat) (h : JoggingCalories a b c d e f g) :
    d = 500 ∧ e = 2500 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hd
  norm_num [hd, hc] at he
  exact ⟨hd, he⟩

theorem jogging_calories (a b c d e f g : Nat) (h : JoggingCalories a b c d e f g) : g = 100 := by
  have hde := jogging_distance a b c d e f g h
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hde.2, hf] at hg
  omega

theorem jogging_solution : JoggingCalories 5 100 5 500 2500 25 100 ∧
    (500 = 500 ∧ 2500 = 2500) ∧ 100 = 100 := by
  have h : JoggingCalories 5 100 5 500 2500 25 100 := by norm_num [JoggingCalories]
  exact ⟨h, jogging_distance _ _ _ _ _ _ _ h, jogging_calories _ _ _ _ _ _ _ h⟩

theorem weightloss_fixed_outcome (a b c d e f g : ℚ) (h : WeightLossFixed a b c d e f g) :
    c = 192 ∧ d = 24 ∧ f = 120 ∧ g = 36 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  norm_num [hc] at hd
  norm_num [hc, hd, he] at hf
  norm_num [ha, hf] at hg
  exact ⟨hc, hd, hf, hg⟩

theorem weightloss_compound_outcome (a b c d e f g h : ℚ)
    (x : WeightLossCompound a b c d e f g h) :
    e = 168 ∧ f = 147 ∧ g = 1029 / 8 ∧ h = 219 / 8 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  norm_num [hd, hc] at he
  norm_num [hd, he] at hf
  norm_num [hd, hf] at hg
  norm_num [ha, hg] at hh
  exact ⟨he, hf, hg, hh⟩

theorem weightloss_solution :
    WeightLossFixed 156 36 192 24 3 120 36 ∧
    WeightLossCompound 156 36 192 (7 / 8) 168 147 (1029 / 8) (219 / 8) ∧
    (((192 : ℚ) = 192 ∧ (24 : ℚ) = 24 ∧ (120 : ℚ) = 120 ∧ (36 : ℚ) = 36) ∧
      ((168 : ℚ) = 168 ∧ (147 : ℚ) = 147 ∧ (1029 / 8 : ℚ) = 1029 / 8 ∧
        (219 / 8 : ℚ) = 219 / 8)) ∧
    (36 : ℚ) ≠ 219 / 8 := by
  have hf : WeightLossFixed 156 36 192 24 3 120 36 := by
    norm_num [WeightLossFixed]
  have hc : WeightLossCompound 156 36 192 (7 / 8) 168 147 (1029 / 8) (219 / 8) := by
    norm_num [WeightLossCompound]
  have hfo := weightloss_fixed_outcome _ _ _ _ _ _ _ hf
  have hco := weightloss_compound_outcome _ _ _ _ _ _ _ _ hc
  exact ⟨hf, hc, ⟨hfo, hco⟩, by norm_num⟩

#print axioms juice_solution
#print axioms apples_solution
#print axioms sneakers_solution
#print axioms wedding_solution
#print axioms weights_solution
#print axioms boxing_solution
#print axioms salary_solution
#print axioms tickets_solution
#print axioms jogging_solution
#print axioms weightloss_solution
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917D.juice_solution to "work/gsm8k-daily48-juice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917D.apples_solution to "work/gsm8k-daily48-apples-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917D.sneakers_solution to "work/gsm8k-daily48-sneakers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917D.wedding_solution to "work/gsm8k-daily48-wedding-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917D.weights_solution to "work/gsm8k-daily48-weights-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917D.boxing_solution to "work/gsm8k-daily48-boxing-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917D.salary_solution to "work/gsm8k-daily48-salary-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917D.tickets_solution to "work/gsm8k-daily48-tickets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917D.jogging_solution to "work/gsm8k-daily48-jogging-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917D.weightloss_solution to "work/gsm8k-daily48-weightloss-graph.json"

end LemmaWeave.Tests.GSM8KDaily0917D
