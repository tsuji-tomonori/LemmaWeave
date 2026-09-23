import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A19

structure ElectricityBill where usageCost total : ℕ
  hUsage : usageCost = 4 * 300
  hTotal : total = usageCost + 150

theorem electricity_usage (m : ElectricityBill) : m.usageCost = 1200 := by omega
theorem electricity_solution (m : ElectricityBill) : m.total = 1350 := by omega

/-- Money is represented in cents. -/
structure Birdhouses where plankCost nailCost oneHouse fourHouses : ℕ
  hPlanks : plankCost = 7 * 300
  hNails : nailCost = 20 * 5
  hOne : oneHouse = plankCost + nailCost
  hFour : fourHouses = 4 * oneHouse

theorem birdhouse_planks (m : Birdhouses) : m.plankCost = 2100 := by omega
theorem birdhouse_nails (m : Birdhouses) : m.nailCost = 100 := by omega
theorem birdhouse_one (m : Birdhouses) : m.oneHouse = 2200 := by omega
theorem birdhouse_solution (m : Birdhouses) : m.fourHouses = 8800 := by omega

structure Babysitting where donaldsons merck hille total : ℕ
  hDonaldsons : donaldsons = 15 * 7
  hMerck : merck = 18 * 6
  hHille : hille = 20 * 3
  hTotal : total = donaldsons + merck + hille

theorem babysitting_donaldsons (m : Babysitting) : m.donaldsons = 105 := by omega
theorem babysitting_merck (m : Babysitting) : m.merck = 108 := by omega
theorem babysitting_hille (m : Babysitting) : m.hille = 60 := by omega
theorem babysitting_solution (m : Babysitting) : m.total = 273 := by omega

structure SalaryIncrease where increase newSalary : ℕ
  hIncrease : increase * 100 = 10000 * 2
  hNew : newSalary = 10000 + increase

theorem salary_increase (m : SalaryIncrease) : m.increase = 200 := by omega
theorem salary_solution (m : SalaryIncrease) : m.newSalary = 10200 := by omega

structure BallBounce where first second third fourth fifth : ℕ
  hFirst : first * 2 = 96
  hSecond : second * 2 = first
  hThird : third * 2 = second
  hFourth : fourth * 2 = third
  hFifth : fifth * 2 = fourth

theorem bounce_first (m : BallBounce) : m.first = 48 := by omega
theorem bounce_second (m : BallBounce) : m.second = 24 := by omega
theorem bounce_third (m : BallBounce) : m.third = 12 := by omega
theorem bounce_fourth (m : BallBounce) : m.fourth = 6 := by omega
theorem bounce_solution (m : BallBounce) : m.fifth = 3 := by omega

structure HouseBalance where down afterDown parentsPayment owed : ℕ
  hDown : down * 100 = 100000 * 20
  hAfterDown : afterDown + down = 100000
  hParents : parentsPayment * 100 = afterDown * 30
  hOwed : owed + parentsPayment = afterDown

theorem house_down (m : HouseBalance) : m.down = 20000 := by omega
theorem house_after_down (m : HouseBalance) : m.afterDown = 80000 := by omega
theorem house_parents (m : HouseBalance) : m.parentsPayment = 24000 := by omega
theorem house_solution (m : HouseBalance) : m.owed = 56000 := by omega

structure PizzaSlices where afterBreakfast afterLunch afterSnack remaining : ℕ
  hBreakfast : afterBreakfast + 4 = 15
  hLunch : afterLunch + 2 = afterBreakfast
  hSnack : afterSnack + 2 = afterLunch
  hDinner : remaining + 5 = afterSnack

theorem pizza_breakfast (m : PizzaSlices) : m.afterBreakfast = 11 := by omega
theorem pizza_lunch (m : PizzaSlices) : m.afterLunch = 9 := by omega
theorem pizza_snack (m : PizzaSlices) : m.afterSnack = 7 := by omega
theorem pizza_solution (m : PizzaSlices) : m.remaining = 2 := by omega

structure WeeklyCandy where weekly weeks : ℕ
  hWeekly : weekly = 2 * 2 + 5 * 1
  hWeeks : weeks * weekly = 36

theorem weekly_candy_amount (m : WeeklyCandy) : m.weekly = 9 := by omega
theorem weekly_candy_solution (m : WeeklyCandy) : m.weeks = 4 := by omega

structure BicycleSavings where carMoney lawnMoney earned needed : ℕ
  hCars : carMoney = 3 * 10
  hLawns : lawnMoney = 2 * 13
  hEarned : earned = carMoney + lawnMoney
  hNeeded : needed + earned = 80

theorem bicycle_cars (m : BicycleSavings) : m.carMoney = 30 := by omega
theorem bicycle_lawns (m : BicycleSavings) : m.lawnMoney = 26 := by omega
theorem bicycle_earned (m : BicycleSavings) : m.earned = 56 := by omega
theorem bicycle_solution (m : BicycleSavings) : m.needed = 24 := by omega

structure RecyclingRewards where friends friendRewards referralRewards total : ℕ
  hFriends : friends = 5 + 7
  hFriendRewards : friendRewards = friends * 5
  hReferral : referralRewards = friends * 5
  hTotal : total = 5 + friendRewards + referralRewards

theorem recycling_friends (m : RecyclingRewards) : m.friends = 12 := by omega
theorem recycling_friend_rewards (m : RecyclingRewards) : m.friendRewards = 60 := by omega
theorem recycling_referral_rewards (m : RecyclingRewards) : m.referralRewards = 60 := by omega
theorem recycling_solution (m : RecyclingRewards) : m.total = 125 := by omega

/-- Reference algebra assumes exactly one five-point win per round, then ignores score granularity. -/
theorem game_reference_total : 5 * 30 = 150 := by norm_num
theorem game_reference_taro_relation : 5 * (86 + 4) = 3 * 150 := by norm_num
theorem game_reference_vlad : 150 - 86 = 64 := by norm_num
theorem game_taro_not_multiple_of_five : ¬ ∃ w : ℕ, 5 * w = 86 := by omega
theorem game_vlad_not_multiple_of_five : ¬ ∃ w : ℕ, 5 * w = 64 := by omega
theorem game_reference_scores_invalid : ¬ (∃ wt wv : ℕ, 5 * wt = 86 ∧ 5 * wv = 64) := by omega

/-- Distances are miles and durations are hours. -/
theorem swim_races_each : 10 / 2 = 5 := by norm_num
theorem swim_distance_each : 5 * 3 = 15 := by norm_num
theorem swim_lake_time : 3 * 5 = 15 := by norm_num
/-- Ocean speed is 2.5 = 5/2 mph, so 5*t = 2*distance. -/
theorem swim_ocean_time : 5 * 6 = 2 * 15 := by norm_num
theorem swim_solution : 5 + 6 = 11 := by norm_num

structure JuicePouches where pouches cents costEach : ℕ
  hPouches : pouches = 10 * 6
  hCents : cents = 12 * 100
  hEach : costEach * 60 = cents

theorem juice_pouches (m : JuicePouches) : m.pouches = 60 := by omega
theorem juice_total_cents (m : JuicePouches) : m.cents = 1200 := by omega
theorem juice_solution (m : JuicePouches) : m.costEach = 20 := by omega

structure Pamphlets where mikeBefore mikeAfterSpeed mikeAfter leoHours leoSpeed leo total : ℕ
  hMikeBefore : mikeBefore = 600 * 9
  hMikeAfterSpeed : mikeAfterSpeed * 3 = 600
  hMikeAfter : mikeAfter = mikeAfterSpeed * 2
  hLeoHours : leoHours * 3 = 9
  hLeoSpeed : leoSpeed = 2 * 600
  hLeo : leo = leoSpeed * 3
  hTotal : total = mikeBefore + mikeAfter + leo

theorem pamphlets_mike_before (m : Pamphlets) : m.mikeBefore = 5400 := by omega
theorem pamphlets_mike_after_speed (m : Pamphlets) : m.mikeAfterSpeed = 200 := by omega
theorem pamphlets_mike_after (m : Pamphlets) : m.mikeAfter = 400 := by omega
theorem pamphlets_leo_hours (m : Pamphlets) : m.leoHours = 3 := by omega
theorem pamphlets_leo_speed (m : Pamphlets) : m.leoSpeed = 1200 := by omega
theorem pamphlets_leo (m : Pamphlets) : m.leo = 3600 := by omega
theorem pamphlets_solution (m : Pamphlets) : m.total = 9400 := by omega

structure TrainPassengers where perRound laterRounds total : ℕ
  hPerRound : perRound = 100 + 60
  hLater : laterRounds = 3 * perRound
  hTotal : total = perRound + laterRounds

theorem train_per_round (m : TrainPassengers) : m.perRound = 160 := by omega
theorem train_later_rounds (m : TrainPassengers) : m.laterRounds = 480 := by omega
theorem train_solution (m : TrainPassengers) : m.total = 640 := by omega

end LemmaWeave.Problems.GSM8K.Sprint0923A19
