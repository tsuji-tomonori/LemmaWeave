import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A17P1

structure CoffeeEachModel where
  weakCups : ℕ
  strongCups : ℕ
  weakPerCup : ℕ
  multiplier : ℕ
  strongPerCup : ℕ
  weakAmount : ℕ
  strongAmount : ℕ
  total : ℕ
  hWeakCups : weakCups = 12
  hStrongCups : strongCups = 12
  hWeakRate : weakPerCup = 1
  hMultiplier : multiplier = 2
  hStrongRate : strongPerCup = multiplier * weakPerCup
  hWeakAmount : weakAmount = weakCups * weakPerCup
  hStrongAmount : strongAmount = strongCups * strongPerCup
  hTotal : total = weakAmount + strongAmount

theorem strong_coffee_rate (m : CoffeeEachModel) : m.strongPerCup = 2 := by
  cases m <;> simp_all <;> omega

theorem weak_coffee_amount (m : CoffeeEachModel) : m.weakAmount = 12 := by
  cases m <;> simp_all <;> omega

theorem strong_coffee_amount (m : CoffeeEachModel) : m.strongAmount = 24 := by
  have h := strong_coffee_rate m
  cases m <;> simp_all <;> omega

theorem coffee_each_total (m : CoffeeEachModel) : m.total = 36 := by
  have h1 := weak_coffee_amount m
  have h2 := strong_coffee_amount m
  cases m <;> simp_all <;> omega

structure CoffeeSplitModel where
  totalCups : ℕ
  weakCups : ℕ
  strongCups : ℕ
  weakPerCup : ℕ
  strongPerCup : ℕ
  total : ℕ
  hTotalCups : totalCups = 12
  hSplit : totalCups = weakCups + strongCups
  hEqual : weakCups = strongCups
  hWeakRate : weakPerCup = 1
  hStrongRate : strongPerCup = 2
  hTotal : total = weakCups * weakPerCup + strongCups * strongPerCup

theorem coffee_split_total (m : CoffeeSplitModel) : m.total = 18 := by
  cases m <;> simp_all <;> omega

theorem coffee_readings_differ (a : CoffeeEachModel) (b : CoffeeSplitModel) :
    a.total ≠ b.total := by
  have h1 := coffee_each_total a
  have h2 := coffee_split_total b
  omega

structure BillModel where
  total : ℕ
  fiveValue : ℕ
  fiveCount : ℕ
  tenValue : ℕ
  tenAmount : ℕ
  tenCount : ℕ
  twentyValue : ℕ
  twentyCount : ℕ
  twentyAmount : ℕ
  billCount : ℕ
  hTotal : total = 150
  hFiveValue : fiveValue = 5
  hTenValue : tenValue = 10
  hTenAmount : tenAmount = 50
  hTenCount : tenAmount = tenValue * tenCount
  hTwentyValue : twentyValue = 20
  hTwentyCount : twentyCount = 4
  hTwentyAmount : twentyAmount = twentyValue * twentyCount
  hMoney : total = fiveValue * fiveCount + tenAmount + twentyAmount
  hCount : billCount = fiveCount + tenCount + twentyCount

theorem twenty_bill_amount (m : BillModel) : m.twentyAmount = 80 := by
  cases m <;> simp_all <;> omega

theorem ten_bill_count (m : BillModel) : m.tenCount = 5 := by
  cases m <;> simp_all <;> omega

theorem five_bill_amount (m : BillModel) : m.fiveValue * m.fiveCount = 20 := by
  have h := twenty_bill_amount m
  cases m <;> simp_all <;> omega

theorem five_bill_count (m : BillModel) : m.fiveCount = 4 := by
  have h := five_bill_amount m
  cases m <;> simp_all <;> omega

theorem bill_count (m : BillModel) : m.billCount = 13 := by
  have h1 := ten_bill_count m
  have h2 := five_bill_count m
  cases m <;> simp_all <;> omega

structure WhiskerModel where
  princess : ℕ
  multiplier : ℕ
  doubled : ℕ
  fewer : ℕ
  catman : ℕ
  hPrincess : princess = 14
  hMultiplier : multiplier = 2
  hDoubled : doubled = multiplier * princess
  hFewer : fewer = 6
  hCatman : doubled = catman + fewer

theorem doubled_whiskers (m : WhiskerModel) : m.doubled = 28 := by
  cases m <;> simp_all <;> omega

theorem catman_whiskers (m : WhiskerModel) : m.catman = 22 := by
  have h := doubled_whiskers m
  cases m <;> simp_all <;> omega

structure MopModel where
  bathroom : ℕ
  kitchen : ℕ
  totalArea : ℕ
  rate : ℕ
  minutes : ℕ
  hBathroom : bathroom = 24
  hKitchen : kitchen = 80
  hTotal : totalArea = bathroom + kitchen
  hRate : rate = 8
  hMinutes : totalArea = rate * minutes

theorem mop_total_area (m : MopModel) : m.totalArea = 104 := by
  cases m <;> simp_all <;> omega

theorem mop_minutes (m : MopModel) : m.minutes = 13 := by
  have h := mop_total_area m
  cases m <;> simp_all <;> omega

structure HockeyModel where
  louieLast : ℕ
  brotherMultiplier : ℕ
  brotherPerGame : ℕ
  seasons : ℕ
  gamesPerSeason : ℕ
  brotherGames : ℕ
  brotherTotal : ℕ
  louiePrevious : ℕ
  louieTotal : ℕ
  combined : ℕ
  hLouieLast : louieLast = 4
  hMultiplier : brotherMultiplier = 2
  hBrotherPerGame : brotherPerGame = brotherMultiplier * louieLast
  hSeasons : seasons = 3
  hGamesPerSeason : gamesPerSeason = 50
  hBrotherGames : brotherGames = seasons * gamesPerSeason
  hBrotherTotal : brotherTotal = brotherPerGame * brotherGames
  hLouiePrevious : louiePrevious = 40
  hLouieTotal : louieTotal = louiePrevious + louieLast
  hCombined : combined = brotherTotal + louieTotal

theorem brother_goals_per_game (m : HockeyModel) : m.brotherPerGame = 8 := by
  cases m <;> simp_all <;> omega

theorem brother_games (m : HockeyModel) : m.brotherGames = 150 := by
  cases m <;> simp_all <;> omega

theorem brother_goal_total (m : HockeyModel) : m.brotherTotal = 1200 := by
  have h1 := brother_goals_per_game m
  have h2 := brother_games m
  cases m <;> simp_all <;> omega

theorem louie_goal_total (m : HockeyModel) : m.louieTotal = 44 := by
  cases m <;> simp_all <;> omega

theorem hockey_combined_goals (m : HockeyModel) : m.combined = 1244 := by
  have h1 := brother_goal_total m
  have h2 := louie_goal_total m
  cases m <;> simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A17P1
