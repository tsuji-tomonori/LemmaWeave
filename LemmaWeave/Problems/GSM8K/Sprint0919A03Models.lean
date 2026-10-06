namespace LemmaWeave.Problems.GSM8K.Sprint0919A03

def Ages
    (claireFuture yearsAhead claireNow olderBy jessicaNow : Nat) : Prop :=
  claireFuture = 20 ∧ yearsAhead = 2 ∧ claireNow + yearsAhead = claireFuture ∧
  olderBy = 6 ∧ jessicaNow = claireNow + olderBy

/-- Monetary values are represented in cents. -/
def EggCost
    (dozens dozenSize eggs centsEach totalCents : Nat) : Prop :=
  dozens = 3 ∧ dozenSize = 12 ∧ eggs = dozens * dozenSize ∧
  centsEach = 50 ∧ totalCents = eggs * centsEach

def CakeVotes
    (witch unicornMultiplier unicorn dragonExtra dragon total : Nat) : Prop :=
  witch = 7 ∧ unicornMultiplier = 3 ∧ unicorn = witch * unicornMultiplier ∧
  dragonExtra = 25 ∧ dragon = witch + dragonExtra ∧ total = witch + unicorn + dragon

/--
Both readings of “1/5 times more” are recorded.  The additive reading pays the
base rate plus one fifth; the multiplicative reading pays one fifth as much.
Monthly totals additionally assume exactly four 60-hour workweeks.
-/
def SailorEarnings
    (allSailors inexperienced experienced baseRate fifth premium additiveRate
      hoursPerWeek weeks additiveMonthlyEach additiveTotal multiplicativeRate
      multiplicativeTotal : Nat) : Prop :=
  allSailors = 17 ∧ inexperienced = 5 ∧ experienced + inexperienced = allSailors ∧
  baseRate = 10 ∧ fifth = 5 ∧ baseRate = premium * fifth ∧
  additiveRate = baseRate + premium ∧ hoursPerWeek = 60 ∧ weeks = 4 ∧
  additiveMonthlyEach = additiveRate * hoursPerWeek * weeks ∧
  additiveTotal = experienced * additiveMonthlyEach ∧
  multiplicativeRate = premium ∧
  multiplicativeTotal = experienced * multiplicativeRate * hoursPerWeek * weeks

def BagResale
    (cost profitPercent profit sellingPrice : Nat) : Prop :=
  cost = 3000 ∧ profitPercent = 15 ∧ cost * profitPercent = profit * 100 ∧
  sellingPrice = cost + profit

end LemmaWeave.Problems.GSM8K.Sprint0919A03
