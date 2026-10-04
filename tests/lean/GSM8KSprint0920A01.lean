import LemmaWeave.Problems.GSM8K.Sprint0920A01Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A01
open LemmaWeave.Problems.GSM8K.Sprint0920A01

theorem plumber_job1 : (240 : Nat) = 3 * 50 + 3 * 30 := by norm_num
theorem plumber_job2 : (250 : Nat) = 2 * 50 + 5 * 30 := by norm_num
theorem plumber_job3 : (220 : Nat) = 50 + 2 * 40 + 3 * 30 := by norm_num
theorem plumber_max : (240 : Nat) ≤ 250 ∧ (220 : Nat) ≤ 250 := by norm_num
theorem plumber_solution : PlumberJobs 240 250 220 250 := by
  unfold PlumberJobs
  exact ⟨plumber_job1, plumber_job2, plumber_job3, rfl, plumber_max.1, plumber_max.2⟩

theorem buckets_b : (9 : Nat) + 3 = 12 := by norm_num
theorem buckets_a : (12 : Nat) + 4 = 16 := by norm_num
theorem buckets_total : (16 : Nat) + 12 + 9 = 37 := by norm_num
theorem buckets_solution : FruitBuckets 16 12 9 37 := by
  unfold FruitBuckets
  exact ⟨rfl, buckets_b, buckets_a, buckets_total⟩

theorem hours_armand : (4 : Nat) * 3 = 12 := by norm_num
theorem hours_ella : (24 : Nat) = 2 * 12 := by norm_num
theorem hours_total : (12 : Nat) + 4 + 24 = 40 := by norm_num
theorem hours_solution : WeekendHours 12 4 24 40 := by
  unfold WeekendHours
  exact ⟨rfl, hours_armand, hours_ella, hours_total⟩

theorem carnival_bumper : (4 : Nat) = 2 * 2 := by norm_num
theorem carnival_shuttle : (16 : Nat) = 4 * 4 := by norm_num
theorem carnival_ferris : (30 : Nat) = 2 * 3 * 5 := by norm_num
theorem carnival_total : (50 : Nat) = 4 + 16 + 30 := by norm_num
theorem carnival_solution : CarnivalCost 4 16 30 50 := by
  unfold CarnivalCost
  exact ⟨carnival_bumper, carnival_shuttle, carnival_ferris, carnival_total⟩

theorem outlay_refunds : (1200 : Nat) = 700 + 500 := by norm_num
theorem outlay_bike : (600 : Nat) = 500 * 120 / 100 := by norm_num
theorem outlay_resale : (480 : Nat) = 600 * 80 / 100 := by norm_num
theorem outlay_included : (1420 : Nat) + 1200 + 480 = 3000 + 100 := by norm_num
theorem outlay_separate : (2020 : Nat) = (3000 - 1200) + (600 - 480) + 100 := by norm_num
theorem outlay_solution : ShoppingOutlay 1200 600 480 100 1420 2020 := by
  unfold ShoppingOutlay
  exact ⟨outlay_refunds, outlay_bike, outlay_resale, rfl,
    outlay_included, outlay_separate⟩

theorem flowers_pot : (29 : Nat) = 9 + 20 := by norm_num
theorem flowers_soil : (7 : Nat) + 2 = 9 := by norm_num
theorem flowers_total : (45 : Nat) = 9 + 29 + 7 := by norm_num
theorem flowers_solution : FlowerPlanting 9 29 7 45 := by
  unfold FlowerPlanting
  exact ⟨rfl, flowers_pot, flowers_soil, flowers_total⟩

theorem reading_hourly : (36 : Nat) = 12 * 3 := by norm_num
theorem reading_pages : (72 : Nat) = 36 * 2 := by norm_num
theorem reading_solution : FasterReading 12 3 2 36 72 := by
  unfold FasterReading
  exact ⟨rfl, rfl, reading_hourly, rfl, reading_pages⟩

theorem cds_life : (300 : Nat) = 3 * 100 := by norm_num
theorem cds_day : (150 : Nat) = 3 * 50 := by norm_num
theorem cds_rescind : (255 : Nat) = 3 * 85 := by norm_num
theorem cds_total : (705 : Nat) = 300 + 150 + 255 := by norm_num
theorem cds_solution : CdPurchase 100 50 85 3 300 150 255 705 := by
  unfold CdPurchase
  exact ⟨rfl, rfl, rfl, rfl, cds_life, cds_day, cds_rescind, cds_total⟩

theorem dresses_count : (56 : Nat) = 14 * 4 := by norm_num
theorem dresses_hours : (42 : Nat) = 14 * 3 := by norm_num
theorem dresses_solution : DressWork 56 4 14 3 42 := by
  unfold DressWork
  exact ⟨rfl, rfl, dresses_count, rfl, dresses_hours⟩

theorem zoo_snakes : (24 : Nat) = 3 * 8 := by norm_num
theorem zoo_monkeys : (48 : Nat) = 2 * 24 := by norm_num
theorem zoo_elephants : (16 : Nat) * 2 = 8 + 24 := by norm_num
theorem zoo_zebras : (13 : Nat) + 3 = 16 := by norm_num
theorem zoo_difference : (35 : Nat) + 13 = 48 := by norm_num
theorem zoo_solution : ZooDifference 8 24 48 16 13 35 := by
  unfold ZooDifference
  exact ⟨rfl, zoo_snakes, zoo_monkeys, zoo_elephants, zoo_zebras, zoo_difference⟩

theorem pumpkins_jessica : (27 : Nat) * 2 = 54 := by norm_num
theorem pumpkins_betty : (108 : Nat) = 4 * 27 := by norm_num
theorem pumpkins_difference : (81 : Nat) + 27 = 108 := by norm_num
theorem pumpkins_solution : PumpkinDifference 54 27 108 81 := by
  unfold PumpkinDifference
  exact ⟨rfl, pumpkins_jessica, pumpkins_betty, pumpkins_difference⟩

theorem coffee_count : (15 : Nat) * 5 = 25 * 3 := by norm_num
theorem coffee_nonbuyers : (10 : Nat) + 15 = 25 := by norm_num
theorem coffee_solution : CoffeeCustomers 25 3 5 15 10 := by
  unfold CoffeeCustomers
  exact ⟨rfl, rfl, rfl, coffee_count, coffee_nonbuyers⟩

theorem paper_weekly : (150 : Nat) = 3 * 50 := by norm_num
theorem paper_short : (1800 : Nat) = 12 * 150 := by norm_num
theorem paper_whole_pages : (3000 : Nat) = 1800 + 1200 := by norm_num
theorem paper_whole_sheets : (3000 : Nat) = 1500 * 2 := by norm_num
theorem paper_whole_reams : (1500 : Nat) = 3 * 500 := by norm_num
theorem paper_prorated_lower : (2000 : Nat) * 13 < 27000 := by norm_num
theorem paper_prorated_upper : (27000 : Nat) ≤ 3000 * 13 := by norm_num
theorem paper_solution :
    PaperReams 12 150 1800 1200 3000 1500 3 27000 13 2000 3000 3 := by
  unfold PaperReams
  exact ⟨rfl, paper_weekly, paper_short, rfl, paper_whole_pages,
    paper_whole_sheets, paper_whole_reams, rfl, rfl, rfl,
    paper_prorated_lower, rfl, paper_prorated_upper, rfl⟩

theorem sand_mary : (7 : Nat) = 4 + 3 := by norm_num
theorem sand_iris : (6 : Nat) + 1 = 7 := by norm_num
theorem sand_buckets : (17 : Nat) = 4 + 7 + 6 := by norm_num
theorem sand_pounds : (34 : Nat) = 17 * 2 := by norm_num
theorem sand_solution : SandCollection 4 7 6 17 2 34 := by
  unfold SandCollection
  exact ⟨rfl, sand_mary, sand_iris, sand_buckets, rfl, sand_pounds⟩

theorem quarters_karen : (800 : Nat) = 32 * 25 := by norm_num
theorem quarters_christopher : (1600 : Nat) = 64 * 25 := by norm_num
theorem quarters_difference : (800 : Nat) + 800 = 1600 := by norm_num
theorem quarters_solution : QuarterDifference 32 64 25 800 1600 800 := by
  unfold QuarterDifference
  exact ⟨rfl, rfl, rfl, quarters_karen, quarters_christopher, quarters_difference⟩

#print axioms plumber_solution
#print axioms buckets_solution
#print axioms hours_solution
#print axioms carnival_solution
#print axioms outlay_solution
#print axioms flowers_solution
#print axioms reading_solution
#print axioms cds_solution
#print axioms dresses_solution
#print axioms zoo_solution
#print axioms pumpkins_solution
#print axioms coffee_solution
#print axioms paper_solution
#print axioms sand_solution
#print axioms quarters_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A01.plumber_solution to "work/gsm8k-sprint33-plumber-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A01.buckets_solution to "work/gsm8k-sprint33-buckets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A01.hours_solution to "work/gsm8k-sprint33-hours-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A01.carnival_solution to "work/gsm8k-sprint33-carnival-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A01.outlay_solution to "work/gsm8k-sprint33-outlay-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A01.flowers_solution to "work/gsm8k-sprint33-flowers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A01.reading_solution to "work/gsm8k-sprint33-reading-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A01.cds_solution to "work/gsm8k-sprint33-cds-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A01.dresses_solution to "work/gsm8k-sprint33-dresses-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A01.zoo_solution to "work/gsm8k-sprint33-zoo-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A01.pumpkins_solution to "work/gsm8k-sprint33-pumpkins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A01.coffee_solution to "work/gsm8k-sprint33-coffee-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A01.paper_solution to "work/gsm8k-sprint33-paper-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A01.sand_solution to "work/gsm8k-sprint33-sand-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A01.quarters_solution to "work/gsm8k-sprint33-quarters-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A01
