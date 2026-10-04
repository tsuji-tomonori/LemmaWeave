import LemmaWeave.Problems.GSM8K.Sprint0923A15Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A15


theorem corn_pounds (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.CornCobs) : m.pounds = 112 := LemmaWeave.Problems.GSM8K.Sprint0923A15.corn_pounds m
theorem corn_half_units (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.CornCobs) : m.halfPounds = 224 := LemmaWeave.Problems.GSM8K.Sprint0923A15.corn_half_units m
theorem corn_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.CornCobs) : m.cobs = 224 := LemmaWeave.Problems.GSM8K.Sprint0923A15.corn_solution m
theorem pets_reference_owners (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.PetTownReference) : m.petOwners = 60 := LemmaWeave.Problems.GSM8K.Sprint0923A15.pets_reference_owners m
theorem pets_reference_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.PetTownReference) : m.citizens = 100 := LemmaWeave.Problems.GSM8K.Sprint0923A15.pets_reference_solution m
theorem pets_other_type_countermodel :
    (120 * 100 = 200 * 60) ∧ (60 * 2 = 120) ∧ (30 : ℕ) ≤ 120 :=
  LemmaWeave.Problems.GSM8K.Sprint0923A15.pets_other_type_countermodel
theorem pets_population_not_unique : (100 : ℕ) ≠ 200 := LemmaWeave.Problems.GSM8K.Sprint0923A15.pets_population_not_unique
theorem melon_danny (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.WatermelonSlices) : m.danny = 30 := LemmaWeave.Problems.GSM8K.Sprint0923A15.melon_danny m
theorem melon_sister (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.WatermelonSlices) : m.sister = 15 := LemmaWeave.Problems.GSM8K.Sprint0923A15.melon_sister m
theorem melon_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.WatermelonSlices) : m.total = 45 := LemmaWeave.Problems.GSM8K.Sprint0923A15.melon_solution m
theorem reunion_women (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.Reunion) : m.women = 150 := LemmaWeave.Problems.GSM8K.Sprint0923A15.reunion_women m
theorem reunion_adults (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.Reunion) : m.adults = 250 := LemmaWeave.Problems.GSM8K.Sprint0923A15.reunion_adults m
theorem reunion_children (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.Reunion) : m.children = 500 := LemmaWeave.Problems.GSM8K.Sprint0923A15.reunion_children m
theorem reunion_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.Reunion) : m.total = 750 := LemmaWeave.Problems.GSM8K.Sprint0923A15.reunion_solution m
theorem house_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.HousePrice) : m.first = 200000 := LemmaWeave.Problems.GSM8K.Sprint0923A15.house_solution m
theorem reading_days (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.ReadingDifference) : m.days = 42 := LemmaWeave.Problems.GSM8K.Sprint0923A15.reading_days m
theorem reading_daily (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.ReadingDifference) : m.dailyDifference = 50 := LemmaWeave.Problems.GSM8K.Sprint0923A15.reading_daily m
theorem reading_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.ReadingDifference) : m.totalDifference = 2100 := LemmaWeave.Problems.GSM8K.Sprint0923A15.reading_solution m
theorem theater_show (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.TheaterHours) : m.showMinutes = 110 := LemmaWeave.Problems.GSM8K.Sprint0923A15.theater_show m
theorem theater_minutes (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.TheaterHours) : m.dailyMinutes = 660 := LemmaWeave.Problems.GSM8K.Sprint0923A15.theater_minutes m
theorem theater_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.TheaterHours) : m.dailyMinutes / 60 = 11 := LemmaWeave.Problems.GSM8K.Sprint0923A15.theater_solution m
theorem animals_cats (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.DogLegs) : m.cats = 200 := LemmaWeave.Problems.GSM8K.Sprint0923A15.animals_cats m
theorem animals_dogs (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.DogLegs) : m.dogs = 100 := LemmaWeave.Problems.GSM8K.Sprint0923A15.animals_dogs m
theorem animals_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.DogLegs) : m.legs = 400 := LemmaWeave.Problems.GSM8K.Sprint0923A15.animals_solution m
theorem cupcakes_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.CupcakeCousins) : m.cupcakes = 48 := LemmaWeave.Problems.GSM8K.Sprint0923A15.cupcakes_total m
theorem cupcakes_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.CupcakeCousins) : m.cousins = 16 := LemmaWeave.Problems.GSM8K.Sprint0923A15.cupcakes_solution m
theorem alberta_distance (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.AlbertaTrip) : m.distance = 330 := LemmaWeave.Problems.GSM8K.Sprint0923A15.alberta_distance m
theorem alberta_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.AlbertaTrip) : m.hours = 3 := LemmaWeave.Problems.GSM8K.Sprint0923A15.alberta_solution m
theorem age_phoebe_future (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.FutureAge) : m.phoebeFuture = 15 := LemmaWeave.Problems.GSM8K.Sprint0923A15.age_phoebe_future m
theorem age_raven_future (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.FutureAge) : m.ravenFuture = 60 := LemmaWeave.Problems.GSM8K.Sprint0923A15.age_raven_future m
theorem age_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.FutureAge) : m.ravenNow = 55 := LemmaWeave.Problems.GSM8K.Sprint0923A15.age_solution m
theorem coin_dimes (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.CoinCount) : m.dimes = 4 := LemmaWeave.Problems.GSM8K.Sprint0923A15.coin_dimes m
theorem coin_quarters (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.CoinCount) : m.quarters = 16 := LemmaWeave.Problems.GSM8K.Sprint0923A15.coin_quarters m
theorem coin_added_nickels (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.CoinCount) : m.addedNickels = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A15.coin_added_nickels m
theorem coin_nickels (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.CoinCount) : m.nickels = 15 := LemmaWeave.Problems.GSM8K.Sprint0923A15.coin_nickels m
theorem coin_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.CoinCount) : m.total = 35 := LemmaWeave.Problems.GSM8K.Sprint0923A15.coin_solution m
theorem embroidery_flowers (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.Embroidery) : m.flowerStitches = 3000 := LemmaWeave.Problems.GSM8K.Sprint0923A15.embroidery_flowers m
theorem embroidery_unicorns (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.Embroidery) : m.unicornStitches = 540 := LemmaWeave.Problems.GSM8K.Sprint0923A15.embroidery_unicorns m
theorem embroidery_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.Embroidery) : m.totalStitches = 4340 := LemmaWeave.Problems.GSM8K.Sprint0923A15.embroidery_total m
theorem embroidery_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.Embroidery) : m.minutes = 1085 := LemmaWeave.Problems.GSM8K.Sprint0923A15.embroidery_solution m
theorem playground_stayed (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.Playground) : m.stayed = 5 := LemmaWeave.Problems.GSM8K.Sprint0923A15.playground_stayed m
theorem playground_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.Playground) : m.playground = 15 := LemmaWeave.Problems.GSM8K.Sprint0923A15.playground_total m
theorem playground_boys (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.Playground) : m.boys = 5 := LemmaWeave.Problems.GSM8K.Sprint0923A15.playground_boys m
theorem playground_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.Playground) : m.girls = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A15.playground_solution m
theorem race_covered (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.RaceSegments) : m.covered = 1110 := LemmaWeave.Problems.GSM8K.Sprint0923A15.race_covered m
theorem race_reference_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A15.RaceSegments) : m.remaining = 3890 := LemmaWeave.Problems.GSM8K.Sprint0923A15.race_reference_solution m
theorem race_lead_countermodels :
    ((1000 - 560 = 440) ∧ (5000 - 560 = 4440)) ∧
    ((2000 - 1560 = 440) ∧ (5000 - 1560 = 3440)) :=
  LemmaWeave.Problems.GSM8K.Sprint0923A15.race_lead_countermodels
theorem race_remaining_not_unique : (4440 : ℕ) ≠ 3440 := LemmaWeave.Problems.GSM8K.Sprint0923A15.race_remaining_not_unique

end LemmaWeave.Tests.GSM8KSprint0923A15

#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.corn_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.pets_reference_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.pets_other_type_countermodel
#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.melon_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.reunion_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.house_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.reading_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.theater_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.animals_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.cupcakes_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.alberta_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.age_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.coin_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.embroidery_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.playground_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.race_reference_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A15.race_lead_countermodels

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.corn_solution to "work/gsm8k-sprint105-corn-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.pets_reference_solution to "work/lw-preserved-LemmaWeave.Tests.GSM8KSprint0923A15.pets_reference_solution-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.melon_solution to "work/gsm8k-sprint105-melon-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.reunion_solution to "work/gsm8k-sprint105-reunion-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.house_solution to "work/gsm8k-sprint105-house-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.reading_solution to "work/gsm8k-sprint105-reading-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.theater_solution to "work/gsm8k-sprint105-theater-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.animals_solution to "work/gsm8k-sprint105-animals-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.cupcakes_solution to "work/gsm8k-sprint105-cupcakes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.alberta_solution to "work/gsm8k-sprint105-alberta-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.age_solution to "work/gsm8k-sprint105-age-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.coin_solution to "work/gsm8k-sprint105-coins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.embroidery_solution to "work/gsm8k-sprint105-embroidery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.playground_solution to "work/gsm8k-sprint105-playground-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.race_reference_solution to "work/lw-preserved-LemmaWeave.Tests.GSM8KSprint0923A15.race_reference_solution-graph.json"

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.pets_population_not_unique to "work/gsm8k-sprint105-pets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.race_remaining_not_unique to "work/gsm8k-sprint105-race-graph.json"
