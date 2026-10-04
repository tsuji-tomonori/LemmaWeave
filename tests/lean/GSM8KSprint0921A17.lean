import LemmaWeave.Problems.GSM8K.Sprint0921A17Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0921A17
open LemmaWeave.Problems.GSM8K.Sprint0921A17

theorem weeds_wednesday : (75 : Nat) = 25 * 3 := by norm_num
theorem weeds_thursday : (75 : Nat) = 15 * 5 := by norm_num
theorem weeds_friday : (15 : Nat) = 5 + 10 := by norm_num
theorem weeds_total : (120 : Nat) = 25 + 75 + 15 + 5 := by norm_num
theorem weeds_solution : WeedPulling 25 3 75 5 15 10 5 120 := by
  unfold WeedPulling
  exact ⟨weeds_wednesday, weeds_thursday, weeds_friday, weeds_total⟩

theorem traffic_freeway : (8 : Nat) = 2 * 4 := by norm_num
theorem traffic_total : (10 : Nat) = 2 + 8 := by norm_num
theorem traffic_solution : TrafficWaste 2 4 8 10 := by
  unfold TrafficWaste
  exact ⟨traffic_freeway, traffic_total⟩

theorem tiles_wall : (160 : Nat) = 8 * 20 := by norm_num
theorem tiles_total : (480 : Nat) = 3 * 160 := by norm_num
theorem tiles_solution : ShowerTiles 3 8 20 160 480 := by
  unfold ShowerTiles
  exact ⟨tiles_wall, tiles_total⟩

theorem reina_counters : (120 : Nat) = 3 * 40 := by norm_num
theorem reina_marbles : (200 : Nat) = 4 * 50 := by norm_num
theorem reina_total : (320 : Nat) = 120 + 200 := by norm_num
theorem reina_solution : ReinaItems 40 3 120 50 4 200 320 := by
  unfold ReinaItems
  exact ⟨reina_counters, reina_marbles, reina_total⟩

theorem spending_tuesday : (12 : Nat) = 6 * 2 := by norm_num
theorem spending_wednesday : (36 : Nat) = 2 * (6 + 12) := by norm_num
theorem spending_total : (54 : Nat) = 6 + 12 + 36 := by norm_num
theorem spending_solution : WeeklySpending 6 2 12 2 36 54 := by
  unfold WeeklySpending
  exact ⟨spending_tuesday, spending_wednesday, spending_total⟩

theorem commission_week2 : (70 : Nat) = 35 * 2 := by norm_num
theorem commission_week3 : (105 : Nat) = 35 * 3 := by norm_num
theorem commission_customers : (210 : Nat) = 35 + 70 + 105 := by norm_num
theorem commission_amount : (210 : Nat) = 210 * 1 := by norm_num
theorem commission_total : (760 : Nat) = 210 + 500 + 50 := by norm_num
theorem commission_solution : CommissionIncome 35 2 70 3 105 210 1 210 500 50 760 := by
  unfold CommissionIncome
  exact ⟨commission_week2, commission_week3, commission_customers,
    commission_amount, commission_total⟩

theorem bats_equation : (29 : Nat) = 7 * 4 + 1 := by norm_num
theorem bats_solution : BaseballBats 4 7 1 29 := by
  unfold BaseballBats
  exact bats_equation

theorem candy_gum : (300 : Nat) = 3 * 100 := by norm_num
theorem candy_bars : (500 : Nat) = 5 * 100 := by norm_num
theorem candy_canes : (100 : Nat) = 2 * 50 := by norm_num
theorem candy_spent : (900 : Nat) = 300 + 500 + 100 := by norm_num
theorem candy_remaining : (1000 : Nat) = 900 + 100 := by norm_num
theorem candy_solution : CandyBudget 1000 3 100 300 5 100 500 2 50 100 900 100 := by
  unfold CandyBudget
  exact ⟨candy_gum, candy_bars, candy_canes, candy_spent, candy_remaining⟩

theorem ages_ana : (15 : Nat) = 12 + 3 := by norm_num
theorem ages_billy : (12 : Nat) = 6 * 2 := by norm_num
theorem ages_mark : (10 : Nat) = 6 + 4 := by norm_num
theorem ages_sarah : (26 : Nat) + 4 = 3 * 10 := by norm_num
theorem ages_solution : AgeChain 15 3 12 2 6 4 10 3 4 26 := by
  unfold AgeChain
  exact ⟨ages_ana, ages_billy, ages_mark, ages_sarah⟩

theorem show_monday : (24 : Nat) = 12 * 2 := by norm_num
theorem show_wednesday : (24 : Nat) = 6 * 4 := by norm_num
theorem show_first_three : (22 : Nat) = 12 + 4 + 6 := by norm_num
theorem show_thursday : (22 : Nat) = 11 * 2 := by norm_num
theorem show_first_four : (33 : Nat) = 22 + 11 := by norm_num
theorem show_friday : (52 : Nat) = 33 + 19 := by norm_num
theorem show_solution : ShowWatching 24 2 12 4 4 6 22 2 11 33 52 19 := by
  unfold ShowWatching
  exact ⟨show_monday, show_wednesday, show_first_three, show_thursday,
    show_first_four, show_friday⟩

theorem fish_deaths : (35 : Nat) = 5 * 7 := by norm_num
theorem fish_purchases : (21 : Nat) = 3 * 7 := by norm_num
theorem fish_balance : (18 : Nat) + 21 = 35 + 4 := by norm_num
theorem fish_solution : GoldfishWeeks 18 5 3 7 35 21 4 := by
  unfold GoldfishWeeks
  exact ⟨fish_deaths, fish_purchases, fish_balance⟩

theorem homework_free : (13 : Nat) = 6 + 7 := by norm_num
theorem homework_multiple : (26 : Nat) = 2 * 13 := by norm_num
theorem homework_total : (45 : Nat) = 6 + 13 + 26 := by norm_num
theorem homework_solution : HomeworkTypes 6 7 13 2 26 45 := by
  unfold HomeworkTypes
  exact ⟨homework_free, homework_multiple, homework_total⟩

theorem tv_tax : (1700 : Nat) * 15 = 255 * 100 := by norm_num
theorem tv_total : (1955 : Nat) = 1700 + 255 := by norm_num
theorem tv_solution : TelevisionTax 1700 15 255 1955 := by
  unfold TelevisionTax
  exact ⟨tv_tax, tv_total⟩

theorem printer_keyboards : (300 : Nat) = 15 * 20 := by norm_num
theorem printer_remainder : (2050 : Nat) = 300 + 1750 := by norm_num
theorem printer_unit : (1750 : Nat) = 25 * 70 := by norm_num
theorem printer_solution : PrinterPrice 15 20 300 25 70 1750 2050 := by
  unfold PrinterPrice
  exact ⟨printer_keyboards, printer_remainder, printer_unit⟩

theorem maze_previous : (200 : Nat) = 4 * 50 := by norm_num
theorem maze_limit : (300 : Nat) = 5 * 60 := by norm_num
theorem maze_used : (245 : Nat) = 200 + 45 := by norm_num
theorem maze_remaining : (300 : Nat) = 245 + 55 := by norm_num
theorem maze_solution : MazeAverage 4 50 200 45 5 60 300 245 55 := by
  unfold MazeAverage
  exact ⟨maze_previous, maze_limit, maze_used, maze_remaining⟩

#print axioms weeds_solution
#print axioms traffic_solution
#print axioms tiles_solution
#print axioms reina_solution
#print axioms spending_solution
#print axioms commission_solution
#print axioms bats_solution
#print axioms candy_solution
#print axioms ages_solution
#print axioms show_solution
#print axioms fish_solution
#print axioms homework_solution
#print axioms tv_solution
#print axioms printer_solution
#print axioms maze_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A17.weeds_solution to "work/gsm8k-sprint68-weeds-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A17.traffic_solution to "work/gsm8k-sprint68-traffic-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A17.tiles_solution to "work/gsm8k-sprint68-tiles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A17.reina_solution to "work/gsm8k-sprint68-reina-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A17.spending_solution to "work/gsm8k-sprint68-spending-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A17.commission_solution to "work/gsm8k-sprint68-commission-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A17.bats_solution to "work/gsm8k-sprint68-bats-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A17.candy_solution to "work/gsm8k-sprint68-candy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A17.ages_solution to "work/gsm8k-sprint68-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A17.show_solution to "work/gsm8k-sprint68-show-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A17.fish_solution to "work/gsm8k-sprint68-fish-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A17.homework_solution to "work/gsm8k-sprint68-homework-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A17.tv_solution to "work/gsm8k-sprint68-tv-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A17.printer_solution to "work/gsm8k-sprint68-printer-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A17.maze_solution to "work/gsm8k-sprint68-maze-graph.json"

end LemmaWeave.Tests.GSM8KSprint0921A17
