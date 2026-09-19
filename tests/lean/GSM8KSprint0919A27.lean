import LemmaWeave.Problems.GSM8K.Sprint0919A27Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A27
open LemmaWeave.Problems.GSM8K.Sprint0919A27

theorem reading_rate : ReadingRate 200 20 10 250 25 := by norm_num [ReadingRate]
theorem reading_hours : (250 : Nat) = 10 * 25 := by norm_num
theorem reading_solution : ReadingRate 200 20 10 250 25 ∧ 10 = 10 ∧ 25 = 25 := by exact ⟨reading_rate, rfl, rfl⟩

theorem camp_morning : (250 : Nat) + 750 = 1000 ∧ 4 * 250 = 1000 := by norm_num
theorem camp_soccer : (1000 : Nat) = 250 + 750 := by norm_num
theorem camp_total : (2000 : Nat) = 2 * 1000 := by norm_num
theorem camp_solution : SoccerCamp 2000 1000 250 750 ∧ 250 = 250 ∧ 1000 = 1000 ∧ 2000 = 2000 := by
  exact ⟨by norm_num [SoccerCamp], rfl, rfl, rfl⟩

theorem cottage_total : (5 : Nat) * 8 = 40 := by norm_num
theorem cottage_each : (2 : Nat) * 20 = 40 := by norm_num
theorem cottage_solution : Cottage 5 8 40 2 20 ∧ 40 = 40 ∧ 20 = 20 := by exact ⟨by norm_num [Cottage], rfl, rfl⟩

theorem candles_halves : (24 : Nat) = 2 * 12 ∧ 12 = 12 ∧ 24 = 2 * 12 := by norm_num
theorem candles_total : (12 : Nat) + 24 = 36 := by norm_num
theorem candles_additional : (30 : Nat) + 6 = 36 := by norm_num
theorem candles_solution : CupcakeCandles 24 12 12 24 36 30 6 ∧ 12 = 12 ∧ 24 = 24 ∧ 36 = 36 ∧ 6 = 6 := by
  exact ⟨by norm_num [CupcakeCandles], rfl, rfl, rfl, rfl⟩

theorem tadpoles_released : (135 : Nat) * 100 = 180 * 75 := by norm_num
theorem tadpoles_kept : (180 : Nat) = 135 + 45 := by norm_num
theorem tadpoles_solution : Tadpoles 180 75 135 45 ∧ 135 = 135 ∧ 45 = 45 := by exact ⟨by norm_num [Tadpoles], rfl, rfl⟩

theorem taxi_lyft : (22 : Nat) = 19 + 3 := by norm_num
theorem taxi_base : (19 : Nat) = 15 + 4 := by norm_num
theorem taxi_tip : (3 : Nat) * 100 = 15 * 20 := by norm_num
theorem taxi_total : (15 : Nat) + 3 = 18 := by norm_num
theorem taxi_solution : TaxiRide 22 3 19 4 15 20 3 18 ∧ 19 = 19 ∧ 15 = 15 ∧ 3 = 3 ∧ 18 = 18 := by
  exact ⟨by norm_num [TaxiRide], rfl, rfl, rfl, rfl⟩

theorem wine_domestic : (2400 : Nat) = 2 * 1200 := by norm_num
theorem wine_total : (2400 : Nat) + 1200 = 3600 := by norm_num
theorem wine_consumed : (1200 : Nat) * 3 = 3600 := by norm_num
theorem wine_remaining : (3600 : Nat) = 1200 + 2400 := by norm_num
theorem wine_solution : Wine 2400 1200 3600 3 1200 2400 ∧ 1200 = 1200 ∧ 3600 = 3600 ∧ 1200 = 1200 ∧ 2400 = 2400 := by
  exact ⟨by norm_num [Wine], rfl, rfl, rfl, rfl⟩

theorem flight_ny_arrival : (360 : Nat) + 1080 = 1440 := by norm_num
theorem flight_immediate_duration : FlightConnection 360 1080 1440 2040 1440 600 := by norm_num [FlightConnection]
theorem flight_delayed_duration : FlightConnection 360 1080 1440 2040 1560 480 := by norm_num [FlightConnection]
theorem flight_solution : FlightConnection 360 1080 1440 2040 1440 600 ∧
    FlightConnection 360 1080 1440 2040 1560 480 ∧ 600 ≠ 480 := by
  exact ⟨flight_immediate_duration, flight_delayed_duration, by norm_num⟩

theorem salary_weekly : (4 : Nat) * 144 = 576 := by norm_num
theorem salary_daily : (6 : Nat) * 24 = 144 := by norm_num
theorem salary_hourly : (8 : Nat) * 3 = 24 := by norm_num
theorem salary_calendar_counterexample : (576 : ℚ) / (26 * 8) = 36 / 13 ∧ (36 : ℚ) / 13 ≠ 3 := by norm_num
theorem salary_solution : SalaryFourWeek 576 4 144 6 24 8 3 ∧ 144 = 144 ∧ 24 = 24 ∧ 3 = 3 ∧
    ((576 : ℚ) / (26 * 8) = 36 / 13 ∧ (36 : ℚ) / 13 ≠ 3) := by
  exact ⟨by norm_num [SalaryFourWeek], rfl, rfl, rfl, salary_calendar_counterexample⟩

theorem roses_given : (6 : Nat) + 9 + 4 = 19 := by norm_num
theorem roses_kept : (20 : Nat) = 19 + 1 := by norm_num
theorem roses_solution : Roses 20 6 9 4 19 1 ∧ 19 = 19 ∧ 1 = 1 := by exact ⟨by norm_num [Roses], rfl, rfl⟩

theorem engines_total : (5 : Nat) * 80 = 400 := by norm_num
theorem engines_defective : (100 : Nat) * 4 = 400 := by norm_num
theorem engines_good : (400 : Nat) = 100 + 300 := by norm_num
theorem engines_solution : Engines 5 80 400 4 100 300 ∧ 400 = 400 ∧ 100 = 100 ∧ 300 = 300 := by
  exact ⟨by norm_num [Engines], rfl, rfl, rfl⟩

theorem smoothies_total : (500 : Nat) + 100 = 600 := by norm_num
theorem smoothies_servings : (150 : Nat) * 4 = 600 := by norm_num
theorem smoothies_solution : Smoothies 500 100 600 150 4 ∧ 600 = 600 ∧ 4 = 4 := by exact ⟨by norm_num [Smoothies], rfl, rfl⟩

theorem apples_after_fall : (79 : Nat) = 26 + 53 := by norm_num
theorem apples_stolen : (53 : Nat) = 45 + 8 := by norm_num
theorem apples_solution : Apples 79 26 53 45 8 ∧ 53 = 53 ∧ 45 = 45 := by exact ⟨by norm_num [Apples], rfl, rfl⟩

theorem sat_weekdays : (2 : Nat) * 5 = 10 := by norm_num
theorem sat_weekends : (3 : Nat) * 2 = 6 := by norm_num
theorem sat_weekly : (10 : Nat) + 6 = 16 := by norm_num
theorem sat_total : (16 : Nat) * 6 = 96 := by norm_num
theorem sat_solution : SatStudy 2 5 10 3 2 6 16 6 96 ∧ 10 = 10 ∧ 6 = 6 ∧ 16 = 16 ∧ 96 = 96 := by
  exact ⟨by norm_num [SatStudy], rfl, rfl, rfl, rfl⟩

theorem usb_used : (8 : Nat) * 100 = 16 * 50 := by norm_num
theorem usb_available : (16 : Nat) = 8 + 8 := by norm_num
theorem usb_solution : UsbDrive 16 50 8 8 ∧ 8 = 8 ∧ 8 = 8 := by exact ⟨by norm_num [UsbDrive], rfl, rfl⟩

#print axioms LemmaWeave.Tests.GSM8KSprint0919A27.apples_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A27.camp_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A27.candles_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A27.cottage_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A27.engines_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A27.flight_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A27.reading_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A27.roses_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A27.salary_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A27.sat_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A27.smoothies_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A27.tadpoles_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A27.taxi_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A27.usb_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A27.wine_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A27.apples_solution to "work/gsm8k-sprint27-apples-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A27.camp_solution to "work/gsm8k-sprint27-camp-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A27.candles_solution to "work/gsm8k-sprint27-candles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A27.cottage_solution to "work/gsm8k-sprint27-cottage-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A27.engines_solution to "work/gsm8k-sprint27-engines-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A27.flight_solution to "work/gsm8k-sprint27-flight-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A27.reading_solution to "work/gsm8k-sprint27-reading-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A27.roses_solution to "work/gsm8k-sprint27-roses-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A27.salary_solution to "work/gsm8k-sprint27-salary-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A27.sat_solution to "work/gsm8k-sprint27-sat-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A27.smoothies_solution to "work/gsm8k-sprint27-smoothies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A27.tadpoles_solution to "work/gsm8k-sprint27-tadpoles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A27.taxi_solution to "work/gsm8k-sprint27-taxi-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A27.usb_solution to "work/gsm8k-sprint27-usb-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A27.wine_solution to "work/gsm8k-sprint27-wine-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A27
