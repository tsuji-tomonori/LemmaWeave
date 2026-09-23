import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A18

/-- Money is represented in cents. -/
structure CandyStore where total cherry grape apple : ℕ
  hCost : total * 250 = 20000
  hGrape : grape = 3 * cherry
  hApple : apple = 2 * grape
  hTotal : total = cherry + grape + apple

theorem candy_total (m : CandyStore) : m.total = 80 := by omega
theorem candy_cherry (m : CandyStore) : m.cherry = 8 := by omega
theorem candy_grape (m : CandyStore) : m.grape = 24 := by omega
theorem candy_apple (m : CandyStore) : m.apple = 48 := by omega
theorem candy_solution (m : CandyStore) : m.grape = 24 := candy_grape m

structure FootballDistance where saturdayPerThrow sundayPerThrow saturday sunday total : ℕ
  hSaturdayPer : saturdayPerThrow = 20
  hSundayPer : sundayPerThrow = 2 * saturdayPerThrow
  hSaturday : saturday = 20 * saturdayPerThrow
  hSunday : sunday = 30 * sundayPerThrow
  hTotal : total = saturday + sunday

theorem football_saturday (m : FootballDistance) : m.saturday = 400 := by omega
theorem football_sunday_per_throw (m : FootballDistance) : m.sundayPerThrow = 40 := by omega
theorem football_sunday (m : FootballDistance) : m.sunday = 1200 := by omega
theorem football_solution (m : FootballDistance) : m.total = 1600 := by omega

structure TownTrip where firstDistance remainingDistance speed remainingDrive totalTime : ℕ
  hFirst : firstDistance * 4 = 200
  hRemaining : firstDistance + remainingDistance = 200
  hSpeed : speed = firstDistance
  hRemainingDrive : remainingDrive * 50 = remainingDistance
  hTotal : totalTime = 1 + 1 + remainingDrive

theorem trip_first_distance (m : TownTrip) : m.firstDistance = 50 := by omega
theorem trip_remaining_distance (m : TownTrip) : m.remainingDistance = 150 := by omega
theorem trip_speed (m : TownTrip) : m.speed = 50 := by omega
theorem trip_remaining_drive (m : TownTrip) : m.remainingDrive = 3 := by omega
theorem trip_solution (m : TownTrip) : m.totalTime = 5 := by omega

structure SafariAnimals where rabbits hyenas wildDogs leopards total : ℕ
  hRabbits : rabbits = 80 + 34
  hHyenas : hyenas + 42 = 80 + rabbits
  hWildDogs : wildDogs = hyenas + 50
  hLeopards : leopards * 2 = rabbits
  hTotal : total = 80 + rabbits + hyenas + wildDogs + leopards

theorem safari_rabbits (m : SafariAnimals) : m.rabbits = 114 := by omega
theorem safari_hyenas (m : SafariAnimals) : m.hyenas = 152 := by omega
theorem safari_wild_dogs (m : SafariAnimals) : m.wildDogs = 202 := by omega
theorem safari_leopards (m : SafariAnimals) : m.leopards = 57 := by omega
theorem safari_solution (m : SafariAnimals) : m.total = 605 := by omega

/-- Reference reading: 15 June days at 10 hours/day, then 15 days at 20 hours/day. -/
structure JuneVideos where firstDays remainingDays firstHours dailyAfter remainingHours total : ℕ
  hDays : firstDays = 15 ∧ remainingDays = 15
  hFirst : firstHours = firstDays * 10
  hDailyAfter : dailyAfter = 2 * 10
  hRemaining : remainingHours = remainingDays * 20
  hTotal : total = firstHours + remainingHours

theorem videos_first_half (m : JuneVideos) : m.firstHours = 150 := by omega
theorem videos_daily_after (m : JuneVideos) : m.dailyAfter = 20 := by omega
theorem videos_second_half (m : JuneVideos) : m.remainingHours = 300 := by omega
theorem videos_solution (m : JuneVideos) : m.total = 450 := by omega

structure CollectionProject where items daily : ℕ
  hItems : items = 30 + 20
  hDaily : daily * 10 = items

theorem collection_items (m : CollectionProject) : m.items = 50 := by omega
theorem collection_solution (m : CollectionProject) : m.daily = 5 := by omega

structure PipeWashers where bolts used remaining : ℕ
  hBolts : bolts * 5 = 40
  hUsed : used = bolts * 2
  hRemaining : remaining + used = 20

theorem pipe_bolts (m : PipeWashers) : m.bolts = 8 := by omega
theorem pipe_used (m : PipeWashers) : m.used = 16 := by omega
theorem pipe_solution (m : PipeWashers) : m.remaining = 4 := by omega

structure WaterWeight where weight : ℕ
  hRatio : weight * 6 = 54 * 10

theorem water_solution (m : WaterWeight) : m.weight = 90 := by omega

structure MustangModels where mid smallest : ℕ
  hMid : mid * 10 = 240
  hSmall : smallest * 2 = mid

theorem mustang_mid (m : MustangModels) : m.mid = 24 := by omega
theorem mustang_solution (m : MustangModels) : m.smallest = 12 := by omega

structure PetWalk where firstFriendEach firstFriends otherFriends total : ℕ
  hFirstEach : firstFriendEach = 2 * 4
  hFirstFriends : firstFriends = 3 * firstFriendEach
  hOther : otherFriends = 2 * 2
  hTotal : total = 4 + firstFriends + otherFriends

theorem pets_first_each (m : PetWalk) : m.firstFriendEach = 8 := by omega
theorem pets_first_friends (m : PetWalk) : m.firstFriends = 24 := by omega
theorem pets_other_friends (m : PetWalk) : m.otherFriends = 4 := by omega
theorem pets_solution (m : PetWalk) : m.total = 32 := by omega

/-- Reference reading: the 12 runners are an additional group finishing from 6 through 8 minutes. -/
structure RaceReference where underSix additionalUnderEight remaining overFourteen : ℕ
  hUnderSix : underSix * 10 = 40
  hAdditional : additionalUnderEight = 3 * underSix
  hPartition : underSix + additionalUnderEight + remaining = 40
  hOver : overFourteen * 6 = remaining

theorem race_under_six (m : RaceReference) : m.underSix = 4 := by omega
theorem race_additional_under_eight (m : RaceReference) : m.additionalUnderEight = 12 := by omega
theorem race_remaining (m : RaceReference) : m.remaining = 24 := by omega
theorem race_reference_solution (m : RaceReference) : m.overFourteen = 4 := by omega
/-- Literal cumulative reading: 12 total runners are under eight minutes, leaving 28. -/
theorem race_literal_remaining : 40 - 12 = 28 := by norm_num
theorem race_literal_one_sixth_impossible : ¬ ∃ n : ℕ, n * 6 = 28 := by omega

structure CornHarvest where neighborPerHectare neighborTwoHectares perPeriod sixMonths : ℕ
  hNeighborEach : neighborPerHectare = 2 * 80
  hNeighborTwo : neighborTwoHectares = 2 * neighborPerHectare
  hPerPeriod : perPeriod = 80 + neighborTwoHectares
  hSixMonths : sixMonths = 3 * perPeriod

theorem corn_neighbor_each (m : CornHarvest) : m.neighborPerHectare = 160 := by omega
theorem corn_neighbor_total (m : CornHarvest) : m.neighborTwoHectares = 320 := by omega
theorem corn_per_period (m : CornHarvest) : m.perPeriod = 400 := by omega
theorem corn_solution (m : CornHarvest) : m.sixMonths = 1200 := by omega

structure Balloons where brooke tracyBeforePop tracyAfter total : ℕ
  hBrooke : brooke = 12 + 8
  hTracyBefore : tracyBeforePop = 6 + 24
  hTracyAfter : tracyAfter * 2 = tracyBeforePop
  hTotal : total = brooke + tracyAfter

theorem balloons_brooke (m : Balloons) : m.brooke = 20 := by omega
theorem balloons_tracy_before (m : Balloons) : m.tracyBeforePop = 30 := by omega
theorem balloons_tracy_after (m : Balloons) : m.tracyAfter = 15 := by omega
theorem balloons_solution (m : Balloons) : m.total = 35 := by omega

theorem shipping_pair_weight : 10 + 40 = 50 := by norm_num
theorem shipping_pairs_per_truck : 50 * 40 = 2000 := by norm_num
theorem shipping_pairs_achievable : 50 * (40 * 3) = 2000 * 3 := by norm_num
theorem shipping_pairs_maximum : ∀ p : ℕ, 50 * p ≤ 2000 * 3 → p ≤ 120 := by omega
theorem shipping_solution : 2 * (40 * 3) = 240 := by norm_num

/-- Durations are counted in half-days; maximum stated work rates are used. -/
theorem land_plow_half_days_at_max : 10 * 11 = 55 * 2 := by norm_num
theorem land_mow_half_days_at_max : 12 * 5 = 30 * 2 := by norm_num
theorem land_reference_total_half_days : 11 + 5 = 16 := by norm_num
theorem land_reference_solution_days : 16 = 2 * 8 := by norm_num
/-- A slower admissible plowing rate of 5 acres/day gives a different duration. -/
theorem land_slower_plow_countermodel : 5 * 22 = 55 * 2 := by norm_num
theorem land_slower_total_half_days : 22 + 5 = 27 := by norm_num
theorem land_time_not_unique : (16 : ℕ) ≠ 27 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint0923A18
