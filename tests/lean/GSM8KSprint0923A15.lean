import LemmaWeave.Problems.GSM8K.Sprint0923A15Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A15
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A15

theorem corn_pounds (m : P.CornCobs) : m.pounds = 112 := P.corn_pounds m
theorem corn_half_units (m : P.CornCobs) : m.halfPounds = 224 := P.corn_half_units m
theorem corn_solution (m : P.CornCobs) : m.cobs = 224 := P.corn_solution m
theorem pets_reference_owners (m : P.PetTownReference) : m.petOwners = 60 := P.pets_reference_owners m
theorem pets_reference_solution (m : P.PetTownReference) : m.citizens = 100 := P.pets_reference_solution m
theorem pets_other_type_countermodel :
    (120 * 100 = 200 * 60) ∧ (60 * 2 = 120) ∧ (30 : ℕ) ≤ 120 :=
  P.pets_other_type_countermodel
theorem pets_population_not_unique : (100 : ℕ) ≠ 200 := P.pets_population_not_unique
theorem melon_danny (m : P.WatermelonSlices) : m.danny = 30 := P.melon_danny m
theorem melon_sister (m : P.WatermelonSlices) : m.sister = 15 := P.melon_sister m
theorem melon_solution (m : P.WatermelonSlices) : m.total = 45 := P.melon_solution m
theorem reunion_women (m : P.Reunion) : m.women = 150 := P.reunion_women m
theorem reunion_adults (m : P.Reunion) : m.adults = 250 := P.reunion_adults m
theorem reunion_children (m : P.Reunion) : m.children = 500 := P.reunion_children m
theorem reunion_solution (m : P.Reunion) : m.total = 750 := P.reunion_solution m
theorem house_solution (m : P.HousePrice) : m.first = 200000 := P.house_solution m
theorem reading_days (m : P.ReadingDifference) : m.days = 42 := P.reading_days m
theorem reading_daily (m : P.ReadingDifference) : m.dailyDifference = 50 := P.reading_daily m
theorem reading_solution (m : P.ReadingDifference) : m.totalDifference = 2100 := P.reading_solution m
theorem theater_show (m : P.TheaterHours) : m.showMinutes = 110 := P.theater_show m
theorem theater_minutes (m : P.TheaterHours) : m.dailyMinutes = 660 := P.theater_minutes m
theorem theater_solution (m : P.TheaterHours) : m.dailyMinutes / 60 = 11 := P.theater_solution m
theorem animals_cats (m : P.DogLegs) : m.cats = 200 := P.animals_cats m
theorem animals_dogs (m : P.DogLegs) : m.dogs = 100 := P.animals_dogs m
theorem animals_solution (m : P.DogLegs) : m.legs = 400 := P.animals_solution m
theorem cupcakes_total (m : P.CupcakeCousins) : m.cupcakes = 48 := P.cupcakes_total m
theorem cupcakes_solution (m : P.CupcakeCousins) : m.cousins = 16 := P.cupcakes_solution m
theorem alberta_distance (m : P.AlbertaTrip) : m.distance = 330 := P.alberta_distance m
theorem alberta_solution (m : P.AlbertaTrip) : m.hours = 3 := P.alberta_solution m
theorem age_phoebe_future (m : P.FutureAge) : m.phoebeFuture = 15 := P.age_phoebe_future m
theorem age_raven_future (m : P.FutureAge) : m.ravenFuture = 60 := P.age_raven_future m
theorem age_solution (m : P.FutureAge) : m.ravenNow = 55 := P.age_solution m
theorem coin_dimes (m : P.CoinCount) : m.dimes = 4 := P.coin_dimes m
theorem coin_quarters (m : P.CoinCount) : m.quarters = 16 := P.coin_quarters m
theorem coin_added_nickels (m : P.CoinCount) : m.addedNickels = 10 := P.coin_added_nickels m
theorem coin_nickels (m : P.CoinCount) : m.nickels = 15 := P.coin_nickels m
theorem coin_solution (m : P.CoinCount) : m.total = 35 := P.coin_solution m
theorem embroidery_flowers (m : P.Embroidery) : m.flowerStitches = 3000 := P.embroidery_flowers m
theorem embroidery_unicorns (m : P.Embroidery) : m.unicornStitches = 540 := P.embroidery_unicorns m
theorem embroidery_total (m : P.Embroidery) : m.totalStitches = 4340 := P.embroidery_total m
theorem embroidery_solution (m : P.Embroidery) : m.minutes = 1085 := P.embroidery_solution m
theorem playground_stayed (m : P.Playground) : m.stayed = 5 := P.playground_stayed m
theorem playground_total (m : P.Playground) : m.playground = 15 := P.playground_total m
theorem playground_boys (m : P.Playground) : m.boys = 5 := P.playground_boys m
theorem playground_solution (m : P.Playground) : m.girls = 10 := P.playground_solution m
theorem race_covered (m : P.RaceSegments) : m.covered = 1110 := P.race_covered m
theorem race_reference_solution (m : P.RaceSegments) : m.remaining = 3890 := P.race_reference_solution m
theorem race_lead_countermodels :
    ((1000 - 560 = 440) ∧ (5000 - 560 = 4440)) ∧
    ((2000 - 1560 = 440) ∧ (5000 - 1560 = 3440)) :=
  P.race_lead_countermodels
theorem race_remaining_not_unique : (4440 : ℕ) ≠ 3440 := P.race_remaining_not_unique

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
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.pets_reference_solution to "work/gsm8k-sprint105-pets-graph.json"
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
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.race_reference_solution to "work/gsm8k-sprint105-race-graph.json"

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.pets_population_not_unique to "work/gsm8k-sprint105-pets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A15.race_remaining_not_unique to "work/gsm8k-sprint105-race-graph.json"
