import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0907C

def CreditBalance (repaid remaining : ℚ) : Prop :=
  repaid = 15 + 23 ∧ remaining = 100 - repaid

def TennisMisses (firstMiss nextMiss totalMiss : ℚ) : Prop :=
  firstMiss = (1 - 2 / 5) * 100 ∧ nextMiss = (1 - 1 / 3) * 75 ∧
  totalMiss = firstMiss + nextMiss

def EvaporatedSalt (saltLiters saltMilliliters : ℚ) : Prop :=
  saltLiters = (20 / 100) * 2 ∧ saltMilliliters = saltLiters * 1000

def ValuableFiles
    (firstIrrelevant firstValuable secondIrrelevant secondValuable totalValuable : ℚ) : Prop :=
  firstIrrelevant = (70 / 100) * 800 ∧ firstValuable = 800 - firstIrrelevant ∧
  secondIrrelevant = (3 / 5) * 400 ∧ secondValuable = 400 - secondIrrelevant ∧
  totalValuable = firstValuable + secondValuable

def GardenGnomes (firstFour fifth : ℕ) : Prop :=
  firstFour = 4 * 3 ∧ firstFour + fifth = 20

def PreviousIncome (old housing newIncome : ℚ) : Prop :=
  housing = (40 / 100) * old ∧ newIncome = old + 600 ∧
  housing = (25 / 100) * newIncome

def PizzaPieces (total billDale annCate eaten uneaten : ℚ) : Prop :=
  total = 4 * 4 ∧ billDale = 2 * 4 * (50 / 100) ∧
  annCate = 2 * 4 * (75 / 100) ∧ eaten = billDale + annCate ∧
  uneaten = total - eaten

def PaintingSales (large small previous current : ℚ) : Prop :=
  large = 60 * 8 ∧ small = 30 * 4 ∧ previous = large + small ∧
  current = 2 * previous

def TunnelDistance (known third : ℕ) : Prop :=
  known = 5 + 8 + 0 ∧ known + third = 23

/-- 異なる単位の物理量ではなく、問題文が要求する数値だけの合計。 -/
def NumericIngredientTotal (salt numericTotal : ℚ) : Prop :=
  salt = (1 / 2) * 16 ∧ numericTotal = 10 + 16 + salt

end LemmaWeave.Problems.GSM8K.Daily0907C
