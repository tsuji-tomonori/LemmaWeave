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
theorem papaya_weekly (m : PapayaFourWeeks) : m.weekly = 12 := by
  have hJake := m.hJake
  have hBrother := m.hBrother
  have hFather := m.hFather
  have hWeekly := m.hWeekly
  have hWeeks := m.hWeeks
  have hTotal := m.hTotal
  simp_all <;> omega
theorem papaya_solution (m : PapayaFourWeeks) : m.total = 48 := by
  have hJake := m.hJake
  have hBrother := m.hBrother
  have hFather := m.hFather
  have hWeekly := m.hWeekly
  have hWeeks := m.hWeeks
  have hTotal := m.hTotal
  simp_all <;> omega

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
theorem punch_cherry (m : FruitPunch) : m.cherry = 18 := by
  have hOrange := m.hOrange
  have hCherry := m.hCherry
  have hDifference := m.hDifference
  have hApple := m.hApple
  have hTotalHalf := m.hTotalHalf
  have hLiters := m.hLiters
  simp_all <;> omega
theorem punch_apple (m : FruitPunch) : m.apple = 15 := by
  have hOrange := m.hOrange
  have hCherry := m.hCherry
  have hDifference := m.hDifference
  have hApple := m.hApple
  have hTotalHalf := m.hTotalHalf
  have hLiters := m.hLiters
  simp_all <;> omega
theorem punch_half_liters (m : FruitPunch) : m.totalHalfLiters = 42 := by
  have hOrange := m.hOrange
  have hCherry := m.hCherry
  have hDifference := m.hDifference
  have hApple := m.hApple
  have hTotalHalf := m.hTotalHalf
  have hLiters := m.hLiters
  simp_all <;> omega
theorem punch_solution (m : FruitPunch) : m.totalLiters = 21 := by
  have hOrange := m.hOrange
  have hCherry := m.hCherry
  have hDifference := m.hDifference
  have hApple := m.hApple
  have hTotalHalf := m.hTotalHalf
  have hLiters := m.hLiters
  simp_all <;> omega

structure FarmAnimals where
  cows : ℕ
  sheep : ℕ
  pigs : ℕ
  total : ℕ
  hCows : cows = 12
  hSheep : sheep = 2 * cows
  hPigs : pigs = 3 * sheep
  hTotal : total = cows + sheep + pigs
theorem farm_sheep (m : FarmAnimals) : m.sheep = 24 := by
  have hCows := m.hCows
  have hSheep := m.hSheep
  have hPigs := m.hPigs
  have hTotal := m.hTotal
  simp_all <;> omega
theorem farm_pigs (m : FarmAnimals) : m.pigs = 72 := by
  have hCows := m.hCows
  have hSheep := m.hSheep
  have hPigs := m.hPigs
  have hTotal := m.hTotal
  simp_all <;> omega
theorem farm_solution (m : FarmAnimals) : m.total = 108 := by
  have hCows := m.hCows
  have hSheep := m.hSheep
  have hPigs := m.hPigs
  have hTotal := m.hTotal
  simp_all <;> omega

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
theorem paintball_each (m : PaintballMonthly) : m.costPerPlay = 75 := by
  have hPlays := m.hPlays
  have hBoxes := m.hBoxes
  have hPrice := m.hPrice
  have hCostPerPlay := m.hCostPerPlay
  have hMonthly := m.hMonthly
  simp_all <;> omega
theorem paintball_solution (m : PaintballMonthly) : m.monthlyCost = 225 := by
  have hPlays := m.hPlays
  have hBoxes := m.hBoxes
  have hPrice := m.hPrice
  have hCostPerPlay := m.hCostPerPlay
  have hMonthly := m.hMonthly
  simp_all <;> omega

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
theorem football_minutes (m : FootballAverage) : m.matchMinutes = 120 := by
  have hInterval := m.hInterval
  have hGoals := m.hGoals
  have hHours := m.hHours
  have hMinutes := m.hMinutes
  have hIntervals := m.hIntervals
  have hAverage := m.hAverage
  simp_all <;> omega
theorem football_intervals (m : FootballAverage) : m.intervals = 8 := by
  have hInterval := m.hInterval
  have hGoals := m.hGoals
  have hHours := m.hHours
  have hMinutes := m.hMinutes
  have hIntervals := m.hIntervals
  have hAverage := m.hAverage
  simp_all <;> omega
theorem football_solution (m : FootballAverage) : m.averageGoals = 16 := by
  have hInterval := m.hInterval
  have hGoals := m.hGoals
  have hHours := m.hHours
  have hMinutes := m.hMinutes
  have hIntervals := m.hIntervals
  have hAverage := m.hAverage
  simp_all <;> omega

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
theorem scores_first_three (m : TestScores) : m.firstThree = 186 := by
  have history := m.history
  have hGeography := m.hGeography
  have hMath := m.hMath
  have hEnglish := m.hEnglish
  have hFirst := m.hFirst
  have hAverage := m.hAverage
  have hTotal := m.hTotal
  simp_all <;> omega
theorem scores_history (m : TestScores) : m.history = 62 := by
  have history := m.history
  have hGeography := m.hGeography
  have hMath := m.hMath
  have hEnglish := m.hEnglish
  have hFirst := m.hFirst
  have hAverage := m.hAverage
  have hTotal := m.hTotal
  simp_all <;> omega
theorem scores_solution (m : TestScores) : m.total = 248 := by
  have history := m.history
  have hGeography := m.hGeography
  have hMath := m.hMath
  have hEnglish := m.hEnglish
  have hFirst := m.hFirst
  have hAverage := m.hAverage
  have hTotal := m.hTotal
  simp_all <;> omega

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
theorem centers_jude (m : CenterVisits) : m.jude = 3 := by
  have han := m.han
  have hLisa := m.hLisa
  have hJudeHalf := m.hJudeHalf
  have hHan := m.hHan
  have hJane := m.hJane
  have hTotal := m.hTotal
  have hDifferent := m.hDifferent
  simp_all <;> omega
theorem centers_han (m : CenterVisits) : m.han = 4 := by
  have han := m.han
  have hLisa := m.hLisa
  have hJudeHalf := m.hJudeHalf
  have hHan := m.hHan
  have hJane := m.hJane
  have hTotal := m.hTotal
  have hDifferent := m.hDifferent
  simp_all <;> omega
theorem centers_jane (m : CenterVisits) : m.jane = 14 := by
  have han := m.han
  have hLisa := m.hLisa
  have hJudeHalf := m.hJudeHalf
  have hHan := m.hHan
  have hJane := m.hJane
  have hTotal := m.hTotal
  have hDifferent := m.hDifferent
  simp_all <;> omega
theorem centers_solution (m : CenterVisits) : m.total = 27 := by
  have han := m.han
  have hLisa := m.hLisa
  have hJudeHalf := m.hJudeHalf
  have hHan := m.hHan
  have hJane := m.hJane
  have hTotal := m.hTotal
  have hDifferent := m.hDifferent
  simp_all <;> omega

structure CollectorDolls where
  dina : ℕ
  ivy : ℕ
  collectors : ℕ
  hDina : dina = 60
  hTwice : dina = 2 * ivy
  hCollectors : 3 * collectors = 2 * ivy
theorem dolls_ivy (m : CollectorDolls) : m.ivy = 30 := by
  have hDina := m.hDina
  have hTwice := m.hTwice
  have hCollectors := m.hCollectors
  simp_all <;> omega
theorem dolls_solution (m : CollectorDolls) : m.collectors = 20 := by
  have hDina := m.hDina
  have hTwice := m.hTwice
  have hCollectors := m.hCollectors
  simp_all <;> omega

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
theorem wicks_inches (m : CandleWicks) : m.totalInches = 180 := by
  have hFeet := m.hFeet
  have hInchesPerFoot := m.hInchesPerFoot
  have hTotalInches := m.hTotalInches
  have hShort := m.hShort
  have hLong := m.hLong
  have hPairLength := m.hPairLength
  have hUsesAll := m.hUsesAll
  have hEqualCounts := m.hEqualCounts
  simp_all <;> omega
theorem wicks_pairs (m : CandleWicks) : m.pairs = 10 := by
  have hFeet := m.hFeet
  have hInchesPerFoot := m.hInchesPerFoot
  have hTotalInches := m.hTotalInches
  have hShort := m.hShort
  have hLong := m.hLong
  have hPairLength := m.hPairLength
  have hUsesAll := m.hUsesAll
  have hEqualCounts := m.hEqualCounts
  simp_all <;> omega
theorem wicks_solution (m : CandleWicks) : m.totalWicks = 20 := by
  have hFeet := m.hFeet
  have hInchesPerFoot := m.hInchesPerFoot
  have hTotalInches := m.hTotalInches
  have hShort := m.hShort
  have hLong := m.hLong
  have hPairLength := m.hPairLength
  have hUsesAll := m.hUsesAll
  have hEqualCounts := m.hEqualCounts
  simp_all <;> omega

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
theorem books_total (m : BookMoney) : m.totalCost = 21 := by
  have hDictionary := m.hDictionary
  have hDinosaur := m.hDinosaur
  have hCookbook := m.hCookbook
  have hTotal := m.hTotal
  have hSaved := m.hSaved
  have hNeeded := m.hNeeded
  simp_all <;> omega
theorem books_solution (m : BookMoney) : m.needed = 2 := by
  have hDictionary := m.hDictionary
  have hDinosaur := m.hDinosaur
  have hCookbook := m.hCookbook
  have hTotal := m.hTotal
  have hSaved := m.hSaved
  have hNeeded := m.hNeeded
  simp_all <;> omega

structure YearEarnings where
  january : ℕ
  february : ℕ
  march : ℕ
  total : ℕ
  hJanuary : january = 4000
  hFebruary : february = 2 * january
  hMarch : february = march + 2000
  hTotal : total = january + february + march
theorem earnings_february (m : YearEarnings) : m.february = 8000 := by
  have hJanuary := m.hJanuary
  have hFebruary := m.hFebruary
  have hMarch := m.hMarch
  have hTotal := m.hTotal
  simp_all <;> omega
theorem earnings_march (m : YearEarnings) : m.march = 6000 := by
  have hJanuary := m.hJanuary
  have hFebruary := m.hFebruary
  have hMarch := m.hMarch
  have hTotal := m.hTotal
  simp_all <;> omega
theorem earnings_solution (m : YearEarnings) : m.total = 18000 := by
  have hJanuary := m.hJanuary
  have hFebruary := m.hFebruary
  have hMarch := m.hMarch
  have hTotal := m.hTotal
  simp_all <;> omega

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
theorem lunch_carrots (m : LunchCookies) : m.carrotCalories = 100 := by
  have hBurger := m.hBurger
  have hCarrots := m.hCarrots
  have hPerCarrot := m.hPerCarrot
  have hCarrotCalories := m.hCarrotCalories
  have hTarget := m.hTarget
  have hRemaining := m.hRemaining
  have hPerCookie := m.hPerCookie
  have hCookies := m.hCookies
  simp_all <;> omega
theorem lunch_remaining (m : LunchCookies) : m.remaining = 250 := by
  have hBurger := m.hBurger
  have hCarrots := m.hCarrots
  have hPerCarrot := m.hPerCarrot
  have hCarrotCalories := m.hCarrotCalories
  have hTarget := m.hTarget
  have hRemaining := m.hRemaining
  have hPerCookie := m.hPerCookie
  have hCookies := m.hCookies
  simp_all <;> omega
theorem lunch_solution (m : LunchCookies) : m.cookies = 5 := by
  have hBurger := m.hBurger
  have hCarrots := m.hCarrots
  have hPerCarrot := m.hPerCarrot
  have hCarrotCalories := m.hCarrotCalories
  have hTarget := m.hTarget
  have hRemaining := m.hRemaining
  have hPerCookie := m.hPerCookie
  have hCookies := m.hCookies
  simp_all <;> omega

structure ToyCounts where
  mandy : ℕ
  anna : ℕ
  amanda : ℕ
  total : ℕ
  hAnna : anna = 3 * mandy
  hAmanda : amanda = anna + 2
  hTotal : total = 142
  hSum : total = mandy + anna + amanda
theorem toys_equation (m : ToyCounts) : 7 * m.mandy + 2 = 142 := by
  have hAnna := m.hAnna
  have hAmanda := m.hAmanda
  have hTotal := m.hTotal
  have hSum := m.hSum
  simp_all <;> omega
theorem toys_solution (m : ToyCounts) : m.mandy = 20 := by
  have hAnna := m.hAnna
  have hAmanda := m.hAmanda
  have hTotal := m.hTotal
  have hSum := m.hSum
  simp_all <;> omega

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
theorem stickers_fred (m : StickerSharing) : m.fred = 370 := by
  have hInitial := m.hInitial
  have hDaniel := m.hDaniel
  have hExtra := m.hExtra
  have hFred := m.hFred
  have hShared := m.hShared
  have hKept := m.hKept
  simp_all <;> omega
theorem stickers_shared (m : StickerSharing) : m.shared = 620 := by
  have hInitial := m.hInitial
  have hDaniel := m.hDaniel
  have hExtra := m.hExtra
  have hFred := m.hFred
  have hShared := m.hShared
  have hKept := m.hKept
  simp_all <;> omega
theorem stickers_solution (m : StickerSharing) : m.kept = 130 := by
  have hInitial := m.hInitial
  have hDaniel := m.hDaniel
  have hExtra := m.hExtra
  have hFred := m.hFred
  have hShared := m.hShared
  have hKept := m.hKept
  simp_all <;> omega

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
theorem vet_discount (m : VetInsurance) : m.coveredDiscount = 320 := by
  have hVisits := m.hVisits
  have hCost := m.hCost
  have hFirst := m.hFirst
  have hInsurance := m.hInsurance
  have hCoverage := m.hCoverage
  have hDiscount := m.hDiscount
  have hSubsequentCost := m.hSubsequentCost
  have hSubsequentVisits := m.hSubsequentVisits
  have hSubsequentTotal := m.hSubsequentTotal
  have hTotal := m.hTotal
  simp_all <;> omega
theorem vet_subsequent_cost (m : VetInsurance) : m.subsequentCost = 80 := by
  have hVisits := m.hVisits
  have hCost := m.hCost
  have hFirst := m.hFirst
  have hInsurance := m.hInsurance
  have hCoverage := m.hCoverage
  have hDiscount := m.hDiscount
  have hSubsequentCost := m.hSubsequentCost
  have hSubsequentVisits := m.hSubsequentVisits
  have hSubsequentTotal := m.hSubsequentTotal
  have hTotal := m.hTotal
  simp_all <;> omega
theorem vet_subsequent_total (m : VetInsurance) : m.subsequentTotal = 160 := by
  have hVisits := m.hVisits
  have hCost := m.hCost
  have hFirst := m.hFirst
  have hInsurance := m.hInsurance
  have hCoverage := m.hCoverage
  have hDiscount := m.hDiscount
  have hSubsequentCost := m.hSubsequentCost
  have hSubsequentVisits := m.hSubsequentVisits
  have hSubsequentTotal := m.hSubsequentTotal
  have hTotal := m.hTotal
  simp_all <;> omega
theorem vet_solution (m : VetInsurance) : m.totalPaid = 660 := by
  have hVisits := m.hVisits
  have hCost := m.hCost
  have hFirst := m.hFirst
  have hInsurance := m.hInsurance
  have hCoverage := m.hCoverage
  have hDiscount := m.hDiscount
  have hSubsequentCost := m.hSubsequentCost
  have hSubsequentVisits := m.hSubsequentVisits
  have hSubsequentTotal := m.hSubsequentTotal
  have hTotal := m.hTotal
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0927A11
