import LemmaWeave.Problems.GSM8K.Sprint0923A18Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A18
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A18

theorem candy_total (m : P.CandyStore) : m.total = 80 := P.candy_total m
theorem candy_cherry (m : P.CandyStore) : m.cherry = 8 := P.candy_cherry m
theorem candy_grape (m : P.CandyStore) : m.grape = 24 := P.candy_grape m
theorem candy_apple (m : P.CandyStore) : m.apple = 48 := P.candy_apple m
theorem candy_solution (m : P.CandyStore) : m.grape = 24 := P.candy_solution m
theorem football_saturday (m : P.FootballDistance) : m.saturday = 400 := P.football_saturday m
theorem football_sunday_per_throw (m : P.FootballDistance) : m.sundayPerThrow = 40 := P.football_sunday_per_throw m
theorem football_sunday (m : P.FootballDistance) : m.sunday = 1200 := P.football_sunday m
theorem football_solution (m : P.FootballDistance) : m.total = 1600 := P.football_solution m
theorem trip_first_distance (m : P.TownTrip) : m.firstDistance = 50 := P.trip_first_distance m
theorem trip_remaining_distance (m : P.TownTrip) : m.remainingDistance = 150 := P.trip_remaining_distance m
theorem trip_speed (m : P.TownTrip) : m.speed = 50 := P.trip_speed m
theorem trip_remaining_drive (m : P.TownTrip) : m.remainingDrive = 3 := P.trip_remaining_drive m
theorem trip_solution (m : P.TownTrip) : m.totalTime = 5 := P.trip_solution m
theorem safari_rabbits (m : P.SafariAnimals) : m.rabbits = 114 := P.safari_rabbits m
theorem safari_hyenas (m : P.SafariAnimals) : m.hyenas = 152 := P.safari_hyenas m
theorem safari_wild_dogs (m : P.SafariAnimals) : m.wildDogs = 202 := P.safari_wild_dogs m
theorem safari_leopards (m : P.SafariAnimals) : m.leopards = 57 := P.safari_leopards m
theorem safari_solution (m : P.SafariAnimals) : m.total = 605 := P.safari_solution m
theorem videos_first_half (m : P.JuneVideos) : m.firstHours = 150 := P.videos_first_half m
theorem videos_daily_after (m : P.JuneVideos) : m.dailyAfter = 20 := P.videos_daily_after m
theorem videos_second_half (m : P.JuneVideos) : m.remainingHours = 300 := P.videos_second_half m
theorem videos_solution (m : P.JuneVideos) : m.total = 450 := P.videos_solution m
theorem collection_items (m : P.CollectionProject) : m.items = 50 := P.collection_items m
theorem collection_solution (m : P.CollectionProject) : m.daily = 5 := P.collection_solution m
theorem pipe_bolts (m : P.PipeWashers) : m.bolts = 8 := P.pipe_bolts m
theorem pipe_used (m : P.PipeWashers) : m.used = 16 := P.pipe_used m
theorem pipe_solution (m : P.PipeWashers) : m.remaining = 4 := P.pipe_solution m
theorem water_solution (m : P.WaterWeight) : m.weight = 90 := P.water_solution m
theorem mustang_mid (m : P.MustangModels) : m.mid = 24 := P.mustang_mid m
theorem mustang_solution (m : P.MustangModels) : m.smallest = 12 := P.mustang_solution m
theorem pets_first_each (m : P.PetWalk) : m.firstFriendEach = 8 := P.pets_first_each m
theorem pets_first_friends (m : P.PetWalk) : m.firstFriends = 24 := P.pets_first_friends m
theorem pets_other_friends (m : P.PetWalk) : m.otherFriends = 4 := P.pets_other_friends m
theorem pets_solution (m : P.PetWalk) : m.total = 32 := P.pets_solution m
theorem race_under_six (m : P.RaceReference) : m.underSix = 4 := P.race_under_six m
theorem race_additional_under_eight (m : P.RaceReference) : m.additionalUnderEight = 12 := P.race_additional_under_eight m
theorem race_remaining (m : P.RaceReference) : m.remaining = 24 := P.race_remaining m
theorem race_reference_solution (m : P.RaceReference) : m.overFourteen = 4 := P.race_reference_solution m
theorem race_literal_remaining : 40 - 12 = 28 := P.race_literal_remaining
theorem race_literal_one_sixth_impossible : ¬ ∃ n : ℕ, n * 6 = 28 := P.race_literal_one_sixth_impossible
theorem corn_neighbor_each (m : P.CornHarvest) : m.neighborPerHectare = 160 := P.corn_neighbor_each m
theorem corn_neighbor_total (m : P.CornHarvest) : m.neighborTwoHectares = 320 := P.corn_neighbor_total m
theorem corn_per_period (m : P.CornHarvest) : m.perPeriod = 400 := P.corn_per_period m
theorem corn_solution (m : P.CornHarvest) : m.sixMonths = 1200 := P.corn_solution m
theorem balloons_brooke (m : P.Balloons) : m.brooke = 20 := P.balloons_brooke m
theorem balloons_tracy_before (m : P.Balloons) : m.tracyBeforePop = 30 := P.balloons_tracy_before m
theorem balloons_tracy_after (m : P.Balloons) : m.tracyAfter = 15 := P.balloons_tracy_after m
theorem balloons_solution (m : P.Balloons) : m.total = 35 := P.balloons_solution m
theorem shipping_pair_weight : 10 + 40 = 50 := P.shipping_pair_weight
theorem shipping_pairs_per_truck : 50 * 40 = 2000 := P.shipping_pairs_per_truck
theorem shipping_pairs_achievable : 50 * (40 * 3) = 2000 * 3 := P.shipping_pairs_achievable
theorem shipping_pairs_maximum : ∀ p : ℕ, 50 * p ≤ 2000 * 3 → p ≤ 120 := P.shipping_pairs_maximum
theorem shipping_solution : 2 * (40 * 3) = 240 := P.shipping_solution
theorem land_plow_half_days_at_max : 10 * 11 = 55 * 2 := P.land_plow_half_days_at_max
theorem land_mow_half_days_at_max : 12 * 5 = 30 * 2 := P.land_mow_half_days_at_max
theorem land_reference_total_half_days : 11 + 5 = 16 := P.land_reference_total_half_days
theorem land_reference_solution_days : 16 = 2 * 8 := P.land_reference_solution_days
theorem land_slower_plow_countermodel : 5 * 22 = 55 * 2 := P.land_slower_plow_countermodel
theorem land_slower_total_half_days : 22 + 5 = 27 := P.land_slower_total_half_days
theorem land_time_not_unique : (16 : ℕ) ≠ 27 := P.land_time_not_unique

end LemmaWeave.Tests.GSM8KSprint0923A18

#print axioms LemmaWeave.Tests.GSM8KSprint0923A18.candy_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A18.football_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A18.trip_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A18.safari_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A18.videos_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A18.collection_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A18.pipe_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A18.water_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A18.mustang_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A18.pets_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A18.race_reference_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A18.race_literal_one_sixth_impossible
#print axioms LemmaWeave.Tests.GSM8KSprint0923A18.corn_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A18.balloons_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A18.shipping_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A18.land_time_not_unique

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A18.candy_solution to "work/gsm8k-sprint108-candy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A18.football_solution to "work/gsm8k-sprint108-football-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A18.trip_solution to "work/gsm8k-sprint108-trip-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A18.safari_solution to "work/gsm8k-sprint108-safari-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A18.videos_solution to "work/gsm8k-sprint108-videos-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A18.collection_solution to "work/gsm8k-sprint108-collection-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A18.pipe_solution to "work/gsm8k-sprint108-pipe-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A18.water_solution to "work/gsm8k-sprint108-water-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A18.mustang_solution to "work/gsm8k-sprint108-mustang-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A18.pets_solution to "work/gsm8k-sprint108-pets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A18.race_reference_solution to "work/gsm8k-sprint108-race-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A18.corn_solution to "work/gsm8k-sprint108-corn-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A18.balloons_solution to "work/gsm8k-sprint108-balloons-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A18.shipping_solution to "work/gsm8k-sprint108-shipping-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A18.land_reference_solution_days to "work/gsm8k-sprint108-land-graph.json"

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A18.land_time_not_unique to "work/gsm8k-sprint108-land-graph.json"
