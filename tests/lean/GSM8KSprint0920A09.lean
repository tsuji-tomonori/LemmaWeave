import LemmaWeave.Problems.GSM8K.Sprint0920A09Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A09
open LemmaWeave.Problems.GSM8K.Sprint0920A09

theorem quarters_state : (14 : Nat) * 5 = 35 * 2 := by norm_num
theorem quarters_pennsylvania : (7 : Nat) * 2 = 14 := by norm_num
theorem quarters_solution : PennsylvaniaQuarters 35 2 5 14 7 := by
  unfold PennsylvaniaQuarters
  exact ⟨quarters_state, quarters_pennsylvania⟩

theorem paint_bedrooms : (1200 : Nat) = 3 * 400 := by norm_num
theorem paint_total_area : (1800 : Nat) = 600 + 1200 := by norm_num
theorem paint_gallons : (1800 : Nat) = 3 * 600 := by norm_num
theorem paint_solution : HousePaint 600 3 400 1200 1800 600 3 := by
  unfold HousePaint
  exact ⟨paint_bedrooms, paint_total_area, paint_gallons⟩

theorem contest_easy : (12 : Nat) = 6 * 2 := by norm_num
theorem contest_average : (6 : Nat) = 2 * 3 := by norm_num
theorem contest_hard : (20 : Nat) = 4 * 5 := by norm_num
theorem contest_total : (38 : Nat) = 12 + 6 + 20 := by norm_num
theorem contest_solution : ContestPoints 6 2 12 2 3 6 4 5 20 38 := by
  unfold ContestPoints
  exact ⟨contest_easy, contest_average, contest_hard, contest_total⟩

theorem screen_perimeter : (80 : Nat) = 4 * 20 := by norm_num
theorem screen_height : (100 : Nat) = 80 + 20 := by norm_num
theorem screen_solution : ScreenHeight 20 80 20 100 := by
  unfold ScreenHeight
  exact ⟨screen_perimeter, screen_height⟩

theorem rope_piece_count : (6 : Nat) = 1 + 1 + 3 + 1 := by norm_num
theorem rope_total : (41 : Nat) = 8 + 20 + 3 * 2 + 7 := by norm_num
theorem rope_knots : (5 : Nat) + 1 = 6 := by norm_num
theorem rope_loss : (60 : Nat) = 5 * 12 := by norm_num
theorem rope_final : (350 : Nat) + 60 = 41 * 10 := by norm_num
theorem rope_solution : JoinedRope 8 20 3 2 7 6 41 5 12 60 350 := by
  unfold JoinedRope
  exact ⟨rope_piece_count, rope_total, rope_knots, rope_loss, rope_final⟩

theorem chairs_hours : (80 : Nat) = 8 * 10 := by norm_num
theorem chairs_count : (80 : Nat) = 16 * 5 := by norm_num
theorem chairs_solution : RockingChairs 8 10 80 5 16 := by
  unfold RockingChairs
  exact ⟨chairs_hours, chairs_count⟩

theorem nuts_busy : (60 : Nat) = 2 * 30 := by norm_num
theorem nuts_daily : (80 : Nat) = 60 + 20 := by norm_num
theorem nuts_total : (3200 : Nat) = 80 * 40 := by norm_num
theorem nuts_solution : SquirrelNuts 2 30 60 20 80 40 3200 := by
  unfold SquirrelNuts
  exact ⟨nuts_busy, nuts_daily, nuts_total⟩

theorem spending_sandi : (300 : Nat) * 2 = 600 := by norm_num
theorem spending_market_reading : (1050 : Nat) = 3 * 300 + 150 := by norm_num
theorem spending_initial_reading : (1950 : Nat) = 3 * 600 + 150 := by norm_num
theorem spending_readings_differ : (1050 : Nat) ≠ 1950 := by norm_num
theorem spending_solution : MarketSpendingAmbiguous 600 300 2 150 3 1050 1950 := by
  unfold MarketSpendingAmbiguous
  exact ⟨spending_sandi, spending_market_reading, spending_initial_reading,
    spending_readings_differ⟩

theorem straws_adult : (180 : Nat) * 5 = 300 * 3 := by norm_num
theorem straws_literal_equal : (180 : Nat) = 180 := by norm_num
theorem straws_literal_required : (360 : Nat) = 180 + 180 := by norm_num
theorem straws_literal_impossible : (300 : Nat) < 360 := by norm_num
theorem straws_remainder : (180 : Nat) + 120 = 300 := by norm_num
theorem straws_conditional_each : (120 : Nat) = 20 * 6 := by norm_num
theorem straws_solution : StrawWordingConflict 300 180 180 360 120 20 6 := by
  unfold StrawWordingConflict
  exact ⟨straws_adult, straws_literal_equal, straws_literal_required,
    straws_literal_impossible, straws_remainder, straws_conditional_each⟩

theorem lending_friend : (35 : Nat) = 5 * 7 := by norm_num
theorem lending_brother : (56 : Nat) = 8 * 7 := by norm_num
theorem lending_cousin : (28 : Nat) = 4 * 7 := by norm_num
theorem lending_total : (119 : Nat) = 35 + 56 + 28 := by norm_num
theorem lending_solution : LendingCollection 5 8 4 7 35 56 28 119 := by
  unfold LendingCollection
  exact ⟨lending_friend, lending_brother, lending_cousin, lending_total⟩

theorem limes_recipe : (4 : Nat) * 4 = 16 := by norm_num
theorem limes_doubled : (8 : Nat) = 2 * 4 := by norm_num
theorem limes_count : (8 : Nat) = 8 * 1 := by norm_num
theorem limes_solution : KeyLimes 16 4 8 1 8 := by
  unfold KeyLimes
  exact ⟨limes_recipe, limes_doubled, limes_count⟩

theorem soda_periods : (16 : Nat) = 8 * 2 := by norm_num
theorem soda_total : (480 : Nat) = 16 * 30 := by norm_num
theorem soda_solution : SodaCans 8 2 16 30 480 := by
  unfold SodaCans
  exact ⟨soda_periods, soda_total⟩

theorem bus_second : (7 : Nat) + 5 = 9 + 3 := by norm_num
theorem bus_third : (9 : Nat) + 4 = 11 + 2 := by norm_num
theorem bus_solution : BusPassengers 7 3 5 9 2 4 11 := by
  unfold BusPassengers
  exact ⟨bus_second, bus_third⟩

theorem pallets_towels : (10 : Nat) * 2 = 20 := by norm_num
theorem pallets_tissues : (5 : Nat) * 4 = 20 := by norm_num
theorem pallets_plates : (4 : Nat) * 5 = 20 := by norm_num
theorem pallets_cups : (20 : Nat) = 10 + 5 + 4 + 1 := by norm_num
theorem pallets_solution : PaperPallets 20 10 5 4 1 := by
  unfold PaperPallets
  exact ⟨pallets_towels, pallets_tissues, pallets_plates, pallets_cups⟩

theorem telethon_first : (60000 : Nat) = 12 * 5000 := by norm_num
theorem telethon_increase : (1000 : Nat) * 100 = 5000 * 20 := by norm_num
theorem telethon_rate : (6000 : Nat) = 5000 + 1000 := by norm_num
theorem telethon_remaining : (84000 : Nat) = 14 * 6000 := by norm_num
theorem telethon_total : (144000 : Nat) = 60000 + 84000 := by norm_num
theorem telethon_solution : Telethon 12 5000 60000 20 1000 6000 14 84000 144000 := by
  unfold Telethon
  exact ⟨telethon_first, telethon_increase, telethon_rate, telethon_remaining,
    telethon_total⟩

#print axioms quarters_solution
#print axioms paint_solution
#print axioms contest_solution
#print axioms screen_solution
#print axioms rope_solution
#print axioms chairs_solution
#print axioms nuts_solution
#print axioms spending_solution
#print axioms straws_solution
#print axioms lending_solution
#print axioms limes_solution
#print axioms soda_solution
#print axioms bus_solution
#print axioms pallets_solution
#print axioms telethon_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A09.quarters_solution to "work/gsm8k-sprint41-quarters-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A09.paint_solution to "work/gsm8k-sprint41-paint-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A09.contest_solution to "work/gsm8k-sprint41-contest-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A09.screen_solution to "work/gsm8k-sprint41-screen-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A09.rope_solution to "work/gsm8k-sprint41-rope-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A09.chairs_solution to "work/gsm8k-sprint41-chairs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A09.nuts_solution to "work/gsm8k-sprint41-nuts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A09.spending_solution to "work/gsm8k-sprint41-spending-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A09.straws_solution to "work/gsm8k-sprint41-straws-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A09.lending_solution to "work/gsm8k-sprint41-lending-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A09.limes_solution to "work/gsm8k-sprint41-limes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A09.soda_solution to "work/gsm8k-sprint41-soda-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A09.bus_solution to "work/gsm8k-sprint41-bus-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A09.pallets_solution to "work/gsm8k-sprint41-pallets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A09.telethon_solution to "work/gsm8k-sprint41-telethon-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A09
