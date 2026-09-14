import LemmaWeave.Problems.GSM8K.Daily0915AModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0915A
open LemmaWeave.Problems.GSM8K.Daily0915A

theorem crackers_sandwich : CrackerSandwich 5 4 28 2 5 10 560 56 := by
  norm_num [CrackerSandwich]

theorem crackers_literal : CrackerLiteral 5 4 28 5 560 112 := by
  norm_num [CrackerLiteral]

theorem crackers_solution :
    CrackerSandwich 5 4 28 2 5 10 560 56 ∧
    CrackerLiteral 5 4 28 5 560 112 ∧ 56 ≠ 112 := by
  exact ⟨crackers_sandwich, crackers_literal, by norm_num⟩

theorem elephants_after (a b c d e f g h : Nat) (x : ElephantFlow a b c d e f g h) : d = 18480 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb, hc] at hd
  omega

theorem elephants_entered (a b c d e f g h : Nat) (x : ElephantFlow a b c d e f g h) : f = 10500 := by
  have hd := elephants_after a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hleft, he, hf, hg, hh⟩
  clear ha hb hc hleft hg hh
  omega

theorem elephants_solution : ElephantFlow 30000 4 2880 18480 28980 10500 7 1500 ∧
    18480 = 18480 ∧ 10500 = 10500 ∧ 1500 = 1500 := by
  have h : ElephantFlow 30000 4 2880 18480 28980 10500 7 1500 := by
    norm_num [ElephantFlow]
  exact ⟨h, elephants_after _ _ _ _ _ _ _ _ h,
    elephants_entered _ _ _ _ _ _ _ _ h, by norm_num⟩

theorem pills_anticonvulsant (a b c d e f : Nat) (h : WeeklyPills a b c d e f) : c = 6 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hb] at hc
  exact hc

theorem pills_daily (a b c d e f : Nat) (h : WeeklyPills a b c d e f) : d = 11 := by
  have hc := pills_anticonvulsant a b c d e f h
  rcases h with ⟨ha, hb, hx, hd, he, hf⟩
  omega

theorem pills_solution : WeeklyPills 2 3 6 11 7 77 ∧ 6 = 6 ∧ 11 = 11 ∧ 77 = 77 := by
  have h : WeeklyPills 2 3 6 11 7 77 := by norm_num [WeeklyPills]
  exact ⟨h, pills_anticonvulsant _ _ _ _ _ _ h, pills_daily _ _ _ _ _ _ h, by norm_num⟩

theorem gift_original_share (a b c d e f : Nat) (h : TeacherGift a b c d e f) : d = 12 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb, hc, hd] at he hf
  omega

theorem gift_solution : TeacherGift 10 6 8 12 20 120 ∧ 12 = 12 ∧ 120 = 120 := by
  have h : TeacherGift 10 6 8 12 20 120 := by norm_num [TeacherGift]
  exact ⟨h, gift_original_share _ _ _ _ _ _ h, by norm_num⟩

theorem pool_cost (a b c d e f : Nat) (h : PoolMoney a b c d e f) : d = 2500 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hb, hc] at hd
  exact hd

theorem pool_solution : PoolMoney 3000 250 10 2500 500 5 ∧ 2500 = 2500 ∧ 5 = 5 := by
  have h : PoolMoney 3000 250 10 2500 500 5 := by norm_num [PoolMoney]
  exact ⟨h, pool_cost _ _ _ _ _ _ h, by norm_num⟩

theorem widgets_reference : WidgetReference 360 240 480 68 36 16 16 30 := by
  norm_num [WidgetReference]

theorem widgets_combined : WidgetCombined 240 120 480 68 32 12 24 20 := by
  norm_num [WidgetCombined]

theorem widgets_solution :
    WidgetReference 360 240 480 68 36 16 16 30 ∧
    WidgetCombined 240 120 480 68 32 12 24 20 ∧ 30 ≠ 20 := by
  exact ⟨widgets_reference, widgets_combined, by norm_num⟩

theorem backpack_used (a b c d e f g h i : Nat) (x : BackpackThirdPounds a b c d e f g h i) : g = 48 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hd, he, hf] at hg
  exact hg

theorem backpack_remaining (a b c d e f g h i : Nat) (x : BackpackThirdPounds a b c d e f g h i) : h = 102 := by
  have hg := backpack_used a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hu, hh, hi⟩
  omega

theorem backpack_solution : BackpackThirdPounds 60 30 60 6 2 6 48 102 34 ∧
    48 = 48 ∧ 102 = 102 ∧ 34 = 34 := by
  have h : BackpackThirdPounds 60 30 60 6 2 6 48 102 34 := by
    norm_num [BackpackThirdPounds]
  exact ⟨h, backpack_used _ _ _ _ _ _ _ _ _ h,
    backpack_remaining _ _ _ _ _ _ _ _ _ h, by norm_num⟩

theorem firewood_known (a b c d : Nat) (h : Firewood a b c d) : a + b = 22 := by
  rcases h with ⟨ha, hb, hc, hd⟩
  omega

theorem firewood_solution : Firewood 10 12 35 13 ∧ 10 + 12 = 22 ∧ 13 = 13 := by
  have h : Firewood 10 12 35 13 := by norm_num [Firewood]
  exact ⟨h, firewood_known _ _ _ _ h, by norm_num⟩

theorem movie_gross (a b c d e f : Nat) (h : MovieProfit a b c d e f) : b = 420 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem movie_kept (a b c d e f : Nat) (h : MovieProfit a b c d e f) : d = 252 := by
  have hb := movie_gross a b c d e f h
  rcases h with ⟨ha, hg, hc, hd, he, hf⟩
  norm_num [hb, hc] at hd
  clear ha hg he hf
  omega

theorem movie_solution : MovieProfit 120 420 60 252 60 192 ∧ 420 = 420 ∧ 252 = 252 ∧ 192 = 192 := by
  have h : MovieProfit 120 420 60 252 60 192 := by norm_num [MovieProfit]
  exact ⟨h, movie_gross _ _ _ _ _ _ h, movie_kept _ _ _ _ _ _ h, by norm_num⟩

theorem ages_individual (a b c d e : Nat) (h : AverageAge a b c d e) : b = 56 ∧ c = 21 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  omega

theorem ages_total (a b c d e : Nat) (h : AverageAge a b c d e) : d = 105 := by
  have hbc := ages_individual a b c d e h
  rcases h with ⟨ha, hb, hc, hd, he⟩
  omega

theorem ages_solution : AverageAge 28 56 21 105 35 ∧ (56 = 56 ∧ 21 = 21) ∧ 105 = 105 ∧ 35 = 35 := by
  have h : AverageAge 28 56 21 105 35 := by norm_num [AverageAge]
  exact ⟨h, ages_individual _ _ _ _ _ h, ages_total _ _ _ _ _ h, by norm_num⟩

#print axioms crackers_solution
#print axioms elephants_solution
#print axioms pills_solution
#print axioms gift_solution
#print axioms pool_solution
#print axioms widgets_solution
#print axioms backpack_solution
#print axioms firewood_solution
#print axioms movie_solution
#print axioms ages_solution
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915A.crackers_solution to "work/gsm8k-daily40-crackers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915A.elephants_solution to "work/gsm8k-daily40-elephants-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915A.pills_solution to "work/gsm8k-daily40-pills-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915A.gift_solution to "work/gsm8k-daily40-gift-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915A.pool_solution to "work/gsm8k-daily40-pool-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915A.widgets_solution to "work/gsm8k-daily40-widgets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915A.backpack_solution to "work/gsm8k-daily40-backpack-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915A.firewood_solution to "work/gsm8k-daily40-firewood-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915A.movie_solution to "work/gsm8k-daily40-movie-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915A.ages_solution to "work/gsm8k-daily40-ages-graph.json"

end LemmaWeave.Tests.GSM8KDaily0915A
