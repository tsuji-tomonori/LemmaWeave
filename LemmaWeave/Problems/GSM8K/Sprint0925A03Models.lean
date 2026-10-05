import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0925A03

structure LionPopulation where
  monthlyIncrease : ℕ
  yearlyIncrease : ℕ
  total : ℕ
  hMonthly : monthlyIncrease + 1 = 5
  hYearly : yearlyIncrease = 12 * monthlyIncrease
  hTotal : total = 100 + yearlyIncrease
theorem lions_monthly (m : LionPopulation) : m.monthlyIncrease = 4 := by cases m <;> simp_all at * <;> omega
theorem lions_yearly (m : LionPopulation) : m.yearlyIncrease = 48 := by
  have h := lions_monthly m
  cases m <;> simp_all at * <;> omega
theorem lions_solution (m : LionPopulation) : m.total = 148 := by
  have h := lions_yearly m
  cases m <;> simp_all at * <;> omega

structure Lifespans where
  bat : ℕ
  hamster : ℕ
  frog : ℕ
  hHamster : hamster + 6 = bat
  hFrog : frog = 4 * hamster
  hTotal : bat + hamster + frog = 30
theorem lifespans_hamster (m : Lifespans) : m.hamster = 4 := by cases m <;> simp_all at * <;> omega
theorem lifespans_frog (m : Lifespans) : m.frog = 16 := by
  have h := lifespans_hamster m
  cases m <;> simp_all at * <;> omega
theorem lifespans_solution (m : Lifespans) : m.bat = 10 := by cases m <;> simp_all at * <;> omega

structure TreeRings where
  perGroup : ℕ
  groupDifference : ℕ
  ageDifference : ℕ
  hPerGroup : perGroup = 2 + 4
  hGroupDifference : groupDifference + 40 = 70
  hAgeDifference : ageDifference = 6 * groupDifference
theorem rings_per_group (m : TreeRings) : m.perGroup = 6 := by cases m <;> simp_all at * <;> omega
theorem rings_group_difference (m : TreeRings) : m.groupDifference = 30 := by cases m <;> simp_all at * <;> omega
theorem rings_solution (m : TreeRings) : m.ageDifference = 180 := by
  have h := rings_group_difference m
  cases m <;> simp_all at * <;> omega

structure BasketballWins where
  second : ℕ
  third : ℕ
  total : ℕ
  hSecond : 8 * second = 5 * 40
  hThird : third = 40 + second
  hTotal : total = 40 + second + third
theorem basketball_second (m : BasketballWins) : m.second = 25 := by cases m <;> simp_all at * <;> omega
theorem basketball_third (m : BasketballWins) : m.third = 65 := by
  have h := basketball_second m
  cases m <;> simp_all at * <;> omega
theorem basketball_solution (m : BasketballWins) : m.total = 130 := by
  have h₁ := basketball_second m
  have h₂ := basketball_third m
  cases m <;> simp_all at * <;> omega

structure TunaSales where
  peak : ℕ
  low : ℕ
  difference : ℕ
  hPeak : peak = 6 * 15 * 60
  hLow : low = 4 * 15 * 60
  hDifference : difference + low = peak
theorem tuna_peak (m : TunaSales) : m.peak = 5400 := by cases m <;> simp_all at * <;> omega
theorem tuna_low (m : TunaSales) : m.low = 3600 := by cases m <;> simp_all at * <;> omega
theorem tuna_solution (m : TunaSales) : m.difference = 1800 := by cases m <;> simp_all at * <;> omega

structure Hummus where
  cups : ℕ
  ounces : ℕ
  hCups : cups = 20 * 1
  hOunces : ounces = 6 * cups
theorem hummus_cups (m : Hummus) : m.cups = 20 := by cases m <;> simp_all at * <;> omega
theorem hummus_ounces (m : Hummus) : m.ounces = 120 := by
  have h := hummus_cups m
  cases m <;> simp_all at * <;> omega
theorem hummus_seven_insufficient : 7 * 16 < 120 := by norm_num
theorem hummus_solution : 120 ≤ 8 * 16 ∧ 7 * 16 < 120 := by norm_num

structure LawnProfit where
  mowing : ℕ
  revenue : ℕ
  profit : ℕ
  hMowing : mowing = 3 * 12
  hRevenue : revenue = mowing + 10
  hProfit : profit + 17 = revenue
theorem lawn_mowing (m : LawnProfit) : m.mowing = 36 := by cases m <;> simp_all at * <;> omega
theorem lawn_revenue (m : LawnProfit) : m.revenue = 46 := by
  have h := lawn_mowing m
  cases m <;> simp_all at * <;> omega
theorem lawn_solution (m : LawnProfit) : m.profit = 29 := by cases m <;> simp_all at * <;> omega

structure OppositeRunning where
  mary : ℕ
  jimmy : ℕ
  distance : ℕ
  hMary : mary = 5 * 1
  hJimmy : jimmy = 4 * 1
  hDistance : distance = mary + jimmy
theorem opposite_mary (m : OppositeRunning) : m.mary = 5 := by cases m <;> simp_all at * <;> omega
theorem opposite_jimmy (m : OppositeRunning) : m.jimmy = 4 := by cases m <;> simp_all at * <;> omega
theorem opposite_solution (m : OppositeRunning) : m.distance = 9 := by cases m <;> simp_all at * <;> omega

structure PeachMoney where
  cost : ℕ
  left : ℕ
  hCost : cost = 3 * 2
  hLeft : left + cost = 20
theorem peaches_cost (m : PeachMoney) : m.cost = 6 := by cases m <;> simp_all at * <;> omega
theorem peaches_solution (m : PeachMoney) : m.left = 14 := by cases m <;> simp_all at * <;> omega

structure CardSplit where
  cards : ℕ
  players : ℕ
  each : ℕ
  hCards : cards = 52 + 2
  hPlayers : players = 1 + 2
  hEach : 3 * each = cards
theorem cards_total (m : CardSplit) : m.cards = 54 := by cases m <;> simp_all at * <;> omega
theorem cards_players (m : CardSplit) : m.players = 3 := by cases m <;> simp_all at * <;> omega
theorem cards_solution (m : CardSplit) : m.each = 18 := by cases m <;> simp_all at * <;> omega

structure Macarons where
  mitch : ℕ
  joshua : ℕ
  miles : ℕ
  renz : ℕ
  total : ℕ
  kids : ℕ
  hMitch : mitch = 20
  hJoshua : joshua = mitch + 6
  hMiles : miles = 2 * joshua
  hRenz : 4 * (renz + 1) = 3 * miles
  hTotal : total = mitch + joshua + miles + renz
  hKids : 2 * kids = total
theorem macarons_joshua (m : Macarons) : m.joshua = 26 := by cases m <;> simp_all at * <;> omega
theorem macarons_miles (m : Macarons) : m.miles = 52 := by cases m <;> simp_all at * <;> omega
theorem macarons_renz (m : Macarons) : m.renz = 38 := by cases m <;> simp_all at * <;> omega
theorem macarons_total (m : Macarons) : m.total = 136 := by cases m <;> simp_all at * <;> omega
theorem macarons_solution (m : Macarons) : m.kids = 68 := by cases m <;> simp_all at * <;> omega

structure Carnival where
  total : ℕ
  rollerUsed : ℕ
  remaining : ℕ
  slides : ℕ
  hTotal : total = 4 * 60
  hRoller : rollerUsed = 4 * 30
  hRemaining : remaining + rollerUsed + 60 = total
  hSlides : 15 * slides = remaining
theorem carnival_total (m : Carnival) : m.total = 240 := by cases m <;> simp_all at * <;> omega
theorem carnival_roller (m : Carnival) : m.rollerUsed = 120 := by cases m <;> simp_all at * <;> omega
theorem carnival_remaining (m : Carnival) : m.remaining = 60 := by cases m <;> simp_all at * <;> omega
theorem carnival_solution (m : Carnival) : m.slides = 4 := by cases m <;> simp_all at * <;> omega

structure JellyBeans where
  red : ℕ
  coconut : ℕ
  hRed : 4 * red = 3 * 4000
  hCoconut : 4 * coconut = red
theorem jelly_red (m : JellyBeans) : m.red = 3000 := by cases m <;> simp_all at * <;> omega
theorem jelly_solution (m : JellyBeans) : m.coconut = 750 := by cases m <;> simp_all at * <;> omega

structure Stickers where
  tom : ℕ
  dan : ℕ
  hTom : tom = 3 * 12
  hDan : dan = 2 * tom
theorem stickers_tom (m : Stickers) : m.tom = 36 := by cases m <;> simp_all at * <;> omega
theorem stickers_solution (m : Stickers) : m.dan = 72 := by cases m <;> simp_all at * <;> omega

structure Laptops where
  second : ℕ
  total : ℕ
  hSecond : second = 3 * 500
  hTotal : total = 500 + second
theorem laptops_second (m : Laptops) : m.second = 1500 := by cases m <;> simp_all at * <;> omega
theorem laptops_solution (m : Laptops) : m.total = 2000 := by cases m <;> simp_all at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0925A03
