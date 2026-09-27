import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A11

structure PapayaFourWeeks where
  jake brother father weekly weeks total : ℕ
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
  orange cherry apple difference totalHalfLiters totalLiters : ℕ
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
  cows sheep pigs total : ℕ
  hCows : cows = 12
  hSheep : sheep = 2 * cows
  hPigs : pigs = 3 * sheep
  hTotal : total = cows + sheep + pigs
theorem farm_sheep (m : FarmAnimals) : m.sheep = 24 := by cases m; omega
theorem farm_pigs (m : FarmAnimals) : m.pigs = 72 := by cases m; omega
theorem farm_solution (m : FarmAnimals) : m.total = 108 := by cases m; omega

structure PaintballMonthly where
  plays boxesPerPlay pricePerBox costPerPlay monthlyCost : ℕ
  hPlays : plays = 3
  hBoxes : boxesPerPlay = 3
  hPrice : pricePerBox = 25
  hCostPerPlay : costPerPlay = boxesPerPlay * pricePerBox
  hMonthly : monthlyCost = plays * costPerPlay
theorem paintball_each (m : PaintballMonthly) : m.costPerPlay = 75 := by cases m; omega
theorem paintball_solution (m : PaintballMonthly) : m.monthlyCost = 225 := by cases m; omega

structure FootballAverage where
  intervalMinutes goalsPerInterval matchHours matchMinutes intervals averageGoals : ℕ
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
  geography math english firstThree history total : ℕ
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
  lisa jude han jane total : ℕ
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
  dina ivy collectors : ℕ
  hDina : dina = 60
  hTwice : dina = 2 * ivy
  hCollectors : 3 * collectors = 2 * ivy
theorem dolls_ivy (m : CollectorDolls) : m.ivy = 30 := by cases m; omega
theorem dolls_solution (m : CollectorDolls) : m.collectors = 20 := by cases m; omega

structure CandleWicks where
  feet inchesPerFoot totalInches shortLength longLength pairLength pairs totalWicks : ℕ
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
  dictionary dinosaur cookbook totalCost saved needed : ℕ
  hDictionary : dictionary = 5
  hDinosaur : dinosaur = 11
  hCookbook : cookbook = 5
  hTotal : totalCost = dictionary + dinosaur + cookbook
  hSaved : saved = 19
  hNeeded : totalCost = saved + needed
theorem books_total (m : BookMoney) : m.totalCost = 21 := by cases m; omega
theorem books_solution (m : BookMoney) : m.needed = 2 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0927A11
