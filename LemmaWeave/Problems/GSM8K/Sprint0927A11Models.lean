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

end LemmaWeave.Problems.GSM8K.Sprint0927A11
