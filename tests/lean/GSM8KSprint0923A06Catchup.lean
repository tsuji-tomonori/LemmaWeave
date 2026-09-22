import LemmaWeave.Problems.GSM8K.Sprint0923A06CatchupModels
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A06Catchup
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A06Catchup

theorem fishing_first (m : P.FishingSeason) : m.first = 639 := P.fishing_first m
theorem fishing_first_ninety (m : P.FishingSeason) : m.firstNinety = 150 := P.fishing_first_ninety m
theorem fishing_remaining_days (m : P.FishingSeason) : m.remainingDays = 123 := P.fishing_remaining_days m
theorem fishing_remainder_catch (m : P.FishingSeason) : m.remainderCatch = 492 := P.fishing_remainder_catch m
theorem fishing_second (m : P.FishingSeason) : m.second = 642 := P.fishing_second m
theorem fishing_solution (m : P.FishingSeason) : m.difference = 3 := P.fishing_solution m
theorem worms_daily (m : P.BirdWorms) : m.daily = 18 := P.worms_daily m
theorem worms_needed (m : P.BirdWorms) : m.needed = 54 := P.worms_needed m
theorem worms_mama_net (m : P.BirdWorms) : m.mamaNet = 11 := P.worms_mama_net m
theorem worms_available (m : P.BirdWorms) : m.available = 20 := P.worms_available m
theorem worms_solution (m : P.BirdWorms) : m.more = 34 := P.worms_solution m
theorem necklaces_first (m : P.NecklaceMachines) : m.first = 45 := P.necklaces_first m
theorem necklaces_second (m : P.NecklaceMachines) : m.second = 108 := P.necklaces_second m
theorem necklaces_solution (m : P.NecklaceMachines) : m.total = 153 := P.necklaces_solution m
theorem chives_reserved_rows (m : P.ChiveGarden) : m.reservedRows = 5 := P.chives_reserved_rows m
theorem chives_rows (m : P.ChiveGarden) : m.chiveRows = 15 := P.chives_rows m
theorem chives_solution (m : P.ChiveGarden) : m.chives = 150 := P.chives_solution m
theorem shelter_before_adoption (m : P.CatShelter) : m.beforeAdoption = 23 := P.shelter_before_adoption m
theorem shelter_adopted (m : P.CatShelter) : m.adopted = 6 := P.shelter_adopted m
theorem shelter_solution (m : P.CatShelter) : m.current = 17 := P.shelter_solution m
theorem colors_green (m : P.FavoriteColors) : m.green = 15 := P.colors_green m
theorem colors_pink (m : P.FavoriteColors) : m.pink = 6 := P.colors_pink m
theorem colors_solution (m : P.FavoriteColors) : m.yellow = 9 := P.colors_solution m
theorem essay_conclusion (m : P.EssaySections) : m.conclusion = 1350 := P.essay_conclusion m
theorem essay_body_total (m : P.EssaySections) : m.bodyTotal = 3200 := P.essay_body_total m
theorem essay_solution (m : P.EssaySections) : m.eachBody = 800 := P.essay_solution m
theorem bakery_cupcakes (m : P.BakeryPurchase) : m.cupcakes = 1000 := P.bakery_cupcakes m
theorem bakery_doughnuts (m : P.BakeryPurchase) : m.doughnuts = 600 := P.bakery_doughnuts m
theorem bakery_pie (m : P.BakeryPurchase) : m.pie = 800 := P.bakery_pie m
theorem bakery_cookies (m : P.BakeryPurchase) : m.cookies = 900 := P.bakery_cookies m
theorem bakery_solution (m : P.BakeryPurchase) : m.totalCents = 3300 := P.bakery_solution m
theorem trip_distance (m : P.RoadTrip) : m.distance = 150 := P.trip_distance m
theorem trip_solution (m : P.RoadTrip) : m.hours = 6 := P.trip_solution m
theorem wrapping_first_two (m : P.WrappingPaper) : m.firstTwo = 8 := P.wrapping_first_two m
theorem wrapping_solution (m : P.WrappingPaper) : m.third = 4 := P.wrapping_solution m
theorem pie_samples_per_pie (m : P.PieSamples) : m.perPie = 10 := P.pie_samples_per_pie m
theorem pie_samples_solution (m : P.PieSamples) : m.total = 130 := P.pie_samples_solution m
theorem squirrels_extra (m : P.SquirrelCounts) : m.extra = 4 := P.squirrels_extra m
theorem squirrels_second (m : P.SquirrelCounts) : m.second = 16 := P.squirrels_second m
theorem squirrels_solution (m : P.SquirrelCounts) : m.total = 28 := P.squirrels_solution m
theorem exam_previous_count (m : P.ExamScore) : m.previousCount = 29 := P.exam_previous_count m
theorem exam_previous_sum (m : P.ExamScore) : m.previousSum = 2146 := P.exam_previous_sum m
theorem exam_target_total (m : P.ExamScore) : m.targetTotal = 2250 := P.exam_target_total m
theorem exam_94_enough (m : P.ExamScore) : m.targetTotal ≤ m.previousSum + 94 := P.exam_94_enough m
theorem exam_lower_bound (m : P.ExamScore) : 94 ≤ m.william := P.exam_lower_bound m
theorem exam_solution (m : P.ExamScore) : m.william = 94 := P.exam_solution m
theorem donations_organize_damaged (m : P.DonationsToOrganize) : m.damaged = 30 :=
  P.donations_organize_damaged m
theorem donations_organize_usable (m : P.DonationsToOrganize) : m.usableFloats = 90 :=
  P.donations_organize_usable m
theorem donations_organize_other (m : P.DonationsToOrganize) : m.other = 240 :=
  P.donations_organize_other m
theorem donations_organize_standalone (m : P.DonationsToOrganize) : m.standalone = 60 :=
  P.donations_organize_standalone m
theorem donations_included (m : P.DonationsToOrganize) : m.included = 30 :=
  P.donations_included m
theorem donations_organize_solution (m : P.DonationsToOrganize) : m.totalBalls = 90 :=
  P.donations_organize_solution m
theorem donations_original_other (m : P.DonationsOriginallyGiven) : m.other = 270 :=
  P.donations_original_other m
theorem donations_original_standalone (m : P.DonationsOriginallyGiven) : m.standalone = 30 :=
  P.donations_original_standalone m
theorem donations_original_included (m : P.DonationsOriginallyGiven) : m.included = 30 :=
  P.donations_original_included m
theorem donations_original_solution (m : P.DonationsOriginallyGiven) : m.totalBalls = 60 :=
  P.donations_original_solution m
theorem donations_two_readings_differ : (90 : ℕ) ≠ 60 := P.donations_two_readings_differ
theorem doughnuts_revenue (m : P.DoughnutProfit) : m.revenue = 75 := P.doughnuts_revenue m
theorem doughnuts_solution (m : P.DoughnutProfit) : m.profit = 22 := P.doughnuts_solution m

end LemmaWeave.Tests.GSM8KSprint0923A06Catchup

#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.fishing_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.worms_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.necklaces_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.chives_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.shelter_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.colors_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.essay_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.bakery_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.trip_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.wrapping_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.pie_samples_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.squirrels_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.exam_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.donations_organize_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.donations_original_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.donations_two_readings_differ
#print axioms LemmaWeave.Tests.GSM8KSprint0923A06Catchup.doughnuts_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A06Catchup.fishing_solution to "work/gsm8k-sprint99-fishing-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A06Catchup.worms_solution to "work/gsm8k-sprint99-worms-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A06Catchup.necklaces_solution to "work/gsm8k-sprint99-necklaces-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A06Catchup.chives_solution to "work/gsm8k-sprint99-chives-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A06Catchup.shelter_solution to "work/gsm8k-sprint99-shelter-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A06Catchup.colors_solution to "work/gsm8k-sprint99-colors-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A06Catchup.essay_solution to "work/gsm8k-sprint99-essay-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A06Catchup.bakery_solution to "work/gsm8k-sprint99-bakery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A06Catchup.trip_solution to "work/gsm8k-sprint99-trip-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A06Catchup.wrapping_solution to "work/gsm8k-sprint99-wrapping-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A06Catchup.pie_samples_solution to "work/gsm8k-sprint99-pie-samples-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A06Catchup.squirrels_solution to "work/gsm8k-sprint99-squirrels-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A06Catchup.exam_solution to "work/gsm8k-sprint99-exam-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A06Catchup.donations_organize_solution to "work/gsm8k-sprint99-donations-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A06Catchup.doughnuts_solution to "work/gsm8k-sprint99-doughnuts-graph.json"
