import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A03
structure AgesConventional where
  annNow : ℕ
  tomNow : ℕ
  annFuture : ℕ
  tomFuture : ℕ
  total : ℕ
  hAnn : annNow = 6
  hTom : tomNow = 2 * annNow
  hAnnFuture : annFuture = annNow + 10
  hTomFuture : tomFuture = tomNow + 10
  hTotal : total = annFuture + tomFuture
theorem ages_conventional_tom (m : AgesConventional) : m.tomNow = 12 := by cases m; omega
theorem ages_conventional_total (m : AgesConventional) : m.total = 38 := by cases m; omega

structure AgesLiteral where
  annNow : ℕ
  tomNow : ℕ
  annFuture : ℕ
  tomFuture : ℕ
  total : ℕ
  hAnn : annNow = 6
  hTom : tomNow = annNow + 2 * annNow
  hAnnFuture : annFuture = annNow + 10
  hTomFuture : tomFuture = tomNow + 10
  hTotal : total = annFuture + tomFuture
theorem ages_literal_tom (m : AgesLiteral) : m.tomNow = 18 := by cases m; omega
theorem ages_literal_total (m : AgesLiteral) : m.total = 44 := by cases m; omega
theorem ages_solution (c : AgesConventional) (l : AgesLiteral) :
    c.total = 38 ∧ l.total = 44 ∧ c.total ≠ l.total := by
  cases c
  cases l
  omega
structure Gameplay where
  totalHours : ℕ
  grindingHours : ℕ
  baseEnjoyable : ℕ
  expansionEnjoyable : ℕ
  finalEnjoyable : ℕ
  hTotal : totalHours = 100
  hGrinding : 5 * grindingHours = 4 * totalHours
  hBase : baseEnjoyable + grindingHours = totalHours
  hExpansion : expansionEnjoyable = 30
  hFinal : finalEnjoyable = baseEnjoyable + expansionEnjoyable
theorem gameplay_grinding (m : Gameplay) : m.grindingHours = 80 := by cases m; omega
theorem gameplay_base (m : Gameplay) : m.baseEnjoyable = 20 := by cases m; omega
theorem gameplay_expansion (m : Gameplay) : m.expansionEnjoyable = 30 := by cases m; omega
theorem gameplay_solution (m : Gameplay) : m.finalEnjoyable = 50 := by cases m; omega
structure Nephews where
  aldenThen : ℕ
  aldenNow : ℕ
  vihaanNow : ℕ
  total : ℕ
  hThen : aldenThen = 50
  hAlden : aldenNow = 2 * aldenThen
  hVihaan : vihaanNow = aldenNow + 60
  hTotal : total = aldenNow + vihaanNow
theorem nephews_alden (m : Nephews) : m.aldenNow = 100 := by cases m; omega
theorem nephews_vihaan (m : Nephews) : m.vihaanNow = 160 := by cases m; omega
theorem nephews_solution (m : Nephews) : m.total = 260 := by cases m; omega
structure Wipes where
  morning : ℕ
  afterUse : ℕ
  nighttime : ℕ
  hUse : afterUse + 20 = morning
  hRefill : nighttime = afterUse + 10
  hNight : nighttime = 60
theorem wipes_after_use (m : Wipes) : m.afterUse = 50 := by cases m; omega
theorem wipes_net_change (m : Wipes) : m.morning = m.nighttime + 10 := by cases m; omega
theorem wipes_solution (m : Wipes) : m.morning = 70 := by cases m; omega
structure Shopping where
  necklace : ℕ
  book : ℕ
  total : ℕ
  over : ℕ
  hNecklace : necklace = 34
  hBook : book = necklace + 5
  hTotal : total = necklace + book
  hOver : total = 70 + over
theorem shopping_book (m : Shopping) : m.book = 39 := by cases m; omega
theorem shopping_total (m : Shopping) : m.total = 73 := by cases m; omega
theorem shopping_solution (m : Shopping) : m.over = 3 := by cases m; omega
structure Sleep where
  increase : ℕ
  newHours : ℕ
  hIncrease : 3 * increase = 6
  hNew : newHours = 6 + increase
theorem sleep_increase (m : Sleep) : m.increase = 2 := by cases m; omega
theorem sleep_solution (m : Sleep) : m.newHours = 8 := by cases m; omega
structure Relay where
  sadieMiles : ℕ
  arianaMiles : ℕ
  sarahHalfHours : ℕ
  sarahMiles : ℕ
  totalMiles : ℕ
  hSadie : sadieMiles = 3 * 2
  hAriana : 2 * arianaMiles = 6
  hTime : 4 + 1 + sarahHalfHours = 9
  hSarah : 2 * sarahMiles = 4 * sarahHalfHours
  hTotal : totalMiles = sadieMiles + arianaMiles + sarahMiles
theorem relay_sadie (m : Relay) : m.sadieMiles = 6 := by cases m; omega
theorem relay_ariana (m : Relay) : m.arianaMiles = 3 := by cases m; omega
theorem relay_sarah_time (m : Relay) : m.sarahHalfHours = 4 := by cases m; omega
theorem relay_sarah_distance (m : Relay) : m.sarahMiles = 8 := by cases m; omega
theorem relay_solution (m : Relay) : m.totalMiles = 17 := by cases m; omega
structure Layoffs where
  first : ℕ
  remainingFirst : ℕ
  second : ℕ
  remainingSecond : ℕ
  third : ℕ
  total : ℕ
  hFirst : 10 * first = 1000
  hRemainFirst : remainingFirst + first = 1000
  hSecond : 10 * second = remainingFirst
  hRemainSecond : remainingSecond + second = remainingFirst
  hThird : 10 * third = remainingSecond
  hTotal : total = first + second + third
theorem layoffs_first (m : Layoffs) : m.first = 100 := by cases m; omega
theorem layoffs_remaining_first (m : Layoffs) : m.remainingFirst = 900 := by cases m; omega
theorem layoffs_second (m : Layoffs) : m.second = 90 := by cases m; omega
theorem layoffs_remaining_second (m : Layoffs) : m.remainingSecond = 810 := by cases m; omega
theorem layoffs_third (m : Layoffs) : m.third = 81 := by cases m; omega
theorem layoffs_solution (m : Layoffs) : m.total = 271 := by cases m; omega
structure StudyTime where
  totalMinutes : ℕ
  hours : ℕ
  hTotal : totalMinutes = 60 + 80 + 40
  hHours : totalMinutes = 60 * hours
theorem study_minutes (m : StudyTime) : m.totalMinutes = 180 := by cases m; omega
theorem study_solution (m : StudyTime) : m.hours = 3 := by cases m; omega
structure Savings where
  saved : ℕ
  bonus : ℕ
  beforePurchase : ℕ
  remaining : ℕ
  hSaved : saved = 50 + 37 + 11
  hQualifies : 75 < saved
  hBonus : bonus = 25
  hBefore : beforePurchase = saved + bonus
  hRemaining : remaining + 87 = beforePurchase
theorem savings_saved (m : Savings) : m.saved = 98 := by cases m; omega
theorem savings_qualifies (m : Savings) : 75 < m.saved := m.hQualifies
theorem savings_before_purchase (m : Savings) : m.beforePurchase = 123 := by cases m; omega
theorem savings_solution (m : Savings) : m.remaining = 36 := by cases m; omega
end LemmaWeave.Problems.GSM8K.Sprint0927A03
