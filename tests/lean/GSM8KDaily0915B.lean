import LemmaWeave.Problems.GSM8K.Daily0915BModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0915B
open LemmaWeave.Problems.GSM8K.Daily0915B

theorem hay_rate (a b c d e f g h i j k l m : Nat)
    (x : HayBales a b c d e f g h i j k l m) : c = 112 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [ha, hb] at hc
  omega

theorem hay_monthly (a b c d e f g h i j k l m : Nat)
    (x : HayBales a b c d e f g h i j k l m) : f = 1344 ∧ g = 16128 := by
  have hc := hay_rate a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [hb, hd] at he
  norm_num [hc, he] at hf
  norm_num [hf] at hg
  exact ⟨hf, hg⟩

theorem hay_consumed (a b c d e f g h i j k l m : Nat)
    (x : HayBales a b c d e f g h i j k l m) : l = 3294 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [hh, hi] at hk
  norm_num [hj, hk] at hl
  exact hl

theorem hay_left (a b c d e f g h i j k l m : Nat)
    (x : HayBales a b c d e f g h i j k l m) : m = 12834 := by
  have hfg := hay_monthly a b c d e f g h i j k l m x
  have hl := hay_consumed a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hx, hm⟩
  omega

theorem hay_solution :
    HayBales 560 5 112 7 12 1344 16128 9 3 122 27 3294 12834 ∧
    112 = 112 ∧ (1344 = 1344 ∧ 16128 = 16128) ∧ 3294 = 3294 ∧ 12834 = 12834 := by
  have h : HayBales 560 5 112 7 12 1344 16128 9 3 122 27 3294 12834 := by
    norm_num [HayBales]
  exact ⟨h, hay_rate _ _ _ _ _ _ _ _ _ _ _ _ _ h,
    hay_monthly _ _ _ _ _ _ _ _ _ _ _ _ _ h,
    hay_consumed _ _ _ _ _ _ _ _ _ _ _ _ _ h,
    hay_left _ _ _ _ _ _ _ _ _ _ _ _ _ h⟩

theorem river_boats (a b c d e : Nat) (h : RiverRace a b c d e) : d = 8 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb, hc] at hd he hf
  omega

theorem river_solution : RiverRace 42 3 2 8 42 ∧ 8 = 8 := by
  have h : RiverRace 42 3 2 8 42 := by norm_num [RiverRace]
  exact ⟨h, river_boats _ _ _ _ _ h⟩

theorem movie_lengths (a b c d e f g h i j : Nat)
    (x : CookAndMovies a b c d e f g h i j) : c = 120 ∧ f = 210 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  omega

theorem movie_cooking (a b c d e f g h i j : Nat)
    (x : CookAndMovies a b c d e f g h i j) : e = 20 ∧ g = 30 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  omega

theorem movie_hours (a b c d e f g h i j : Nat)
    (x : CookAndMovies a b c d e f g h i j) : h = 240 ∧ j = 4 := by
  have hwatch := movie_lengths a b c d e f g h i j x
  have hcook := movie_cooking a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hi] at hj
  omega

theorem movie_solution : CookAndMovies 90 30 120 10 20 210 30 240 60 4 ∧
    (120 = 120 ∧ 210 = 210) ∧ (20 = 20 ∧ 30 = 30) ∧ (240 = 240 ∧ 4 = 4) := by
  have h : CookAndMovies 90 30 120 10 20 210 30 240 60 4 := by
    norm_num [CookAndMovies]
  exact ⟨h, movie_lengths _ _ _ _ _ _ _ _ _ _ h,
    movie_cooking _ _ _ _ _ _ _ _ _ _ h, movie_hours _ _ _ _ _ _ _ _ _ _ h⟩

theorem ages_eustace (a b c d e : Nat) (h : MilfordAge a b c d e) : a = 36 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  omega

theorem ages_milford (a b c d e : Nat) (h : MilfordAge a b c d e) : d = 18 := by
  have ha := ages_eustace a b c d e h
  rcases h with ⟨hx, hb, hc, hd, he⟩
  omega

theorem ages_solution : MilfordAge 36 3 39 18 21 ∧ 36 = 36 ∧ 18 = 18 ∧ 21 = 21 := by
  have h : MilfordAge 36 3 39 18 21 := by norm_num [MilfordAge]
  exact ⟨h, ages_eustace _ _ _ _ _ h, ages_milford _ _ _ _ _ h, by norm_num⟩

theorem elevator_current (a b c d e f g : Nat)
    (h : ElevatorCapacity a b c d e f g) : e = 548 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb, hc, hd] at he
  exact he

theorem elevator_next (a b c d e f g : Nat)
    (h : ElevatorCapacity a b c d e f g) : g = 52 := by
  have he := elevator_current a b c d e f g h
  rcases h with ⟨ha, hb, hc, hd, hx, hf, hg⟩
  omega

theorem elevator_solution : ElevatorCapacity 3 140 2 64 548 600 52 ∧ 548 = 548 ∧ 52 = 52 := by
  have h : ElevatorCapacity 3 140 2 64 548 600 52 := by norm_num [ElevatorCapacity]
  exact ⟨h, elevator_current _ _ _ _ _ _ _ h, elevator_next _ _ _ _ _ _ _ h⟩

theorem sales_week (a b c d e f g h i j k l : Nat)
    (x : SalesQuota a b c d e f g h i j k l) : h = 15 ∧ i = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [hc, hd] at hh
  norm_num [he, hf] at hi
  exact ⟨hh, hi⟩

theorem sales_sold (a b c d e f g h i j k l : Nat)
    (x : SalesQuota a b c d e f g h i j k l) : j = 27 := by
  have hhi := sales_week a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  omega

theorem sales_remaining (a b c d e f g h i j k l : Nat)
    (x : SalesQuota a b c d e f g h i j k l) : k = 23 ∧ l = 23 := by
  have hj := sales_sold a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hx, hk, hl⟩
  omega

theorem sales_solution : SalesQuota 30 50 3 5 4 3 7 15 12 27 23 23 ∧
    (15 = 15 ∧ 12 = 12) ∧ 27 = 27 ∧ (23 = 23 ∧ 23 = 23) := by
  have h : SalesQuota 30 50 3 5 4 3 7 15 12 27 23 23 := by norm_num [SalesQuota]
  exact ⟨h, sales_week _ _ _ _ _ _ _ _ _ _ _ _ h,
    sales_sold _ _ _ _ _ _ _ _ _ _ _ _ h, sales_remaining _ _ _ _ _ _ _ _ _ _ _ _ h⟩

theorem rope_rates (a b c d e f g : Nat) (h : RopeJump a b c d e f g) :
    e = 180 ∧ f = 10800 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hb, hc] at he
  norm_num [he, hd] at hf
  exact ⟨he, hf⟩

theorem rope_hours (a b c d e f g : Nat) (h : RopeJump a b c d e f g) : g = 5 := by
  have hef := rope_rates a b c d e f g h
  rcases hef with ⟨he', hf'⟩
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega

theorem rope_solution : RopeJump 54000 3 60 60 180 10800 5 ∧
    (180 = 180 ∧ 10800 = 10800) ∧ 5 = 5 := by
  have h : RopeJump 54000 3 60 60 180 10800 5 := by norm_num [RopeJump]
  exact ⟨h, rope_rates _ _ _ _ _ _ _ h, rope_hours _ _ _ _ _ _ _ h⟩

theorem grandchildren_counts (a b c d e f g h : Nat)
    (x : Grandchildren a b c d e f g h) : d = 6 ∧ f = 48 ∧ g = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  have hd' : d = 6 := by omega
  have he' : e = 8 := by omega
  norm_num [hd', he'] at hf
  norm_num [hb, hc] at hg
  exact ⟨hd', hf, hg⟩

theorem grandchildren_total (a b c d e f g h : Nat)
    (x : Grandchildren a b c d e f g h) : h = 58 := by
  have hdfg := grandchildren_counts a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega

theorem grandchildren_solution : Grandchildren 8 2 5 6 8 48 10 58 ∧
    (6 = 6 ∧ 48 = 48 ∧ 10 = 10) ∧ 58 = 58 := by
  have h : Grandchildren 8 2 5 6 8 48 10 58 := by norm_num [Grandchildren]
  exact ⟨h, grandchildren_counts _ _ _ _ _ _ _ _ h,
    grandchildren_total _ _ _ _ _ _ _ _ h⟩

theorem cookies_anna (a b c d e f : Nat) (h : CookieDivision a b c d e f) : d = 30 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem cookies_given (a b c d e f : Nat) (h : CookieDivision a b c d e f) : e = 68 := by
  have hd := cookies_anna a b c d e f h
  rcases h with ⟨ha, hb, hc, hx, he, hf⟩
  omega

theorem cookies_solution : CookieDivision 256 15 23 30 68 188 ∧ 30 = 30 ∧ 68 = 68 ∧ 188 = 188 := by
  have h : CookieDivision 256 15 23 30 68 188 := by norm_num [CookieDivision]
  exact ⟨h, cookies_anna _ _ _ _ _ _ h, cookies_given _ _ _ _ _ _ h, by norm_num⟩

theorem balls_red (a b c d : Nat) (h : ColoredBalls a b c d) : c = 22 := by
  rcases h with ⟨ha, hb, hc, hd⟩
  omega

theorem balls_solution : ColoredBalls 40 11 22 7 ∧ 22 = 22 ∧ 33 = 33 ∧ 7 = 7 := by
  have h : ColoredBalls 40 11 22 7 := by norm_num [ColoredBalls]
  have hc := balls_red _ _ _ _ h
  exact ⟨h, hc, by norm_num, by norm_num⟩

#print axioms hay_solution
#print axioms river_solution
#print axioms movie_solution
#print axioms ages_solution
#print axioms elevator_solution
#print axioms sales_solution
#print axioms rope_solution
#print axioms grandchildren_solution
#print axioms cookies_solution
#print axioms balls_solution
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915B.hay_solution to "work/gsm8k-daily41-hay-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915B.river_solution to "work/gsm8k-daily41-river-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915B.movie_solution to "work/gsm8k-daily41-movie-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915B.ages_solution to "work/gsm8k-daily41-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915B.elevator_solution to "work/gsm8k-daily41-elevator-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915B.sales_solution to "work/gsm8k-daily41-sales-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915B.rope_solution to "work/gsm8k-daily41-rope-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915B.grandchildren_solution to "work/gsm8k-daily41-grandchildren-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915B.cookies_solution to "work/gsm8k-daily41-cookies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915B.balls_solution to "work/gsm8k-daily41-balls-graph.json"

end LemmaWeave.Tests.GSM8KDaily0915B
