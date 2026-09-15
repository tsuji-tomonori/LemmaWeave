import LemmaWeave.Problems.GSM8K.Daily0915EModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0915E
open LemmaWeave.Problems.GSM8K.Daily0915E

theorem hair_goal (a b c d : Nat) (h : HaircutGoal a b c d) : c = 10 := by
  rcases h with ⟨ha, hb, hc, hd⟩
  omega

theorem hair_percent (a b c d : Nat) (h : HaircutGoal a b c d) : d = 80 := by
  have hc := hair_goal a b c d h
  rcases h with ⟨ha, hb, hx, hd⟩
  norm_num [ha, hc] at hd
  omega

theorem hair_solution : HaircutGoal 8 2 10 80 ∧ 10 = 10 ∧ 80 = 80 := by
  have h : HaircutGoal 8 2 10 80 := by norm_num [HaircutGoal]
  exact ⟨h, hair_goal _ _ _ _ h, hair_percent _ _ _ _ h⟩

theorem bike_available (a b c d e : Nat) (h : BikeFund a b c d e) : d = 370 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  omega

theorem bike_earn (a b c d e : Nat) (h : BikeFund a b c d e) : e = 230 := by
  have hd := bike_available a b c d e h
  rcases h with ⟨ha, hb, hc, hx, he⟩
  omega

theorem bike_solution : BikeFund 600 120 250 370 230 ∧ 370 = 370 ∧ 230 = 230 := by
  have h : BikeFund 600 120 250 370 230 := by norm_num [BikeFund]
  exact ⟨h, bike_available _ _ _ _ _ h, bike_earn _ _ _ _ _ h⟩

theorem stationery_given (a b c d e f g h i j : Nat) (x : StationeryLeft a b c d e f g h i j) :
    f = 56 ∧ g = 42 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hc, hd, he] at hf hg
  exact ⟨hf, hg⟩

theorem stationery_left (a b c d e f g h i j : Nat) (x : StationeryLeft a b c d e f g h i j) :
    h = 4 ∧ i = 18 := by
  have hfg := stationery_given a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  rcases hfg with ⟨hf', hg'⟩
  omega

theorem stationery_total (a b c d e f g h i j : Nat) (x : StationeryLeft a b c d e f g h i j) :
    j = 22 := by
  have hhi := stationery_left a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  omega

theorem stationery_solution : StationeryLeft 60 60 7 8 6 56 42 4 18 22 ∧
    (56 = 56 ∧ 42 = 42) ∧ (4 = 4 ∧ 18 = 18) ∧ 22 = 22 := by
  have h : StationeryLeft 60 60 7 8 6 56 42 4 18 22 := by norm_num [StationeryLeft]
  exact ⟨h, stationery_given _ _ _ _ _ _ _ _ _ _ h,
    stationery_left _ _ _ _ _ _ _ _ _ _ h, stationery_total _ _ _ _ _ _ _ _ _ _ h⟩

theorem chicken_feed_cost (a b c d e f g h i j : Nat) (x : ChickenProfit a b c d e f g h i j) : e = 20 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hb, hc, hd] at he
  omega

theorem chicken_unit_profit (a b c d e f g h i j : Nat) (x : ChickenProfit a b c d e f g h i j) :
    f = 130 := by
  have he := chicken_feed_cost a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hh, hi, hj⟩
  omega

theorem chicken_total_cents (a b c d e f g h i j : Nat) (x : ChickenProfit a b c d e f g h i j) :
    i = 6500 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hg, hh] at hi
  exact hi

theorem chicken_count (a b c d e f g h i j : Nat) (x : ChickenProfit a b c d e f g h i j) : j = 50 := by
  have hf := chicken_unit_profit a b c d e f g h i j x
  have hi := chicken_total_cents a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg, hh, hy, hj⟩
  norm_num [hf, hi] at hj
  omega

theorem chicken_solution : ChickenProfit 150 20 200 2 20 130 65 100 6500 50 ∧
    20 = 20 ∧ 130 = 130 ∧ 6500 = 6500 ∧ 50 = 50 := by
  have h : ChickenProfit 150 20 200 2 20 130 65 100 6500 50 := by norm_num [ChickenProfit]
  exact ⟨h, chicken_feed_cost _ _ _ _ _ _ _ _ _ _ h,
    chicken_unit_profit _ _ _ _ _ _ _ _ _ _ h,
    chicken_total_cents _ _ _ _ _ _ _ _ _ _ h, chicken_count _ _ _ _ _ _ _ _ _ _ h⟩

theorem rain_camp (a b c d e f : Nat) (h : CampingRain a b c d e f) : d = 14 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem rain_less (a b c d e f : Nat) (h : CampingRain a b c d e f) : f = 12 := by
  have hd := rain_camp a b c d e f h
  rcases h with ⟨ha, hb, hc, hx, he, hf⟩
  omega

theorem rain_solution : CampingRain 3 6 5 14 26 12 ∧ 14 = 14 ∧ 12 = 12 := by
  have h : CampingRain 3 6 5 14 26 12 := by norm_num [CampingRain]
  exact ⟨h, rain_camp _ _ _ _ _ _ h, rain_less _ _ _ _ _ _ h⟩

theorem souvenir_spend (a b c d e f g h i j k : Nat) (x : SouvenirKeychains a b c d e f g h i j k) :
    f = 36 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [hb, hc, hd, he] at hf
  exact hf

theorem souvenir_left (a b c d e f g h i j k : Nat) (x : SouvenirKeychains a b c d e f g h i j k) :
    g = 14 := by
  have hf := souvenir_spend a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg, hh, hi, hj, hk⟩
  omega

theorem souvenir_keychains (a b c d e f g h i j k : Nat)
    (x : SouvenirKeychains a b c d e f g h i j k) : j = 7 ∧ k = 21 := by
  have hg := souvenir_left a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hh, hi, hj, hk⟩
  norm_num [hh, hg] at hj
  constructor <;> omega

theorem souvenir_solution : SouvenirKeychains 50 8 2 10 2 36 14 2 3 7 21 ∧
    36 = 36 ∧ 14 = 14 ∧ (7 = 7 ∧ 21 = 21) := by
  have h : SouvenirKeychains 50 8 2 10 2 36 14 2 3 7 21 := by norm_num [SouvenirKeychains]
  exact ⟨h, souvenir_spend _ _ _ _ _ _ _ _ _ _ _ h,
    souvenir_left _ _ _ _ _ _ _ _ _ _ _ h, souvenir_keychains _ _ _ _ _ _ _ _ _ _ _ h⟩

theorem age_cori_future (a b c d e f : Nat) (h : AuntAge a b c d e f) : c = 8 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem age_aunt_future (a b c d e f : Nat) (h : AuntAge a b c d e f) : e = 24 := by
  have hc := age_cori_future a b c d e f h
  rcases h with ⟨ha, hb, hx, hd, he, hf⟩
  norm_num [hc, hd] at he
  exact he

theorem age_aunt_today (a b c d e f : Nat) (h : AuntAge a b c d e f) : f = 19 := by
  have he := age_aunt_future a b c d e f h
  rcases h with ⟨ha, hb, hc, hd, hx, hf⟩
  omega

theorem age_solution : AuntAge 3 5 8 3 24 19 ∧ 8 = 8 ∧ 24 = 24 ∧ 19 = 19 := by
  have h : AuntAge 3 5 8 3 24 19 := by norm_num [AuntAge]
  exact ⟨h, age_cori_future _ _ _ _ _ _ h, age_aunt_future _ _ _ _ _ _ h,
    age_aunt_today _ _ _ _ _ _ h⟩

theorem party_base (a b c d e f g h i : Nat) (x : PartyInvitations a b c d e f g h i) :
    c = 10 ∧ d = 15 ∧ e = 30 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hb] at hc
  omega

theorem party_other (a b c d e f g h i : Nat) (x : PartyInvitations a b c d e f g h i) : h = 6 := by
  have hbase := party_base a b c d e f g h i x
  rcases hbase with ⟨hc', hd', he'⟩
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [he', hf, hg] at hh
  omega

theorem party_total (a b c d e f g h i : Nat) (x : PartyInvitations a b c d e f g h i) : i = 36 := by
  have he := (party_base a b c d e f g h i x).2.2
  have hh := party_other a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hy, hi⟩
  omega

theorem party_solution : PartyInvitations 5 2 10 15 30 20 100 6 36 ∧
    (10 = 10 ∧ 15 = 15 ∧ 30 = 30) ∧ 6 = 6 ∧ 36 = 36 := by
  have h : PartyInvitations 5 2 10 15 30 20 100 6 36 := by norm_num [PartyInvitations]
  exact ⟨h, party_base _ _ _ _ _ _ _ _ _ h, party_other _ _ _ _ _ _ _ _ _ h,
    party_total _ _ _ _ _ _ _ _ _ h⟩

theorem crane_individual (a b c d e f g h i j k : ℚ) (x : CraneComparison a b c d e f g h i j k) :
    g = 14 ∧ h = 20 ∧ i = 5 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [ha, hb] at hg
  norm_num [hc, hd] at hh
  norm_num [he, hf] at hi
  constructor
  · linarith
  · constructor <;> linarith

theorem crane_equal_average (a b c d e f g h i j k : ℚ)
    (x : CraneComparison a b c d e f g h i j k) : j = 13 := by
  have hp := crane_individual a b c d e f g h i j k x
  rcases hp with ⟨hg, hh, hi⟩
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hy, hz, hj, hk⟩
  norm_num [hg, hh, hi] at hj
  linarith

theorem crane_aggregate (a b c d e f g h i j k : ℚ)
    (x : CraneComparison a b c d e f g h i j k) : k = 25 / 2 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [ha, hb, hc, hd, he, hf] at hk ⊢
  linarith

theorem crane_solution :
    CraneComparison 200 228 100 120 140 147 14 20 5 13 (25 / 2) ∧
      (14 = 14 ∧ 20 = 20 ∧ 5 = 5) ∧ (13 : ℚ) = 13 ∧ (25 / 2 : ℚ) = 25 / 2 := by
  have h : CraneComparison 200 228 100 120 140 147 14 20 5 13 (25 / 2) := by
    norm_num [CraneComparison]
  exact ⟨h, crane_individual _ _ _ _ _ _ _ _ _ _ _ h,
    crane_equal_average _ _ _ _ _ _ _ _ _ _ _ h, crane_aggregate _ _ _ _ _ _ _ _ _ _ _ h⟩

theorem revenue_parts (a b c d e f g h i : Nat) (x : SharedRevenue a b c d e f g h i) :
    c = 18 ∧ f = 36 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hb] at hc
  norm_num [hd, he] at hf
  exact ⟨hc, hf⟩

theorem revenue_total (a b c d e f g h i : Nat) (x : SharedRevenue a b c d e f g h i) :
    g = 54 := by
  have hcf := revenue_parts a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  omega

theorem revenue_each (a b c d e f g h i : Nat) (x : SharedRevenue a b c d e f g h i) :
    i = 27 := by
  have hg := revenue_total a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hh, hi⟩
  norm_num [hg, hh] at hi
  omega

theorem revenue_solution : SharedRevenue 6 3 18 18 2 36 54 2 27 ∧
    (18 = 18 ∧ 36 = 36) ∧ 54 = 54 ∧ 27 = 27 := by
  have h : SharedRevenue 6 3 18 18 2 36 54 2 27 := by norm_num [SharedRevenue]
  exact ⟨h, revenue_parts _ _ _ _ _ _ _ _ _ h, revenue_total _ _ _ _ _ _ _ _ _ h,
    revenue_each _ _ _ _ _ _ _ _ _ h⟩

#print axioms hair_solution
#print axioms bike_solution
#print axioms stationery_solution
#print axioms chicken_solution
#print axioms rain_solution
#print axioms souvenir_solution
#print axioms age_solution
#print axioms party_solution
#print axioms crane_solution
#print axioms revenue_solution
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915E.hair_solution to "work/gsm8k-daily44-hair-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915E.bike_solution to "work/gsm8k-daily44-bike-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915E.stationery_solution to "work/gsm8k-daily44-stationery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915E.chicken_solution to "work/gsm8k-daily44-chicken-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915E.rain_solution to "work/gsm8k-daily44-rain-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915E.souvenir_solution to "work/gsm8k-daily44-souvenir-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915E.age_solution to "work/gsm8k-daily44-age-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915E.party_solution to "work/gsm8k-daily44-party-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915E.crane_solution to "work/gsm8k-daily44-crane-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915E.revenue_solution to "work/gsm8k-daily44-revenue-graph.json"

end LemmaWeave.Tests.GSM8KDaily0915E
