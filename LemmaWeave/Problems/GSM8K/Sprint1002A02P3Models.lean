import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1002A02P3

structure SwimModel where
  margaret : ℕ
  firstFive : ℕ
  nextThree : ℕ
  ninth : ℕ
  firstNine : ℕ
  billyTotal : ℕ
  finalLap : ℕ
  hMargaret : margaret = 10 * 60
  hFirstFive : firstFive = 2 * 60
  hNextThree : nextThree = 4 * 60
  hNinth : ninth = 1 * 60
  hFirstNine : firstNine = firstFive + nextThree + ninth
  hWinMargin : billyTotal + 30 = margaret
  hFinal : billyTotal = firstNine + finalLap

theorem margaret_seconds (m : SwimModel) : m.margaret = 600 := by cases m <;> simp_all at * <;> omega
theorem first_nine_seconds (m : SwimModel) : m.firstNine = 420 := by cases m <;> simp_all at * <;> omega
theorem billy_total_seconds (m : SwimModel) : m.billyTotal = 570 := by
  have h := margaret_seconds m
  cases m <;> simp_all at * <;> omega
theorem final_lap_seconds (m : SwimModel) : m.finalLap = 150 := by
  have h1 := first_nine_seconds m
  have h2 := billy_total_seconds m
  cases m <;> simp_all at * <;> omega

structure RaceModel where
  laps : ℕ
  quarterMilesPerLap : ℕ
  distanceQuarterMiles : ℕ
  currentTotalMinutes : ℕ
  lastTotalQuarterMinutes : ℕ
  currentPace : ℕ
  lastPace : ℕ
  improvement : ℕ
  hLaps : laps = 7
  hQuarterMilesPerLap : quarterMilesPerLap = 3
  hDistance : distanceQuarterMiles = 7 * 3
  hCurrentTotal : currentTotalMinutes = 42
  hLastTotalQuarter : lastTotalQuarterMinutes = 189
  hCurrentPace : 21 * currentPace = 4 * currentTotalMinutes
  hLastPace : 21 * lastPace = lastTotalQuarterMinutes
  hImprovement : currentPace + improvement = lastPace

theorem race_distance_quarter_miles (m : RaceModel) : m.distanceQuarterMiles = 21 := by cases m <;> simp_all at * <;> omega
theorem current_minutes_per_mile (m : RaceModel) : m.currentPace = 8 := by cases m <;> simp_all at * <;> omega
theorem last_minutes_per_mile (m : RaceModel) : m.lastPace = 9 := by cases m <;> simp_all at * <;> omega
theorem pace_improvement_minutes (m : RaceModel) : m.improvement = 1 := by
  have h1 := current_minutes_per_mile m
  have h2 := last_minutes_per_mile m
  cases m <;> simp_all at * <;> omega

structure DressModel where
  ana : ℕ
  lisa : ℕ
  total : ℕ
  hDifference : lisa = ana + 18
  hTotal : lisa + ana = 48

theorem ana_dresses (m : DressModel) : m.ana = 15 := by cases m <;> simp_all at * <;> omega

structure WaterModel where
  daily : ℕ
  weekly : ℕ
  hDaily : daily = 8 + 7 + 9
  hWeekly : weekly = 7 * daily

theorem sibling_daily_cups (m : WaterModel) : m.daily = 24 := by cases m <;> simp_all at * <;> omega
theorem sibling_weekly_cups (m : WaterModel) : m.weekly = 168 := by
  have h := sibling_daily_cups m
  cases m <;> simp_all at * <;> omega

structure SeedlingModel where
  remiFirst : ℕ
  remiSecond : ℕ
  father : ℕ
  total : ℕ
  hFirst : remiFirst = 200
  hSecond : remiSecond = 2 * remiFirst
  hTotal : total = 1200
  hPartition : remiFirst + remiSecond + father = total

theorem remi_second_day_seedlings (m : SeedlingModel) : m.remiSecond = 400 := by cases m <;> simp_all at * <;> omega
theorem father_seedlings (m : SeedlingModel) : m.father = 600 := by
  have h := remi_second_day_seedlings m
  cases m <;> simp_all at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1002A02P3
