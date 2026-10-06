import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0930A19P1

structure RaceRewardModel where
  laps : ℕ
  metersPerLap : ℕ
  distanceMeters : ℕ
  rewardCentsPerLap : ℕ
  totalRewardCents : ℕ
  minutes : ℕ
  averageCentsPerMinute : ℕ
  hLaps : laps = 24
  hMetersPerLap : metersPerLap = 100
  hDistance : distanceMeters = laps * metersPerLap
  hRewardPerLap : rewardCentsPerLap = 350
  hTotalReward : totalRewardCents = laps * rewardCentsPerLap
  hMinutes : minutes = 12
  hAverage : totalRewardCents = minutes * averageCentsPerMinute

theorem race_distance (m : RaceRewardModel) : m.distanceMeters = 2400 := by
  cases m <;> simp_all <;> omega

theorem race_total_reward (m : RaceRewardModel) : m.totalRewardCents = 8400 := by
  cases m <;> simp_all <;> omega

theorem race_average_reward (m : RaceRewardModel) : m.averageCentsPerMinute = 700 := by
  have h := race_total_reward m
  cases m <;> simp_all <;> omega

structure BalloonsModel where
  ownPacks : ℕ
  neighborPacks : ℕ
  totalPacks : ℕ
  balloonsPerPack : ℕ
  totalBalloons : ℕ
  equalShare : ℕ
  stolenFromFloretta : ℕ
  florettaLeft : ℕ
  hOwn : ownPacks = 3
  hNeighbor : neighborPacks = 2
  hTotalPacks : totalPacks = ownPacks + neighborPacks
  hPerPack : balloonsPerPack = 6
  hTotalBalloons : totalBalloons = totalPacks * balloonsPerPack
  hSplit : totalBalloons = 2 * equalShare
  hStolen : stolenFromFloretta = 7
  hLeft : equalShare = florettaLeft + stolenFromFloretta

theorem balloons_total_packs (m : BalloonsModel) : m.totalPacks = 5 := by
  cases m <;> simp_all <;> omega

theorem balloons_total_balloons (m : BalloonsModel) : m.totalBalloons = 30 := by
  have h := balloons_total_packs m
  cases m <;> simp_all <;> omega

theorem balloons_equal_share (m : BalloonsModel) : m.equalShare = 15 := by
  have h := balloons_total_balloons m
  cases m <;> simp_all <;> omega

theorem balloons_floretta_left (m : BalloonsModel) : m.florettaLeft = 8 := by
  have h := balloons_equal_share m
  cases m <;> simp_all <;> omega

structure RunnersModel where
  elapsedMinutes : ℕ
  firstPaceMinutesPerMile : ℕ
  secondPaceMinutesPerMile : ℕ
  firstMiles : ℕ
  secondMiles : ℕ
  gapMiles : ℕ
  stopMinutes : ℕ
  hElapsed : elapsedMinutes = 56
  hFirstPace : firstPaceMinutesPerMile = 8
  hSecondPace : secondPaceMinutesPerMile = 7
  hFirstDistance : elapsedMinutes = firstPaceMinutesPerMile * firstMiles
  hSecondDistance : elapsedMinutes = secondPaceMinutesPerMile * secondMiles
  hGap : secondMiles = firstMiles + gapMiles
  hStop : stopMinutes = firstPaceMinutesPerMile * gapMiles

theorem runners_first_distance (m : RunnersModel) : m.firstMiles = 7 := by
  cases m <;> simp_all <;> omega

theorem runners_second_distance (m : RunnersModel) : m.secondMiles = 8 := by
  cases m <;> simp_all <;> omega

theorem runners_gap (m : RunnersModel) : m.gapMiles = 1 := by
  have h1 := runners_first_distance m
  have h2 := runners_second_distance m
  cases m <;> simp_all <;> omega

theorem runners_stop_time (m : RunnersModel) : m.stopMinutes = 8 := by
  have h := runners_gap m
  cases m <;> simp_all <;> omega

structure FlourModel where
  fullBagGrams : ℕ
  usedGrams : ℕ
  afterUseGrams : ℕ
  afterSpillGrams : ℕ
  neededGrams : ℕ
  hFull : fullBagGrams = 500
  hUsed : usedGrams = 240
  hAfterUse : afterUseGrams + usedGrams = fullBagGrams
  hHalfSpilled : afterUseGrams = 2 * afterSpillGrams
  hNeeded : neededGrams + afterSpillGrams = fullBagGrams

theorem flour_after_use (m : FlourModel) : m.afterUseGrams = 260 := by
  cases m <;> simp_all <;> omega

theorem flour_after_spill (m : FlourModel) : m.afterSpillGrams = 130 := by
  have h := flour_after_use m
  cases m <;> simp_all <;> omega

theorem flour_needed (m : FlourModel) : m.neededGrams = 370 := by
  have h := flour_after_spill m
  cases m <;> simp_all <;> omega

structure CaloriesModel where
  burritoCount : ℕ
  burritoCaloriesEach : ℕ
  burritoTotalCalories : ℕ
  burritoPriceDollars : ℕ
  burritoCaloriesPerDollar : ℕ
  burgerCount : ℕ
  burgerCaloriesEach : ℕ
  burgerTotalCalories : ℕ
  burgerPriceDollars : ℕ
  burgerCaloriesPerDollar : ℕ
  extraCaloriesPerDollar : ℕ
  hBurritoCount : burritoCount = 10
  hBurritoEach : burritoCaloriesEach = 120
  hBurritoTotal : burritoTotalCalories = burritoCount * burritoCaloriesEach
  hBurritoPrice : burritoPriceDollars = 6
  hBurritoRate : burritoTotalCalories = burritoPriceDollars * burritoCaloriesPerDollar
  hBurgerCount : burgerCount = 5
  hBurgerEach : burgerCaloriesEach = 400
  hBurgerTotal : burgerTotalCalories = burgerCount * burgerCaloriesEach
  hBurgerPrice : burgerPriceDollars = 8
  hBurgerRate : burgerTotalCalories = burgerPriceDollars * burgerCaloriesPerDollar
  hExtra : burgerCaloriesPerDollar = burritoCaloriesPerDollar + extraCaloriesPerDollar

theorem calories_burrito_total (m : CaloriesModel) : m.burritoTotalCalories = 1200 := by
  cases m <;> simp_all <;> omega

theorem calories_burrito_rate (m : CaloriesModel) : m.burritoCaloriesPerDollar = 200 := by
  have h := calories_burrito_total m
  cases m <;> simp_all <;> omega

theorem calories_burger_total (m : CaloriesModel) : m.burgerTotalCalories = 2000 := by
  cases m <;> simp_all <;> omega

theorem calories_burger_rate (m : CaloriesModel) : m.burgerCaloriesPerDollar = 250 := by
  have h := calories_burger_total m
  cases m <;> simp_all <;> omega

theorem calories_extra_rate (m : CaloriesModel) : m.extraCaloriesPerDollar = 50 := by
  have h1 := calories_burrito_rate m
  have h2 := calories_burger_rate m
  cases m <;> simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0930A19P1
