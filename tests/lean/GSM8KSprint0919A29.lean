import LemmaWeave.Problems.GSM8K.Sprint0919A29Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A29
open LemmaWeave.Problems.GSM8K.Sprint0919A29

theorem website_daily_visits : (30 : Nat) * 1000 = 30000 := by norm_num
theorem website_daily_cents : (1000 : Nat) * 1 = 1000 := by norm_num
theorem website_solution : WebsiteRevenue 30000 30 1000 1 1000 := by
  exact ⟨rfl, rfl, website_daily_visits.symm, rfl, website_daily_cents.symm⟩

theorem bracelet_unit_cost : (1 : Nat) + 3 = 4 := by norm_num
theorem bracelet_unit_profit : (6 : Nat) = 4 + 2 := by norm_num
theorem bracelet_total_profit : (25 : Nat) * 2 = 50 := by norm_num
theorem bracelet_solution : Bracelets 1 3 4 6 2 25 50 := by
  exact ⟨rfl, rfl, bracelet_unit_cost.symm, rfl, bracelet_unit_profit, rfl,
    bracelet_total_profit.symm⟩

theorem coins_margaret : (3 : ℚ) / 4 * 100 = 75 := by norm_num
theorem coins_guy : (2 : Nat) * 25 + 10 = 60 := by norm_num
theorem coins_bill : (6 : Nat) * 10 = 60 := by norm_num
theorem coins_total : (70 : Nat) + 75 + 60 + 60 = 265 := by norm_num
theorem coins_solution : CoinTotal 70 75 60 60 265 ∧ (3 : ℚ) / 4 * 100 = 75 := by
  exact ⟨⟨rfl, rfl, coins_guy.symm, coins_bill.symm, coins_total.symm⟩, coins_margaret⟩

theorem vodka_jake_shots : (2 : ℚ) * 4 = 8 := by norm_num
theorem vodka_ounces : (4 : ℚ) * (3 / 2) = 6 := by norm_num
theorem vodka_pure : (6 : ℚ) * (1 / 2) = 3 := by norm_num
theorem vodka_solution : VodkaSplit 8 2 4 (3 / 2) 6 (1 / 2) 3 := by
  exact ⟨rfl, rfl, vodka_jake_shots.symm, rfl, vodka_ounces.symm, rfl,
    vodka_pure.symm⟩

theorem snake_partner : (29 : Nat) + 12 = 41 := by norm_num
theorem snake_combined : (41 : Nat) + 29 = 70 := by norm_num
theorem snake_literal_underdetermined :
    ((41 : Nat) = 29 + 12 ∧ 41 + 29 = 70) ∧
    ((42 : Nat) = 30 + 12 ∧ 42 + 28 = 70) := by norm_num
theorem snake_solution : SnakeCorrected 41 29 12 70 ∧
    (((41 : Nat) = 29 + 12 ∧ 41 + 29 = 70) ∧
      ((42 : Nat) = 30 + 12 ∧ 42 + 28 = 70)) := by
  exact ⟨⟨rfl, rfl, snake_partner.symm, snake_combined.symm⟩,
    snake_literal_underdetermined⟩

theorem library_tuesday : (2 : Nat) * 50 = 100 := by norm_num
theorem library_remaining : (5 : Nat) * 20 = 100 := by norm_num
theorem library_total : (50 : Nat) + 100 + 100 = 250 := by norm_num
theorem library_solution : LibraryWeek 50 100 5 20 100 250 := by
  exact ⟨rfl, library_tuesday.symm, rfl, rfl, library_remaining.symm,
    library_total.symm⟩

theorem crafts_painting_loss : (4 : Nat) * 100 = 40 * 10 ∧ 10 * 4 = 40 := by norm_num
theorem crafts_toy_loss : (3 : Nat) * 100 = 20 * 15 ∧ 8 * 3 = 24 := by norm_num
theorem crafts_total_loss : (40 : Nat) + 24 = 64 := by norm_num
theorem crafts_literal_underdetermined : (40 : Nat) + 8 * 3 = 64 ∧ 40 + 8 * 0 = 40 := by norm_num
theorem crafts_solution : CraftsLoss 10 40 10 4 40 8 20 15 3 24 64 ∧
    ((40 : Nat) + 8 * 3 = 64 ∧ 40 + 8 * 0 = 40) := by
  exact ⟨⟨rfl, rfl, rfl, crafts_painting_loss.1, crafts_painting_loss.2.symm,
    rfl, rfl, rfl, crafts_toy_loss.1, crafts_toy_loss.2.symm,
    crafts_total_loss.symm⟩, crafts_literal_underdetermined⟩

theorem electronics_pc : (300 : Nat) + 500 = 800 := by norm_num
theorem electronics_tablet : (300 : Nat) + 800 = 1100 := by norm_num
theorem electronics_total : (300 : Nat) + 800 + 1100 = 2200 := by norm_num
theorem electronics_solution : Electronics 300 500 800 1100 2200 := by
  exact ⟨rfl, rfl, electronics_pc.symm, electronics_tablet.symm,
    electronics_total.symm⟩

theorem book_first_week : (2 : Nat) * 300 = 600 := by norm_num
theorem book_second_week : (90 : Nat) * 100 = 300 * 30 := by norm_num
theorem book_third_week : (300 : Nat) - 90 = 210 := by norm_num
theorem book_solution : BookReading 600 300 300 30 90 210 := by
  exact ⟨rfl, book_first_week.symm, rfl, rfl, book_second_week,
    book_third_week.symm⟩

theorem chips_after : (2 : Nat) * 1 = 2 := by norm_num
theorem chips_total : (1 : Nat) + 2 = 3 := by norm_num
theorem chips_solution : ChipBags 1 2 2 3 := by
  exact ⟨rfl, rfl, chips_after.symm, chips_total.symm⟩

theorem money_left_fraction : (24 : Nat) * 7 = 42 * (7 - 3) := by norm_num
theorem money_half : (42 : Nat) = 2 * 21 := by norm_num
theorem money_solution : OriginalMoney 3 7 24 42 21 := by
  exact ⟨rfl, rfl, rfl, money_left_fraction, money_half⟩

theorem toads_jim : (30 : Nat) + 20 = 50 := by norm_num
theorem toads_sarah : (2 : Nat) * 50 = 100 := by norm_num
theorem toads_solution : Toads 30 20 50 2 100 := by
  exact ⟨rfl, rfl, toads_jim.symm, rfl, toads_sarah.symm⟩

theorem ages_jed_now : (15 : Nat) + 10 = 25 := by norm_num
theorem ages_matt_now : (5 : Nat) + 10 = 15 := by norm_num
theorem ages_sum : (15 : Nat) + 5 = 20 := by norm_num
theorem ages_solution : Ages 10 25 15 10 5 20 := by
  exact ⟨rfl, rfl, ages_jed_now.symm, rfl, ages_matt_now.symm, ages_sum.symm⟩

theorem shells_three_days : (5 : Nat) * 3 = 15 := by norm_num
theorem shells_vacation : (15 : Nat) + 6 = 21 := by norm_num
theorem shells_total : (20 : Nat) + 21 = 41 := by norm_num
theorem shells_solution : Shells 20 5 3 15 6 21 41 := by
  exact ⟨rfl, rfl, rfl, shells_three_days.symm, rfl, shells_vacation.symm,
    shells_total.symm⟩

theorem fair_available : (2 : Nat) * 20 = 40 := by norm_num
theorem fair_posters : (2 : Nat) * 5 = 10 := by norm_num
theorem fair_notebooks : (3 : Nat) * 4 = 12 := by norm_num
theorem fair_bookmarks : (2 : Nat) * 2 = 4 := by norm_num
theorem fair_spent : (10 : Nat) + 12 + 4 = 26 := by norm_num
theorem fair_left : (40 : Nat) = 26 + 14 := by norm_num
theorem fair_solution : BookFair 2 20 40 2 5 10 3 4 12 2 2 4 26 14 := by
  exact ⟨rfl, rfl, fair_available.symm, rfl, rfl, fair_posters.symm,
    rfl, rfl, fair_notebooks.symm, rfl, rfl, fair_bookmarks.symm,
    fair_spent.symm, fair_left⟩

#print axioms LemmaWeave.Tests.GSM8KSprint0919A29.ages_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A29.book_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A29.bracelet_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A29.chips_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A29.coins_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A29.crafts_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A29.electronics_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A29.fair_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A29.library_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A29.money_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A29.shells_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A29.snake_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A29.toads_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A29.vodka_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A29.website_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A29.ages_solution to "work/gsm8k-sprint29-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A29.book_solution to "work/gsm8k-sprint29-book-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A29.bracelet_solution to "work/gsm8k-sprint29-bracelets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A29.chips_solution to "work/gsm8k-sprint29-chips-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A29.coins_solution to "work/gsm8k-sprint29-coins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A29.crafts_solution to "work/gsm8k-sprint29-crafts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A29.electronics_solution to "work/gsm8k-sprint29-electronics-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A29.fair_solution to "work/gsm8k-sprint29-fair-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A29.library_solution to "work/gsm8k-sprint29-library-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A29.money_solution to "work/gsm8k-sprint29-money-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A29.shells_solution to "work/gsm8k-sprint29-shells-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A29.snake_solution to "work/gsm8k-sprint29-snakes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A29.toads_solution to "work/gsm8k-sprint29-toads-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A29.vodka_solution to "work/gsm8k-sprint29-vodka-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A29.website_solution to "work/gsm8k-sprint29-website-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A29
