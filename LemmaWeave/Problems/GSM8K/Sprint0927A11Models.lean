import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A11

structure PapayaFourWeeks where
  jake : ℕ
  brother : ℕ
  father : ℕ
  weekly : ℕ
  weeks : ℕ
  total : ℕ
  hJake : jake = 3
  hBrother : brother = 5
  hFather : father = 4
  hWeekly : weekly = jake + brother + father
  hWeeks : weeks = 4
  hTotal : total = weekly * weeks
theorem papaya_weekly (m : PapayaFourWeeks) : m.weekly = 12 := by cases m; omega
theorem papaya_solution (m : PapayaFourWeeks) : m.total = 48 := by cases m; omega

/-- Volumes are measured in half-liters, except `totalLiters`. -/
structure FruitPunch where
  orange : ℕ
  cherry : ℕ
  apple : ℕ
  difference : ℕ
  totalHalfLiters : ℕ
  totalLiters : ℕ
  hOrange : orange = 9
  hCherry : cherry = 2 * orange
  hDifference : difference = 3
  hApple : cherry = apple + difference
  hTotalHalf : totalHalfLiters = orange + cherry + apple
  hLiters : totalHalfLiters = 2 * totalLiters
theorem punch_cherry (m : FruitPunch) : m.cherry = 18 := by cases m; omega
theorem punch_apple (m : FruitPunch) : m.apple = 15 := by cases m; omega
theorem punch_half_liters (m : FruitPunch) : m.totalHalfLiters = 42 := by cases m; omega
theorem punch_solution (m : FruitPunch) : m.totalLiters = 21 := by cases m; omega

structure FarmAnimals where
  cows : ℕ
  sheep : ℕ
  pigs : ℕ
  total : ℕ
  hCows : cows = 12
  hSheep : sheep = 2 * cows
  hPigs : pigs = 3 * sheep
  hTotal : total = cows + sheep + pigs
theorem farm_sheep (m : FarmAnimals) : m.sheep = 24 := by cases m; omega
theorem farm_pigs (m : FarmAnimals) : m.pigs = 72 := by cases m; omega
theorem farm_solution (m : FarmAnimals) : m.total = 108 := by cases m; omega

structure PaintballMonthly where
  plays : ℕ
  boxesPerPlay : ℕ
  pricePerBox : ℕ
  costPerPlay : ℕ
  monthlyCost : ℕ
  hPlays : plays = 3
  hBoxes : boxesPerPlay = 3
  hPrice : pricePerBox = 25
  hCostPerPlay : costPerPlay = boxesPerPlay * pricePerBox
  hMonthly : monthlyCost = plays * costPerPlay
theorem paintball_each (m : PaintballMonthly) : m.costPerPlay = 75 := by cases m; omega
theorem paintball_solution (m : PaintballMonthly) : m.monthlyCost = 225 := by cases m; omega

structure FootballAverage where
  intervalMinutes : ℕ
  goalsPerInterval : ℕ
  matchHours : ℕ
  matchMinutes : ℕ
  intervals : ℕ
  averageGoals : ℕ
  hInterval : intervalMinutes = 15
  hGoals : goalsPerInterval = 2
  hHours : matchHours = 2
  hMinutes : matchMinutes = matchHours * 60
  hIntervals : matchMinutes = intervals * intervalMinutes
  hAverage : averageGoals = intervals * goalsPerInterval
theorem football_minutes (m : FootballAverage) : m.matchMinutes = 120 := by cases m; omega
theorem football_intervals (m : FootballAverage) : m.intervals = 8 := by cases m; omega
theorem football_solution (m : FootballAverage) : m.averageGoals = 16 := by cases m; omega

structure TestScores where
  geography : ℕ
  math : ℕ
  english : ℕ
  firstThree : ℕ
  history : ℕ
  total : ℕ
  hGeography : geography = 50
  hMath : math = 70
  hEnglish : english = 66
  hFirst : firstThree = geography + math + english
  hAverage : firstThree = 3 * history
  hTotal : total = firstThree + history
theorem scores_first_three (m : TestScores) : m.firstThree = 186 := by cases m; omega
theorem scores_history (m : TestScores) : m.history = 62 := by cases m; omega
theorem scores_solution (m : TestScores) : m.total = 248 := by cases m; omega

structure CenterVisits where
  lisa : ℕ
  jude : ℕ
  han : ℕ
  jane : ℕ
  total : ℕ
  hLisa : lisa = 6
  hJudeHalf : 2 * jude = lisa
  hHan : han + 2 = 2 * jude
  hJane : jane = 2 * han + 6
  hTotal : total = lisa + jude + han + jane
  hDifferent : lisa ≠ jude ∧ lisa ≠ han ∧ lisa ≠ jane ∧ jude ≠ han ∧ jude ≠ jane ∧ han ≠ jane
theorem centers_jude (m : CenterVisits) : m.jude = 3 := by cases m; omega
theorem centers_han (m : CenterVisits) : m.han = 4 := by cases m; omega
theorem centers_jane (m : CenterVisits) : m.jane = 14 := by cases m; omega
theorem centers_solution (m : CenterVisits) : m.total = 27 := by cases m; omega

structure CollectorDolls where
  dina : ℕ
  ivy : ℕ
  collectors : ℕ
  hDina : dina = 60
  hTwice : dina = 2 * ivy
  hCollectors : 3 * collectors = 2 * ivy
theorem dolls_ivy (m : CollectorDolls) : m.ivy = 30 := by cases m; omega
theorem dolls_solution (m : CollectorDolls) : m.collectors = 20 := by cases m; omega

structure CandleWicks where
  feet : ℕ
  inchesPerFoot : ℕ
  totalInches : ℕ
  shortLength : ℕ
  longLength : ℕ
  pairLength : ℕ
  pairs : ℕ
  totalWicks : ℕ
  hFeet : feet = 15
  hInchesPerFoot : inchesPerFoot = 12
  hTotalInches : totalInches = feet * inchesPerFoot
  hShort : shortLength = 6
  hLong : longLength = 12
  hPairLength : pairLength = shortLength + longLength
  hUsesAll : totalInches = pairs * pairLength
  hEqualCounts : totalWicks = 2 * pairs
theorem wicks_inches (m : CandleWicks) : m.totalInches = 180 := by cases m; omega
theorem wicks_pairs (m : CandleWicks) : m.pairs = 10 := by cases m; omega
theorem wicks_solution (m : CandleWicks) : m.totalWicks = 20 := by cases m; omega

structure BookMoney where
  dictionary : ℕ
  dinosaur : ℕ
  cookbook : ℕ
  totalCost : ℕ
  saved : ℕ
  needed : ℕ
  hDictionary : dictionary = 5
  hDinosaur : dinosaur = 11
  hCookbook : cookbook = 5
  hTotal : totalCost = dictionary + dinosaur + cookbook
  hSaved : saved = 19
  hNeeded : totalCost = saved + needed
theorem books_total (m : BookMoney) : m.totalCost = 21 := by cases m; omega
theorem books_solution (m : BookMoney) : m.needed = 2 := by cases m; omega

structure YearEarnings where
  january : ℕ
  february : ℕ
  march : ℕ
  total : ℕ
  hJanuary : january = 4000
  hFebruary : february = 2 * january
  hMarch : february = march + 2000
  hTotal : total = january + february + march
theorem earnings_february (m : YearEarnings) : m.february = 8000 := by cases m; omega
theorem earnings_march (m : YearEarnings) : m.march = 6000 := by cases m; omega
theorem earnings_solution (m : YearEarnings) : m.total = 18000 := by cases m; omega

structure LunchCookies where
  burger : ℕ
  carrots : ℕ
  caloriesPerCarrot : ℕ
  carrotCalories : ℕ
  target : ℕ
  remaining : ℕ
  caloriesPerCookie : ℕ
  cookies : ℕ
  hBurger : burger = 400
  hCarrots : carrots = 5
  hPerCarrot : caloriesPerCarrot = 20
  hCarrotCalories : carrotCalories = carrots * caloriesPerCarrot
  hTarget : target = 750
  hRemaining : target = burger + carrotCalories + remaining
  hPerCookie : caloriesPerCookie = 50
  hCookies : remaining = cookies * caloriesPerCookie
theorem lunch_carrots (m : LunchCookies) : m.carrotCalories = 100 := by cases m; omega
theorem lunch_remaining (m : LunchCookies) : m.remaining = 250 := by cases m; omega
theorem lunch_solution (m : LunchCookies) : m.cookies = 5 := by cases m; omega

structure ToyCounts where
  mandy : ℕ
  anna : ℕ
  amanda : ℕ
  total : ℕ
  hAnna : anna = 3 * mandy
  hAmanda : amanda = anna + 2
  hTotal : total = 142
  hSum : total = mandy + anna + amanda
theorem toys_equation (m : ToyCounts) : 7 * m.mandy + 2 = 142 := by cases m; omega
theorem toys_solution (m : ToyCounts) : m.mandy = 20 := by cases m; omega

structure StickerSharing where
  initial : ℕ
  daniel : ℕ
  extra : ℕ
  fred : ℕ
  shared : ℕ
  kept : ℕ
  hInitial : initial = 750
  hDaniel : daniel = 250
  hExtra : extra = 120
  hFred : fred = daniel + extra
  hShared : shared = daniel + fred
  hKept : initial = shared + kept
theorem stickers_fred (m : StickerSharing) : m.fred = 370 := by cases m; omega
theorem stickers_shared (m : StickerSharing) : m.shared = 620 := by cases m; omega
theorem stickers_solution (m : StickerSharing) : m.kept = 130 := by cases m; omega

structure VetInsurance where
  visits : ℕ
  costPerVisit : ℕ
  firstVisit : ℕ
  insurance : ℕ
  coveragePercent : ℕ
  coveredDiscount : ℕ
  subsequentCost : ℕ
  subsequentVisits : ℕ
  subsequentTotal : ℕ
  totalPaid : ℕ
  hVisits : visits = 3
  hCost : costPerVisit = 400
  hFirst : firstVisit = costPerVisit
  hInsurance : insurance = 100
  hCoverage : coveragePercent = 80
  hDiscount : 100 * coveredDiscount = coveragePercent * costPerVisit
  hSubsequentCost : costPerVisit = coveredDiscount + subsequentCost
  hSubsequentVisits : visits = subsequentVisits + 1
  hSubsequentTotal : subsequentTotal = subsequentVisits * subsequentCost
  hTotal : totalPaid = firstVisit + insurance + subsequentTotal
theorem vet_discount (m : VetInsurance) : m.coveredDiscount = 320 := by cases m; omega
theorem vet_subsequent_cost (m : VetInsurance) : m.subsequentCost = 80 := by cases m; omega
theorem vet_subsequent_total (m : VetInsurance) : m.subsequentTotal = 160 := by cases m; omega
theorem vet_solution (m : VetInsurance) : m.totalPaid = 660 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0927A11
