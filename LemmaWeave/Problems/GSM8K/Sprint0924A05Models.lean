import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0924A05

structure Marks where
  total : ℕ
  second : ℕ
  remaining : ℕ
  third : ℕ
  fourth : ℕ
  hTotal : total = 4 * 75
  hSecond : second = 80 + 10
  hRemaining : remaining + 80 + second = total
  hEqual : third = fourth
  hPair : third + fourth = remaining
theorem marks_total (m : Marks) : m.total = 300 := by omega
theorem marks_second (m : Marks) : m.second = 90 := by omega
theorem marks_remaining (m : Marks) : m.remaining = 130 := by omega
theorem marks_solution (m : Marks) : m.third = 65 := by omega

structure Lemonade where
  friends : ℕ
  otherHalf : ℕ
  crew : ℕ
  total : ℕ
  hFriends : 2 * friends = 18
  hOther : otherHalf = 18 + friends + 1
  hHalves : crew = otherHalf
  hTotal : total = crew + otherHalf
theorem lemonade_friends (m : Lemonade) : m.friends = 9 := by omega
theorem lemonade_other_half (m : Lemonade) : m.otherHalf = 28 := by omega
theorem lemonade_solution (m : Lemonade) : m.total = 56 := by omega

structure Membership where
  increases : ℕ
  sixth : ℕ
  hIncreases : increases = 6 - 1
  hSixth : sixth = 80 + increases * 10
theorem membership_increases (m : Membership) : m.increases = 5 := by omega
theorem membership_solution (m : Membership) : m.sixth = 130 := by omega

structure Lambs where
  brother : ℕ
  total : ℕ
  hBrother : brother = 10 + 3
  hTotal : total = 10 + brother
theorem lambs_brother (m : Lambs) : m.brother = 13 := by omega
theorem lambs_solution (m : Lambs) : m.total = 23 := by omega

/-- The result is conditional on every dive containing exactly four one-pearl oysters. -/
structure Oysters where
  pearlsPerDive : ℕ
  dives : ℕ
  hUniformQuarter : 4 * pearlsPerDive = 16
  hTarget : dives * pearlsPerDive = 56
theorem oysters_per_dive (m : Oysters) : m.pearlsPerDive = 4 := by omega
theorem oysters_solution (m : Oysters) : m.dives = 14 := by omega

structure Band where
  brass : ℕ
  woodwind : ℕ
  percussion : ℕ
  hWoodwind : woodwind = 2 * brass
  hPercussion : percussion = 4 * woodwind
  hTotal : brass + woodwind + percussion = 110
theorem band_woodwind (m : Band) : m.woodwind = 2 * m.brass := m.hWoodwind
theorem band_percussion (m : Band) : m.percussion = 8 * m.brass := by omega
theorem band_solution (m : Band) : m.brass = 10 := by omega

structure Typing where
  words : ℕ
  minutes : ℕ
  waterOunces : ℕ
  hWords : words = 5 * 400
  hMinutes : words = 50 * minutes
  hWater : 60 * waterOunces = 15 * minutes
theorem typing_words (m : Typing) : m.words = 2000 := by omega
theorem typing_minutes (m : Typing) : m.minutes = 40 := by omega
theorem typing_solution (m : Typing) : m.waterOunces = 10 := by omega

structure Arcade where
  games : ℕ
  tokens : ℕ
  dollars : ℕ
  hGames : games = 4 * 60
  hTokens : tokens = games * 2
  hDollars : tokens = 30 * dollars
theorem arcade_games (m : Arcade) : m.games = 240 := by omega
theorem arcade_tokens (m : Arcade) : m.tokens = 480 := by omega
theorem arcade_solution (m : Arcade) : m.dollars = 16 := by omega

structure Stickers where
  steven : ℕ
  terry : ℕ
  total : ℕ
  hSteven : steven = 3 * 30
  hTerry : terry = steven + 20
  hTotal : total = 30 + steven + terry
theorem stickers_steven (m : Stickers) : m.steven = 90 := by omega
theorem stickers_terry (m : Stickers) : m.terry = 110 := by omega
theorem stickers_solution (m : Stickers) : m.total = 230 := by omega

structure Crayons where
  new : ℕ
  broken : ℕ
  used : ℕ
  hNew : 3 * new = 120
  hBroken : 100 * broken = 20 * 120
  hPartition : new + broken + used = 120
theorem crayons_new (m : Crayons) : m.new = 40 := by omega
theorem crayons_broken (m : Crayons) : m.broken = 24 := by omega
theorem crayons_solution (m : Crayons) : m.used = 56 := by omega

structure Tanks where
  existing : ℕ
  remaining : ℕ
  more : ℕ
  hExisting : existing = 3 * 15
  hRemaining : existing + remaining = 75
  hMore : remaining = more * 10
theorem tanks_existing (m : Tanks) : m.existing = 45 := by omega
theorem tanks_remaining (m : Tanks) : m.remaining = 30 := by omega
theorem tanks_solution (m : Tanks) : m.more = 3 := by omega

structure Raise where
  hourly : ℕ
  weekly : ℕ
  expenses : ℕ
  leftover : ℕ
  hHourly : 100 * hourly = 105 * 40
  hWeekly : weekly = hourly * 8 * 5
  hExpenses : expenses = 600 + 100
  hLeftover : leftover + expenses = weekly
theorem raise_hourly (m : Raise) : m.hourly = 42 := by omega
theorem raise_weekly (m : Raise) : m.weekly = 1680 := by omega
theorem raise_expenses (m : Raise) : m.expenses = 700 := by omega
theorem raise_solution (m : Raise) : m.leftover = 980 := by omega

structure Deductions where
  gross : ℕ
  tax : ℕ
  insurance : ℕ
  total : ℕ
  takeHome : ℕ
  hGross : gross = 42 * 10
  hTax : 100 * tax = 20 * gross
  hInsurance : 100 * insurance = 5 * gross
  hTotal : total = tax + insurance + 5
  hTakeHome : takeHome + total = gross
theorem deductions_gross (m : Deductions) : m.gross = 420 := by omega
theorem deductions_tax (m : Deductions) : m.tax = 84 := by omega
theorem deductions_insurance (m : Deductions) : m.insurance = 21 := by omega
theorem deductions_total (m : Deductions) : m.total = 110 := by omega
theorem deductions_solution (m : Deductions) : m.takeHome = 310 := by omega

structure Games where
  cost : ℕ
  change : ℕ
  bills : ℕ
  hCost : cost = 6 * 15
  hChange : cost + change = 100
  hBills : change = bills * 5
theorem games_cost (m : Games) : m.cost = 90 := by omega
theorem games_change (m : Games) : m.change = 10 := by omega
theorem games_solution (m : Games) : m.bills = 2 := by omega

structure Cable where
  sports : ℕ
  total : ℕ
  hSports : sports + 3 = 12
  hTotal : total = 15 + 12 + sports
theorem cable_sports (m : Cable) : m.sports = 9 := by omega
theorem cable_solution (m : Cable) : m.total = 36 := by omega

end LemmaWeave.Problems.GSM8K.Sprint0924A05
