import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A19P1

structure CalorieModel where
  breakfast : ℕ
  minutesPerHour : ℕ
  jogMinutes : ℕ
  rate : ℕ
  burned : ℕ
  net : ℕ
  hBreakfast : breakfast = 900
  hMinutesPerHour : minutesPerHour = 60
  hJogMinutes : 2 * jogMinutes = minutesPerHour
  hRate : rate = 10
  hBurned : burned = jogMinutes * rate
  hNet : breakfast = burned + net

theorem jog_minutes (m : CalorieModel) : m.jogMinutes = 30 := by omega
theorem jog_calories (m : CalorieModel) : m.burned = 300 := by
  have h := jog_minutes m
  omega
theorem net_calories (m : CalorieModel) : m.net = 600 := by
  have h := jog_calories m
  omega
structure HolidayModel where
  sam : ℕ
  less : ℕ
  victory : ℕ
  total : ℕ
  hSam : sam = 1000
  hLess : less = 100
  hVictory : sam = victory + less
  hTotal : total = sam + victory

theorem victory_savings (m : HolidayModel) : m.victory = 900 := by omega
theorem holiday_total (m : HolidayModel) : m.total = 1900 := by
  have h := victory_savings m
  omega
structure HeightModel where
  students : ℕ
  female : ℕ
  brunette : ℕ
  short : ℕ
  hStudents : students = 200
  hFemale : 100 * female = 60 * students
  hBrunette : 2 * brunette = female
  hShort : 2 * short = brunette

theorem female_students (m : HeightModel) : m.female = 120 := by omega
theorem female_brunettes (m : HeightModel) : m.brunette = 60 := by
  have h := female_students m
  omega
theorem short_female_brunettes (m : HeightModel) : m.short = 30 := by
  have h := female_brunettes m
  omega
structure DumbbellModel where
  pairs : ℕ
  firstEach : ℕ
  secondEach : ℕ
  thirdEach : ℕ
  firstTotal : ℕ
  secondTotal : ℕ
  thirdTotal : ℕ
  total : ℕ
  hPairs : pairs = 2
  hFirstEach : firstEach = 3
  hSecondEach : secondEach = 5
  hThirdEach : thirdEach = 8
  hFirst : firstTotal = pairs * firstEach
  hSecond : secondTotal = pairs * secondEach
  hThird : thirdTotal = pairs * thirdEach
  hTotal : total = firstTotal + secondTotal + thirdTotal

theorem first_pair_weight (m : DumbbellModel) : m.firstTotal = 6 := by omega
theorem second_pair_weight (m : DumbbellModel) : m.secondTotal = 10 := by omega
theorem third_pair_weight (m : DumbbellModel) : m.thirdTotal = 16 := by omega
theorem dumbbell_total_weight (m : DumbbellModel) : m.total = 32 := by
  have h1 := first_pair_weight m
  have h2 := second_pair_weight m
  have h3 := third_pair_weight m
  omega
structure TattooModel where
  arms : ℕ
  legs : ℕ
  armEach : ℕ
  legEach : ℕ
  armTotal : ℕ
  legTotal : ℕ
  jason : ℕ
  adam : ℕ
  hArms : arms = 2
  hLegs : legs = 2
  hArmEach : armEach = 2
  hLegEach : legEach = 3
  hArmTotal : armTotal = arms * armEach
  hLegTotal : legTotal = legs * legEach
  hJason : jason = armTotal + legTotal
  hAdam : adam = 2 * jason + 3

theorem arm_tattoos (m : TattooModel) : m.armTotal = 4 := by omega
theorem leg_tattoos (m : TattooModel) : m.legTotal = 6 := by omega
theorem jason_tattoos (m : TattooModel) : m.jason = 10 := by
  have h1 := arm_tattoos m
  have h2 := leg_tattoos m
  omega
theorem adam_tattoos (m : TattooModel) : m.adam = 23 := by
  have h := jason_tattoos m
  omega
end LemmaWeave.Problems.GSM8K.Sprint1001A19P1
