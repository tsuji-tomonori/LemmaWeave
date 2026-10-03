import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1001A00P3

structure MonstersModel where
  day1 : ℕ
  day2 : ℕ
  day3 : ℕ
  day4 : ℕ
  day5 : ℕ
  total : ℕ
  hDay1 : day1 = 2
  hDay2 : day2 = 2 * day1
  hDay3 : day3 = 2 * day2
  hDay4 : day4 = 2 * day3
  hDay5 : day5 = 2 * day4
  hTotal : total = day1 + day2 + day3 + day4 + day5

theorem monsters_day2 (m : MonstersModel) : m.day2 = 4 := by
  rw [m.hDay2, m.hDay1]

theorem monsters_day3 (m : MonstersModel) : m.day3 = 8 := by
  rw [m.hDay3, monsters_day2 m]

theorem monsters_day4 (m : MonstersModel) : m.day4 = 16 := by
  rw [m.hDay4, monsters_day3 m]

theorem monsters_day5 (m : MonstersModel) : m.day5 = 32 := by
  rw [m.hDay5, monsters_day4 m]

theorem monsters_total (m : MonstersModel) : m.total = 62 := by
  have h2 := monsters_day2 m
  have h3 := monsters_day3 m
  have h4 := monsters_day4 m
  have h5 := monsters_day5 m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure YogaModel where
  posesPerWeekday : ℕ
  weekdaysPerWeek : ℕ
  weeksPerYear : ℕ
  weeklyPoses : ℕ
  yearlyPoses : ℕ
  hPerWeekday : posesPerWeekday = 5
  hWeekdays : weekdaysPerWeek = 5
  hWeeks : weeksPerYear = 52
  hWeekly : weeklyPoses = weekdaysPerWeek * posesPerWeekday
  hYearly : yearlyPoses = weeksPerYear * weeklyPoses

theorem yoga_weekly (m : YogaModel) : m.weeklyPoses = 25 := by
  rw [m.hWeekly, m.hWeekdays, m.hPerWeekday]

theorem yoga_yearly (m : YogaModel) : m.yearlyPoses = 1300 := by
  rw [m.hYearly, m.hWeeks, yoga_weekly m]

structure PlatesModel where
  people : ℕ
  platesPerMeal : ℕ
  platesPerDay : ℕ
  totalPlates : ℕ
  hPeople : people = 1 + 2 + 3
  hPerMeal : platesPerMeal = people * 2
  hPerDay : platesPerDay = platesPerMeal * 3
  hTotal : totalPlates = platesPerDay * 4

theorem plates_people (m : PlatesModel) : m.people = 6 := by
  rw [m.hPeople]

theorem plates_per_meal (m : PlatesModel) : m.platesPerMeal = 12 := by
  rw [m.hPerMeal, plates_people m]

theorem plates_per_day (m : PlatesModel) : m.platesPerDay = 36 := by
  rw [m.hPerDay, plates_per_meal m]

theorem plates_total (m : PlatesModel) : m.totalPlates = 144 := by
  rw [m.hTotal, plates_per_day m]

structure EggsModel where
  initialChickens : ℕ
  currentChickens : ℕ
  eggsPerDay : ℕ
  eggsPerWeek : ℕ
  hInitial : initialChickens = 4
  hCurrent : currentChickens = 8 * initialChickens
  hDaily : eggsPerDay = currentChickens * 6
  hWeekly : eggsPerWeek = eggsPerDay * 7

theorem eggs_chickens (m : EggsModel) : m.currentChickens = 32 := by
  rw [m.hCurrent, m.hInitial]

theorem eggs_daily (m : EggsModel) : m.eggsPerDay = 192 := by
  rw [m.hDaily, eggs_chickens m]

theorem eggs_weekly (m : EggsModel) : m.eggsPerWeek = 1344 := by
  rw [m.hWeekly, eggs_daily m]

structure BoxwoodModel where
  boxwoods : ℕ
  shaped : ℕ
  baseTrimCharge : ℕ
  shapeCharge : ℕ
  additionalTotal : ℕ
  replacementTotal : ℕ
  hBoxwoods : boxwoods = 30
  hShaped : shaped = 4
  hBaseCharge : baseTrimCharge = 5
  hShapeCharge : shapeCharge = 15
  hAdditional : additionalTotal = boxwoods * baseTrimCharge + shaped * shapeCharge
  hReplacement : replacementTotal = (boxwoods - shaped) * baseTrimCharge + shaped * shapeCharge

theorem boxwood_base_trim (m : BoxwoodModel) : m.boxwoods * m.baseTrimCharge = 150 := by
  rw [m.hBoxwoods, m.hBaseCharge]

theorem boxwood_shape_charge (m : BoxwoodModel) : m.shaped * m.shapeCharge = 60 := by
  rw [m.hShaped, m.hShapeCharge]

theorem boxwood_additional_total (m : BoxwoodModel) : m.additionalTotal = 210 := by
  have h1 := boxwood_base_trim m
  have h2 := boxwood_shape_charge m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem boxwood_replacement_total (m : BoxwoodModel) : m.replacementTotal = 190 := by
  rw [m.hReplacement, m.hBoxwoods, m.hShaped, m.hBaseCharge, m.hShapeCharge]

theorem boxwood_interpretations_differ (m : BoxwoodModel) :
    m.additionalTotal ≠ m.replacementTotal := by
  have h1 := boxwood_additional_total m
  have h2 := boxwood_replacement_total m
  omega

end LemmaWeave.Problems.GSM8K.Sprint1001A00P3
