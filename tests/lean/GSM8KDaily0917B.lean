import LemmaWeave.Problems.GSM8K.Daily0917BModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0917B
open LemmaWeave.Problems.GSM8K.Daily0917B

theorem newscast_accounted (a b c d e f g : Nat) (h : NewscastAds a b c d e f g) : f = 24 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hb, hc, hd, he] at hf
  exact hf

theorem newscast_ads (a b c d e f g : Nat) (h : NewscastAds a b c d e f g) : g = 6 := by
  have hf := newscast_accounted a b c d e f g h
  rcases h with ⟨ha, hb, hc, hd, he, hx, hg⟩
  omega

theorem newscast_solution : NewscastAds 30 12 5 5 2 24 6 ∧ 24 = 24 ∧ 6 = 6 := by
  have h : NewscastAds 30 12 5 5 2 24 6 := by norm_num [NewscastAds]
  exact ⟨h, newscast_accounted _ _ _ _ _ _ _ h, newscast_ads _ _ _ _ _ _ _ h⟩

theorem amoeba_counts (a b c d e f g h : Nat) (x : AmoebaGrowth a b c d e f g h) :
    b = 2 ∧ c = 4 ∧ d = 8 ∧ e = 16 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega

theorem amoeba_days (a b c d e f g h : Nat) (x : AmoebaGrowth a b c d e f g h) :
    (b = 2 ∧ c = 4 ∧ d = 8 ∧ e = 16) ∧ h = 8 := by
  have hcounts := amoeba_counts a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hf, hg] at hh
  exact ⟨hcounts, hh⟩

theorem amoeba_solution : AmoebaGrowth 1 2 4 8 16 2 4 8 ∧
    (2 = 2 ∧ 4 = 4 ∧ 8 = 8 ∧ 16 = 16) ∧ 8 = 8 := by
  have h : AmoebaGrowth 1 2 4 8 16 2 4 8 := by norm_num [AmoebaGrowth]
  have hd := amoeba_days _ _ _ _ _ _ _ _ h
  exact ⟨h, hd.1, hd.2⟩

theorem savings_income (a b c d e f g h : Nat) (x : AnnualSavings a b c d e f g h) : e = 1150 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega

theorem savings_saved (a b c d e f g h : Nat) (x : AnnualSavings a b c d e f g h) : h = 460 := by
  have he := savings_income a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hh⟩
  norm_num [he, hf, hg] at hh
  omega

theorem savings_solution : AnnualSavings 600 250 150 150 1150 100 40 460 ∧ 1150 = 1150 ∧ 460 = 460 := by
  have h : AnnualSavings 600 250 150 150 1150 100 40 460 := by norm_num [AnnualSavings]
  exact ⟨h, savings_income _ _ _ _ _ _ _ _ h, savings_saved _ _ _ _ _ _ _ _ h⟩

theorem questions_hourly (a b c d e f g : Nat) (x : MathQuestions a b c d e f g) :
    b = 72 ∧ c = 108 ∧ d = 54 ∧ e = 162 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega

theorem questions_total (a b c d e f g : Nat) (x : MathQuestions a b c d e f g) : g = 324 := by
  have he := (questions_hourly a b c d e f g x).2.2.2
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg⟩
  norm_num [he, hf] at hg
  exact hg

theorem questions_solution : MathQuestions 36 72 108 54 162 2 324 ∧
    (72 = 72 ∧ 108 = 108 ∧ 54 = 54 ∧ 162 = 162) ∧ 324 = 324 := by
  have h : MathQuestions 36 72 108 54 162 2 324 := by norm_num [MathQuestions]
  exact ⟨h, questions_hourly _ _ _ _ _ _ _ h, questions_total _ _ _ _ _ _ _ h⟩

theorem votes_barry (a b c d e : Nat) (x : ClassVotes a b c d e) : c = 11 ∧ d = 22 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega

theorem votes_marcy (a b c d e : Nat) (x : ClassVotes a b c d e) : e = 66 := by
  have hd := (votes_barry a b c d e x).2
  rcases x with ⟨ha, hb, hc, hx, he⟩
  omega

theorem votes_solution : ClassVotes 8 3 11 22 66 ∧ (11 = 11 ∧ 22 = 22) ∧ 66 = 66 := by
  have h : ClassVotes 8 3 11 22 66 := by norm_num [ClassVotes]
  exact ⟨h, votes_barry _ _ _ _ _ h, votes_marcy _ _ _ _ _ h⟩

theorem mower_reference_unit (a b c d e f g : Nat) (x : LawnmowerReference a b c d e f g) :
    d = 720 ∧ e = 2520 ∧ g = 10080 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb, hc] at hd
  have hd' : d = 720 := by omega
  have he' : e = 2520 := by omega
  norm_num [hf, he'] at hg
  exact ⟨hd', he', hg⟩

theorem mower_two_readings :
    (720 = 720 ∧ 2520 = 2520 ∧ 10080 = 10080) ∧
    LawnmowerStandard 1800 3000 4 12000 ∧ 10080 ≠ 12000 := by
  have href : LawnmowerReference 1800 2 5 720 2520 4 10080 := by
    norm_num [LawnmowerReference]
  have hunit := mower_reference_unit _ _ _ _ _ _ _ href
  exact ⟨hunit, by norm_num [LawnmowerStandard], by norm_num⟩

theorem mower_solution :
    LawnmowerReference 1800 2 5 720 2520 4 10080 ∧
    (720 = 720 ∧ 2520 = 2520 ∧ 10080 = 10080) ∧
    (LawnmowerStandard 1800 3000 4 12000 ∧ 10080 ≠ 12000) := by
  have h : LawnmowerReference 1800 2 5 720 2520 4 10080 := by norm_num [LawnmowerReference]
  exact ⟨h, mower_reference_unit _ _ _ _ _ _ _ h, mower_two_readings.2⟩

theorem bonus_percent (a b c d e f g : Nat) (x : AnnualBonus a b c d e f g) : d = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb, hc] at hd
  omega

theorem bonus_total (a b c d e f g : Nat) (x : AnnualBonus a b c d e f g) : f = 20000 ∧ g = 220000 := by
  have hd := bonus_percent a b c d e f g x
  rcases x with ⟨ha, hb, hc, hx, he, hf, hg⟩
  norm_num [hd, hc, he] at hf
  omega

theorem bonus_solution : AnnualBonus 100000 10000 100 10 200000 20000 220000 ∧
    10 = 10 ∧ (20000 = 20000 ∧ 220000 = 220000) := by
  have h : AnnualBonus 100000 10000 100 10 200000 20000 220000 := by norm_num [AnnualBonus]
  exact ⟨h, bonus_percent _ _ _ _ _ _ _ h, bonus_total _ _ _ _ _ _ _ h⟩

theorem manuscripts_unit (a b c d e f g : Nat) (x : ManuscriptCost a b c d e f g) :
    e = 2000 ∧ f = 2500 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at he
  omega

theorem manuscripts_total (a b c d e f g : Nat) (x : ManuscriptCost a b c d e f g) :
    g = 25000 ∧ g / 100 = 250 := by
  have hf := (manuscripts_unit a b c d e f g x).2
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg⟩
  norm_num [hf, hd] at hg
  subst g
  norm_num

theorem manuscripts_solution : ManuscriptCost 400 5 500 10 2000 2500 25000 ∧
    (2000 = 2000 ∧ 2500 = 2500) ∧ (25000 = 25000 ∧ 25000 / 100 = 250) := by
  have h : ManuscriptCost 400 5 500 10 2000 2500 25000 := by norm_num [ManuscriptCost]
  exact ⟨h, manuscripts_unit _ _ _ _ _ _ _ h, manuscripts_total _ _ _ _ _ _ _ h⟩

theorem rope_rates (a b c d e f g : Nat) (x : RopeSkips a b c d e f g) : c = 70 ∧ e = 150 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  omega

theorem rope_total (a b c d e f g : Nat) (x : RopeSkips a b c d e f g) : g = 2250 := by
  have he := (rope_rates a b c d e f g x).2
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg⟩
  norm_num [he, hf] at hg
  exact hg

theorem rope_solution : RopeSkips 4200 60 70 80 150 15 2250 ∧
    (70 = 70 ∧ 150 = 150) ∧ 2250 = 2250 := by
  have h : RopeSkips 4200 60 70 80 150 15 2250 := by norm_num [RopeSkips]
  exact ⟨h, rope_rates _ _ _ _ _ _ _ h, rope_total _ _ _ _ _ _ _ h⟩

theorem pizza_work (a b c d e f g h i j k : Nat) (x : PizzaSequential a b c d e f g h i j k) :
    c = 4 ∧ e = 120 ∧ g = 6 ∧ i = 180 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [ha, hb] at hc
  have hc' : c = 4 := by omega
  norm_num [hc', hd] at he
  norm_num [ha, hf] at hg
  have hg' : g = 6 := by omega
  norm_num [hg', hh] at hi
  exact ⟨hc', he, hg', hi⟩

theorem pizza_schedules :
    (4 = 4 ∧ 120 = 120 ∧ 6 = 6 ∧ 180 = 180) ∧
    PizzaOverlapped 30 6 30 180 210 ∧ 300 ≠ 210 := by
  have hseq : PizzaSequential 12 3 4 30 120 2 6 30 180 300 5 := by
    norm_num [PizzaSequential]
  have hwork := pizza_work _ _ _ _ _ _ _ _ _ _ _ hseq
  exact ⟨hwork, by norm_num [PizzaOverlapped], by norm_num⟩

theorem pizza_solution :
    PizzaSequential 12 3 4 30 120 2 6 30 180 300 5 ∧
    (4 = 4 ∧ 120 = 120 ∧ 6 = 6 ∧ 180 = 180) ∧
    (PizzaOverlapped 30 6 30 180 210 ∧ 300 ≠ 210) := by
  have h : PizzaSequential 12 3 4 30 120 2 6 30 180 300 5 := by norm_num [PizzaSequential]
  exact ⟨h, pizza_work _ _ _ _ _ _ _ _ _ _ _ h, pizza_schedules.2⟩

#print axioms newscast_solution
#print axioms amoeba_solution
#print axioms savings_solution
#print axioms questions_solution
#print axioms votes_solution
#print axioms mower_solution
#print axioms bonus_solution
#print axioms manuscripts_solution
#print axioms rope_solution
#print axioms pizza_solution
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917B.newscast_solution to "work/gsm8k-daily46-newscast-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917B.amoeba_solution to "work/gsm8k-daily46-amoeba-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917B.savings_solution to "work/gsm8k-daily46-savings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917B.questions_solution to "work/gsm8k-daily46-questions-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917B.votes_solution to "work/gsm8k-daily46-votes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917B.mower_solution to "work/gsm8k-daily46-mower-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917B.bonus_solution to "work/gsm8k-daily46-bonus-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917B.manuscripts_solution to "work/gsm8k-daily46-manuscripts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917B.rope_solution to "work/gsm8k-daily46-rope-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917B.pizza_solution to "work/gsm8k-daily46-pizza-graph.json"

end LemmaWeave.Tests.GSM8KDaily0917B
