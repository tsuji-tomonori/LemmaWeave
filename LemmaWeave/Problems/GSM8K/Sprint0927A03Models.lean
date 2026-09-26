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
end LemmaWeave.Problems.GSM8K.Sprint0927A03
