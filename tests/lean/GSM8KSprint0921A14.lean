import LemmaWeave.Problems.GSM8K.Sprint0921A14Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0921A14
open LemmaWeave.Problems.GSM8K.Sprint0921A14

theorem berries_existing : (9 : Nat) = 2 + 7 := by norm_num
theorem berries_buy : (42 : Nat) = 9 + 33 := by norm_num
theorem berries_solution : BerryCartons 42 2 7 9 33 := by
  unfold BerryCartons
  exact ⟨berries_existing, berries_buy⟩

theorem fair_parity (baseball : Nat) : (2 * baseball + 6) % 2 = 0 := by omega
theorem fair_no_solution : ¬ ∃ baseball : Nat, FairTickets 25 6 baseball := by
  intro h
  rcases h with ⟨baseball, hmodel⟩
  have hparity := fair_parity baseball
  unfold FairTickets at hmodel
  omega
theorem fair_solution : ¬ ∃ baseball : Nat, FairTickets 25 6 baseball :=
  fair_no_solution

theorem vegetables_eggplants : (48 : Nat) = 12 * 4 := by norm_num
theorem vegetables_carrots : (36 : Nat) = 9 * 4 := by norm_num
theorem vegetables_potatoes : (32 : Nat) = 8 * 4 := by norm_num
theorem vegetables_total : (116 : Nat) = 48 + 36 + 32 := by norm_num
theorem vegetables_solution : WeeklyVegetables 12 9 8 4 48 36 32 116 := by
  unfold WeeklyVegetables
  exact ⟨vegetables_eggplants, vegetables_carrots, vegetables_potatoes, vegetables_total⟩

theorem investments_alice : (4000 : Nat) = 2000 * 2 := by norm_num
theorem investments_bob_fivefold : (10000 : Nat) = 2000 * 5 := by norm_num
theorem investments_bob_profit : (10000 : Nat) = 2000 * 5 := by norm_num
theorem investments_bob_profit_total : (12000 : Nat) = 2000 + 10000 := by norm_num
theorem investments_fivefold_difference : (10000 : Nat) = 4000 + 6000 := by norm_num
theorem investments_profit_difference : (12000 : Nat) = 4000 + 8000 := by norm_num
theorem investments_nonunique : (6000 : Nat) ≠ 8000 := by norm_num
theorem investments_solution : InvestmentAmbiguity 2000 2 4000 5 10000 5 10000 12000 6000 8000 := by
  unfold InvestmentAmbiguity
  exact ⟨investments_alice, investments_bob_fivefold, investments_bob_profit,
    investments_bob_profit_total, investments_fivefold_difference,
    investments_profit_difference, investments_nonunique⟩

theorem waldo_puzzles : (450 : Nat) = 15 * 30 := by norm_num
theorem waldo_minutes : (1350 : Nat) = 450 * 3 := by norm_num
theorem waldo_solution : WaldoTime 15 30 450 3 1350 := by
  unfold WaldoTime
  exact ⟨waldo_puzzles, waldo_minutes⟩

theorem ages_ryanne : (11 : Nat) = 4 + 7 := by norm_num
theorem ages_total : (15 : Nat) = 11 + 4 := by norm_num
theorem ages_solution : Ages 4 7 11 15 := by
  unfold Ages
  exact ⟨ages_ryanne, ages_total⟩

theorem entertainment_tickets : (36 : Nat) = 3 * 12 := by norm_num
theorem entertainment_total : (102 : Nat) = 66 + 36 := by norm_num
theorem entertainment_solution : Entertainment 66 3 12 36 102 := by
  unfold Entertainment
  exact ⟨entertainment_tickets, entertainment_total⟩

theorem cakes_fallen : (12 : Nat) = 6 * 2 := by norm_num
theorem cakes_split : (6 : Nat) = 3 + 3 := by norm_num
theorem cakes_halves : (3 : Nat) = 3 := by norm_num
theorem cakes_solution : FallenCakes 12 6 3 3 := by
  unfold FallenCakes
  exact ⟨cakes_fallen, cakes_split, cakes_halves⟩

theorem coffee_total_pints : (36 : Nat) * 2 = 9 * 8 := by norm_num
theorem coffee_per_thermos : (36 : Nat) = 18 * 2 := by norm_num
theorem coffee_drank : (6 : Nat) = 3 * 2 := by norm_num
theorem coffee_solution : CoffeeThermoses 9 8 36 18 2 3 6 := by
  unfold CoffeeThermoses
  exact ⟨coffee_total_pints, coffee_per_thermos, coffee_drank⟩

theorem coins_doubled : (100 : Nat) = 50 * 2 := by norm_num
theorem coins_monthly : (36 : Nat) = 3 * 12 := by norm_num
theorem coins_interval : (12 : Nat) = 4 * 3 := by norm_num
theorem coins_before_loss : (140 : Nat) = 100 + 36 + 4 := by norm_num
theorem coins_lost : (140 : Nat) = 35 * 4 := by norm_num
theorem coins_remaining : (140 : Nat) = 35 + 105 := by norm_num
theorem coins_solution : CoinCollection 50 100 3 12 36 3 4 140 4 35 105 := by
  unfold CoinCollection
  exact ⟨coins_doubled, coins_monthly, coins_interval, coins_before_loss,
    coins_lost, coins_remaining⟩

theorem pixels_width : (2100 : Nat) = 21 * 100 := by norm_num
theorem pixels_height : (1200 : Nat) = 12 * 100 := by norm_num
theorem pixels_total : (2520000 : Nat) = 2100 * 1200 := by norm_num
theorem pixels_solution : MonitorPixels 21 12 100 2100 1200 2520000 := by
  unfold MonitorPixels
  exact ⟨pixels_width, pixels_height, pixels_total⟩

theorem bills_first : (120 : Nat) = 4 * 30 := by norm_num
theorem bills_last : (48 : Nat) = 2 * 24 := by norm_num
theorem bills_months : (6 : Nat) = 4 + 2 := by norm_num
theorem bills_total : (168 : Nat) = 120 + 48 := by norm_num
theorem bills_average : (168 : Nat) = 6 * 28 := by norm_num
theorem bills_solution : BillAverage 4 30 120 2 24 48 6 168 28 := by
  unfold BillAverage
  exact ⟨bills_first, bills_last, bills_months, bills_total, bills_average⟩

theorem dolls_sophie : (40 : Nat) = 20 * 2 := by norm_num
theorem dolls_aida : (80 : Nat) = 40 * 2 := by norm_num
theorem dolls_total : (140 : Nat) = 20 + 40 + 80 := by norm_num
theorem dolls_solution : DollCounts 20 2 40 80 140 := by
  unfold DollCounts
  exact ⟨dolls_sophie, dolls_aida, dolls_total⟩

theorem account_after_rent : (800 : Nat) = 450 + 350 := by norm_num
theorem account_after_paycheck : (1850 : Nat) = 350 + 1500 := by norm_num
theorem account_friday_bills : (217 : Nat) = 117 + 100 := by norm_num
theorem account_after_friday : (1850 : Nat) = 217 + 1633 := by norm_num
theorem account_final : (1633 : Nat) = 70 + 1563 := by norm_num
theorem account_solution : CheckingAccount 800 450 350 1500 1850 117 100 217 1633 70 1563 := by
  unfold CheckingAccount
  exact ⟨account_after_rent, account_after_paycheck, account_friday_bills,
    account_after_friday, account_final⟩

theorem toothpaste_per_brushing : (7 : Nat) = 3 + 2 + 1 + 1 := by norm_num
theorem toothpaste_per_day : (21 : Nat) = 7 * 3 := by norm_num
theorem toothpaste_days : (105 : Nat) = 5 * 21 := by norm_num
theorem toothpaste_solution : Toothpaste 105 3 2 1 1 7 3 21 5 := by
  unfold Toothpaste
  exact ⟨toothpaste_per_brushing, toothpaste_per_day, toothpaste_days⟩

#print axioms berries_solution
#print axioms fair_solution
#print axioms vegetables_solution
#print axioms investments_solution
#print axioms waldo_solution
#print axioms ages_solution
#print axioms entertainment_solution
#print axioms cakes_solution
#print axioms coffee_solution
#print axioms coins_solution
#print axioms pixels_solution
#print axioms bills_solution
#print axioms dolls_solution
#print axioms account_solution
#print axioms toothpaste_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A14.berries_solution to "work/gsm8k-sprint65-berries-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A14.fair_solution to "work/gsm8k-sprint65-fair-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A14.vegetables_solution to "work/gsm8k-sprint65-vegetables-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A14.investments_solution to "work/gsm8k-sprint65-investments-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A14.waldo_solution to "work/gsm8k-sprint65-waldo-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A14.ages_solution to "work/gsm8k-sprint65-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A14.entertainment_solution to "work/gsm8k-sprint65-entertainment-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A14.cakes_solution to "work/gsm8k-sprint65-cakes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A14.coffee_solution to "work/gsm8k-sprint65-coffee-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A14.coins_solution to "work/gsm8k-sprint65-coins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A14.pixels_solution to "work/gsm8k-sprint65-pixels-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A14.bills_solution to "work/gsm8k-sprint65-bills-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A14.dolls_solution to "work/gsm8k-sprint65-dolls-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A14.account_solution to "work/gsm8k-sprint65-account-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A14.toothpaste_solution to "work/gsm8k-sprint65-toothpaste-graph.json"

end LemmaWeave.Tests.GSM8KSprint0921A14
