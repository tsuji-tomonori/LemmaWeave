import LemmaWeave.Problems.GSM8K.Sprint0920A06Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A06
open LemmaWeave.Problems.GSM8K.Sprint0920A06

theorem balloon_first : (40 : Nat) * 5 = 200 := by norm_num
theorem balloon_first_intact : (160 : Nat) + 40 = 200 := by norm_num
theorem balloon_second : (80 : Nat) = 2 * 40 := by norm_num
theorem balloon_remaining : (80 : Nat) + 80 = 160 := by norm_num
theorem balloon_solution : BalloonIntact 200 5 40 160 2 80 80 := by
  unfold BalloonIntact
  exact ⟨balloon_first, balloon_first_intact, balloon_second, balloon_remaining⟩

theorem chips_viviana_chocolate : (30 : Nat) = 25 + 5 := by norm_num
theorem chips_susana_vanilla : (15 : Nat) * 4 = 3 * 20 := by norm_num
theorem chips_chocolate_total : (55 : Nat) = 25 + 30 := by norm_num
theorem chips_vanilla_total : (35 : Nat) = 20 + 15 := by norm_num
theorem chips_total : (90 : Nat) = 55 + 35 := by norm_num
theorem chips_solution : ChipCounts 25 30 20 15 55 35 90 := by
  unfold ChipCounts
  exact ⟨chips_viviana_chocolate, chips_susana_vanilla, chips_chocolate_total,
    chips_vanilla_total, chips_total⟩

theorem card_earned : (80 : Nat) = 60 + 20 := by norm_num
theorem card_wins : (80 : Nat) = 10 * 8 := by norm_num
theorem card_eight_compatible : RoundCountCompatible 8 8 := by
  refine ⟨0, ?_⟩
  norm_num
theorem card_nine_compatible : RoundCountCompatible 8 9 := by
  refine ⟨1, ?_⟩
  norm_num
theorem card_counts_differ : (8 : Nat) ≠ 9 := by norm_num
theorem card_solution : CardGame 10 60 20 80 8 8 9 := by
  unfold CardGame
  exact ⟨card_earned, card_wins, card_eight_compatible, card_nine_compatible,
    card_counts_differ⟩

theorem ants_h1 : (100 : Nat) = 2 * 50 := by norm_num
theorem ants_h2 : (200 : Nat) = 2 * 100 := by norm_num
theorem ants_h3 : (400 : Nat) = 2 * 200 := by norm_num
theorem ants_h4 : (800 : Nat) = 2 * 400 := by norm_num
theorem ants_h5 : (1600 : Nat) = 2 * 800 := by norm_num
theorem ants_solution : AntDoubling 50 100 200 400 800 1600 := by
  unfold AntDoubling
  exact ⟨ants_h1, ants_h2, ants_h3, ants_h4, ants_h5⟩

theorem toothpick_cards : (36 : Nat) + 16 = 52 := by norm_num
theorem toothpick_total : (2700 : Nat) = 36 * 75 := by norm_num
theorem toothpick_boxes : (6 : Nat) * 450 = 2700 := by norm_num
theorem toothpick_solution : ToothpickHouse 52 16 36 75 2700 450 6 := by
  unfold ToothpickHouse
  exact ⟨toothpick_cards, toothpick_total, toothpick_boxes⟩

theorem run_early : (180 : Nat) = 3 * 60 := by norm_num
theorem run_thursday : (40 : Nat) + 20 = 60 := by norm_num
theorem run_friday : (70 : Nat) = 60 + 10 := by norm_num
theorem run_total : (290 : Nat) = 180 + 40 + 70 := by norm_num
theorem run_solution : WeekdayRun 3 60 180 40 10 70 290 := by
  unfold WeekdayRun
  exact ⟨run_early, run_thursday, run_friday, run_total⟩

theorem gambling_lost : (900 : Nat) = 400 + 500 := by norm_num
theorem gambling_initial : (1700 : Nat) = 900 + 800 := by norm_num
theorem gambling_solution : GamblingLoss 400 500 900 800 1700 := by
  unfold GamblingLoss
  exact ⟨gambling_lost, gambling_initial⟩

theorem bank_monthly : (8 : Nat) = 2 * 4 := by norm_num
theorem bank_yearly : (96 : Nat) = 8 * 12 := by norm_num
theorem bank_initial : (200 : Nat) = 96 + 104 := by norm_num
theorem bank_solution : PiggyBank 2 4 8 12 96 104 200 := by
  unfold PiggyBank
  exact ⟨bank_monthly, bank_yearly, bank_initial⟩

theorem books_paperback : (2 : Nat) * 3 = 6 := by norm_num
theorem books_hardback : (8 : Nat) = 2 * 4 := by norm_num
theorem books_total : (10 : Nat) = 2 + 8 := by norm_num
theorem books_solution : Bookstore 6 4 2 8 10 := by
  unfold Bookstore
  exact ⟨books_paperback, books_hardback, books_total⟩

theorem sugar_drink : (125 : Nat) * 100 = 2500 * 5 := by norm_num
theorem sugar_limit : (300 : Nat) = 2 * 150 := by norm_num
theorem sugar_candy : (300 : Nat) = 125 + 175 := by norm_num
theorem sugar_bars : (175 : Nat) = 25 * 7 := by norm_num
theorem sugar_solution : AddedSugar 2500 5 125 150 300 175 25 7 := by
  unfold AddedSugar
  exact ⟨sugar_drink, sugar_limit, sugar_candy, sugar_bars⟩

theorem gummy_rate : (6 : Nat) * 50 = 300 := by norm_num
theorem gummy_minutes : (40 : Nat) * 6 = 240 := by norm_num
theorem gummy_solution : GummyFactory 300 50 6 240 40 := by
  unfold GummyFactory
  exact ⟨gummy_rate, gummy_minutes⟩

theorem debts_earl_pay : (62 : Nat) + 28 = 90 := by norm_num
theorem debts_fred_receive : (76 : Nat) = 48 + 28 := by norm_num
theorem debts_fred_pay : (44 : Nat) + 32 = 76 := by norm_num
theorem debts_greg_receive : (68 : Nat) = 36 + 32 := by norm_num
theorem debts_greg_pay : (28 : Nat) + 40 = 68 := by norm_num
theorem debts_earl_final : (102 : Nat) = 62 + 40 := by norm_num
theorem debts_combined : (130 : Nat) = 28 + 102 := by norm_num
theorem debts_solution : DebtSettlement 90 48 36 28 32 40 62 76 44 68 28 102 130 := by
  unfold DebtSettlement
  exact ⟨debts_earl_pay, debts_fred_receive, debts_fred_pay, debts_greg_receive,
    debts_greg_pay, debts_earl_final, debts_combined⟩

theorem dental_visits_day : (16 : Nat) * 1 = 8 * 2 := by norm_num
theorem dental_visits_week : (80 : Nat) = 16 * 5 := by norm_num
theorem dental_toothbrushes : (160 : Nat) = 80 * 2 := by norm_num
theorem dental_solution : DentalGiveaway 8 1 16 5 80 2 160 := by
  unfold DentalGiveaway
  exact ⟨dental_visits_day, dental_visits_week, dental_toothbrushes⟩

theorem squirrel_each : (115 : Nat) * 5 = 575 := by norm_num
theorem squirrel_more : (15 : Nat) + 115 = 130 := by norm_num
theorem squirrel_solution : SquirrelAcorns 5 575 115 130 15 := by
  unfold SquirrelAcorns
  exact ⟨squirrel_each, squirrel_more⟩

theorem survey_fries_only : (9 : Nat) + 6 = 15 := by norm_num
theorem survey_burgers_only : (4 : Nat) + 6 = 10 := by norm_num
theorem survey_either : (19 : Nat) = 9 + 4 + 6 := by norm_num
theorem survey_neither : (6 : Nat) + 19 = 25 := by norm_num
theorem survey_solution : FoodSurvey 25 15 10 6 9 4 19 6 := by
  unfold FoodSurvey
  exact ⟨survey_fries_only, survey_burgers_only, survey_either, survey_neither⟩

#print axioms balloon_solution
#print axioms chips_solution
#print axioms card_solution
#print axioms ants_solution
#print axioms toothpick_solution
#print axioms run_solution
#print axioms gambling_solution
#print axioms bank_solution
#print axioms books_solution
#print axioms sugar_solution
#print axioms gummy_solution
#print axioms debts_solution
#print axioms dental_solution
#print axioms squirrel_solution
#print axioms survey_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A06.balloon_solution to "work/gsm8k-sprint38-balloon-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A06.chips_solution to "work/gsm8k-sprint38-chips-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A06.card_solution to "work/gsm8k-sprint38-card-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A06.ants_solution to "work/gsm8k-sprint38-ants-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A06.toothpick_solution to "work/gsm8k-sprint38-toothpick-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A06.run_solution to "work/gsm8k-sprint38-run-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A06.gambling_solution to "work/gsm8k-sprint38-gambling-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A06.bank_solution to "work/gsm8k-sprint38-bank-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A06.books_solution to "work/gsm8k-sprint38-books-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A06.sugar_solution to "work/gsm8k-sprint38-sugar-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A06.gummy_solution to "work/gsm8k-sprint38-gummy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A06.debts_solution to "work/gsm8k-sprint38-debts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A06.dental_solution to "work/gsm8k-sprint38-dental-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A06.squirrel_solution to "work/gsm8k-sprint38-squirrel-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A06.survey_solution to "work/gsm8k-sprint38-survey-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A06
