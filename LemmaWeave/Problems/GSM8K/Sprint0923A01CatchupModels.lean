import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A01Catchup

structure BaylorAdditive where
  dashboard : ℕ
  first : ℕ
  second : ℕ
  pair : ℕ
  third : ℕ
  final : ℕ
  hDashboard : dashboard = 4000
  hFirst : first * 2 = dashboard
  hSecond : second * 5 = first * 7
  hPair : pair = first + second
  hThird : third = 2 * pair
  hFinal : final = dashboard + pair + third

theorem baylor_first (m : BaylorAdditive) : m.first = 2000 := by
  have h := m.hFirst
  rw [m.hDashboard] at h
  omega

theorem baylor_second_additive (m : BaylorAdditive) : m.second = 2800 := by
  have h := m.hSecond
  rw [baylor_first m] at h
  omega

theorem baylor_pair_additive (m : BaylorAdditive) : m.pair = 4800 := by
  rw [m.hPair, baylor_first m, baylor_second_additive m]

theorem baylor_third_additive (m : BaylorAdditive) : m.third = 9600 := by
  rw [m.hThird, baylor_pair_additive m]

theorem baylor_solution_additive (m : BaylorAdditive) : m.final = 18400 := by
  rw [m.hFinal, m.hDashboard, baylor_pair_additive m, baylor_third_additive m]

structure BaylorMultiplicative where
  dashboard : ℕ
  first : ℕ
  second : ℕ
  pair : ℕ
  third : ℕ
  final : ℕ
  hDashboard : dashboard = 4000
  hFirst : first * 2 = dashboard
  hSecond : second * 5 = first * 2
  hPair : pair = first + second
  hThird : third = 2 * pair
  hFinal : final = dashboard + pair + third

theorem baylor_first_multiplicative (m : BaylorMultiplicative) : m.first = 2000 := by
  have h := m.hFirst
  rw [m.hDashboard] at h
  omega

theorem baylor_second_multiplicative (m : BaylorMultiplicative) : m.second = 800 := by
  have h := m.hSecond
  rw [baylor_first_multiplicative m] at h
  omega

theorem baylor_pair_multiplicative (m : BaylorMultiplicative) : m.pair = 2800 := by
  rw [m.hPair, baylor_first_multiplicative m, baylor_second_multiplicative m]

theorem baylor_third_multiplicative (m : BaylorMultiplicative) : m.third = 5600 := by
  rw [m.hThird, baylor_pair_multiplicative m]

theorem baylor_solution_multiplicative (m : BaylorMultiplicative) : m.final = 12400 := by
  rw [m.hFinal, m.hDashboard, baylor_pair_multiplicative m, baylor_third_multiplicative m]

structure Rain where
  mondayHalfCm : ℕ
  tuesdayHalfCm : ℕ
  differenceHalfCm : ℕ
  differenceCm : ℕ
  hMonday : mondayHalfCm = 7 * 3
  hTuesday : tuesdayHalfCm = 9 * 5
  hDifference : differenceHalfCm + mondayHalfCm = tuesdayHalfCm
  hCm : differenceHalfCm = differenceCm * 2

theorem rain_monday (m : Rain) : m.mondayHalfCm = 21 := by rw [m.hMonday]
theorem rain_tuesday (m : Rain) : m.tuesdayHalfCm = 45 := by rw [m.hTuesday]
theorem rain_difference_half (m : Rain) : m.differenceHalfCm = 24 := by
  have h := m.hDifference
  rw [rain_monday m, rain_tuesday m] at h
  omega
theorem rain_solution (m : Rain) : m.differenceCm = 12 := by
  have h := m.hCm
  rw [rain_difference_half m] at h
  omega

structure FruitBowl where
  total : ℕ
  left : ℕ
  hTotal : total = 3 + 6
  hLeft : left + 3 = total

theorem fruit_total (m : FruitBowl) : m.total = 9 := by rw [m.hTotal]
theorem fruit_solution (m : FruitBowl) : m.left = 6 := by
  have h := m.hLeft
  rw [fruit_total m] at h
  omega

structure SueTravel where
  firstLeg : ℕ
  layover : ℕ
  secondLeg : ℕ
  total : ℕ
  hFirst : firstLeg * 4 = 3 * 24
  hLayover : layover = 16
  hSecond : secondLeg = 24
  hTotal : total = firstLeg + layover + secondLeg

theorem sue_first_leg (m : SueTravel) : m.firstLeg = 18 := by
  have h := m.hFirst
  omega
theorem sue_solution (m : SueTravel) : m.total = 58 := by
  rw [m.hTotal, sue_first_leg m, m.hLayover, m.hSecond]

structure AgesAverage where
  eden : ℕ
  devin : ℕ
  mother : ℕ
  sum : ℕ
  average : ℕ
  hDevin : devin = 12
  hEden : eden = 2 * devin
  hMother : mother = 2 * eden
  hSum : sum = mother + eden + devin
  hAverage : average * 3 = sum

theorem ages_eden (m : AgesAverage) : m.eden = 24 := by rw [m.hEden, m.hDevin]
theorem ages_mother (m : AgesAverage) : m.mother = 48 := by rw [m.hMother, ages_eden m]
theorem ages_sum (m : AgesAverage) : m.sum = 84 := by
  rw [m.hSum, ages_mother m, ages_eden m, m.hDevin]
theorem ages_solution (m : AgesAverage) : m.average = 28 := by
  have h := m.hAverage
  rw [ages_sum m] at h
  omega

structure WarehousePatrol where
  perimeter : ℕ
  intended : ℕ
  skipped : ℕ
  actual : ℕ
  distance : ℕ
  hPerimeter : perimeter = 2 * 600 + 2 * 400
  hActual : actual + skipped = intended
  hIntended : intended = 10
  hSkipped : skipped = 2
  hDistance : distance = perimeter * actual

theorem warehouse_perimeter (m : WarehousePatrol) : m.perimeter = 2000 := by rw [m.hPerimeter]
theorem warehouse_actual (m : WarehousePatrol) : m.actual = 8 := by
  have h := m.hActual
  rw [m.hIntended, m.hSkipped] at h
  omega
theorem warehouse_solution (m : WarehousePatrol) : m.distance = 16000 := by
  rw [m.hDistance, warehouse_perimeter m, warehouse_actual m]

structure TaraGames where
  firstYear : ℕ
  secondYear : ℕ
  hFirst : firstYear * 10 = 20 * 9
  hSecond : secondYear + 4 = firstYear

theorem tara_first_year (m : TaraGames) : m.firstYear = 18 := by
  have h := m.hFirst
  omega
theorem tara_solution (m : TaraGames) : m.secondYear = 14 := by
  have h := m.hSecond
  rw [tara_first_year m] at h
  omega

structure DinnerBill where
  silas : ℕ
  rest : ℕ
  tip : ℕ
  othersTotal : ℕ
  each : ℕ
  hSilas : silas * 2 = 150
  hRest : rest = 150 - silas
  hTip : tip * 10 = 150
  hOthers : othersTotal = rest + tip
  hEach : each * 5 = othersTotal

theorem dinner_silas (m : DinnerBill) : m.silas = 75 := by
  have h := m.hSilas
  omega
theorem dinner_tip (m : DinnerBill) : m.tip = 15 := by
  have h := m.hTip
  omega
theorem dinner_others_total (m : DinnerBill) : m.othersTotal = 90 := by
  rw [m.hOthers, m.hRest, dinner_silas m, dinner_tip m]
theorem dinner_solution (m : DinnerBill) : m.each = 18 := by
  have h := m.hEach
  rw [dinner_others_total m] at h
  omega

structure CookieJar where
  martha : ℕ
  spent : ℕ
  left : ℕ
  hMartha : martha * 2 = 6
  hSpent : spent = 6 + martha
  hLeft : left + spent = 21

theorem cookie_martha (m : CookieJar) : m.martha = 3 := by
  have h := m.hMartha
  omega
theorem cookie_spent (m : CookieJar) : m.spent = 9 := by rw [m.hSpent, cookie_martha m]
theorem cookie_solution (m : CookieJar) : m.left = 12 := by
  have h := m.hLeft
  rw [cookie_spent m] at h
  omega

structure Clothes where
  white : ℕ
  colored : ℕ
  shorts : ℕ
  pants : ℕ
  total : ℕ
  hWhite : white = 10 + 6
  hColored : colored = 5 + 8
  hShorts : shorts = 7 + 10
  hPants : pants = 6 + 6
  hTotal : total = white + colored + shorts + pants

theorem clothes_white (m : Clothes) : m.white = 16 := by rw [m.hWhite]
theorem clothes_colored (m : Clothes) : m.colored = 13 := by rw [m.hColored]
theorem clothes_shorts (m : Clothes) : m.shorts = 17 := by rw [m.hShorts]
theorem clothes_pants (m : Clothes) : m.pants = 12 := by rw [m.hPants]
theorem clothes_solution (m : Clothes) : m.total = 58 := by
  rw [m.hTotal, clothes_white m, clothes_colored m, clothes_shorts m, clothes_pants m]

structure GardenFlowers where
  orange : ℕ
  red : ℕ
  yellow : ℕ
  known : ℕ
  pair : ℕ
  each : ℕ
  hOrange : orange = 10
  hRed : red = 2 * orange
  hYellow : yellow + 5 = red
  hKnown : known = orange + red + yellow
  hPair : pair + known = 105
  hEach : each * 2 = pair

theorem flowers_red (m : GardenFlowers) : m.red = 20 := by rw [m.hRed, m.hOrange]
theorem flowers_yellow (m : GardenFlowers) : m.yellow = 15 := by
  have h := m.hYellow
  rw [flowers_red m] at h
  omega
theorem flowers_known (m : GardenFlowers) : m.known = 45 := by
  rw [m.hKnown, m.hOrange, flowers_red m, flowers_yellow m]
theorem flowers_pair (m : GardenFlowers) : m.pair = 60 := by
  have h := m.hPair
  rw [flowers_known m] at h
  omega
theorem flowers_solution (m : GardenFlowers) : m.each = 30 := by
  have h := m.hEach
  rw [flowers_pair m] at h
  omega

structure CarLoan where
  interest : ℕ
  total : ℕ
  hInterest : interest * 100 = 20000 * 15
  hTotal : total = 35000 + interest

theorem car_interest (m : CarLoan) : m.interest = 3000 := by
  have h := m.hInterest
  omega
theorem car_solution (m : CarLoan) : m.total = 38000 := by rw [m.hTotal, car_interest m]

structure ApplePies where
  sauce : ℕ
  remaining : ℕ
  pies : ℕ
  hSauce : sauce * 2 = 120
  hRemaining : remaining + sauce = 120
  hPies : pies * 4 = remaining

theorem pies_sauce (m : ApplePies) : m.sauce = 60 := by
  have h := m.hSauce
  omega
theorem pies_remaining (m : ApplePies) : m.remaining = 60 := by
  have h := m.hRemaining
  rw [pies_sauce m] at h
  omega
theorem pies_solution (m : ApplePies) : m.pies = 15 := by
  have h := m.hPies
  rw [pies_remaining m] at h
  omega

structure GenderParty where
  male : ℕ
  female : ℕ
  hMale : male * 3 = 60 * 2
  hTotal : female + male = 60

theorem gender_male (m : GenderParty) : m.male = 40 := by
  have h := m.hMale
  omega
theorem gender_solution (m : GenderParty) : m.female = 20 := by
  have h := m.hTotal
  rw [gender_male m] at h
  omega

structure CoachSpending where
  coachA : ℕ
  baseballs : ℕ
  coachB : ℕ
  differenceCents : ℕ
  differenceDollars : ℕ
  hA : coachA = 10 * 2900
  hBaseballs : baseballs = 14 * 250
  hB : coachB = baseballs + 1800
  hDifference : differenceCents + coachB = coachA
  hDollars : differenceCents = differenceDollars * 100

theorem coach_a (m : CoachSpending) : m.coachA = 29000 := by rw [m.hA]
theorem coach_baseballs (m : CoachSpending) : m.baseballs = 3500 := by rw [m.hBaseballs]
theorem coach_b (m : CoachSpending) : m.coachB = 5300 := by
  rw [m.hB, coach_baseballs m]
theorem coach_difference_cents (m : CoachSpending) : m.differenceCents = 23700 := by
  have h := m.hDifference
  rw [coach_a m, coach_b m] at h
  omega
theorem coach_solution (m : CoachSpending) : m.differenceDollars = 237 := by
  have h := m.hDollars
  rw [coach_difference_cents m] at h
  omega

end LemmaWeave.Problems.GSM8K.Sprint0923A01Catchup

