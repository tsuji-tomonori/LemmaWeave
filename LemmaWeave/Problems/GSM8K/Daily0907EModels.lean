import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0907E

def CourseworkBudget (food accommodation entertainment materials : ℚ) : Prop :=
  food = (30 / 100) * 1000 ∧ accommodation = (15 / 100) * 1000 ∧
  entertainment = (25 / 100) * 1000 ∧
  materials = 1000 - food - accommodation - entertainment

def PinataTreats (reeses snickers skittles total : ℚ) : Prop :=
  reeses = 4 * 9 ∧ snickers = 3 * 5 ∧ skittles = 5 * 7 ∧
  total = 13 + reeses + snickers + skittles

def MonthlyPractice (violin daily weekly monthly : ℕ) : Prop :=
  violin = 3 * 20 ∧ daily = 20 + violin ∧ weekly = daily * 6 ∧ monthly = weekly * 4

def DownloadTime (first remaining remainingTime total : ℚ) : Prop :=
  first = 60 / 5 ∧ remaining = 90 - 60 ∧ remainingTime = remaining / 10 ∧
  total = first + remainingTime

def PiDigits (carlos sam : ℕ) : Prop :=
  6 * carlos = 24 ∧ sam = carlos + 6

def ShellCollection (ben alan : ℕ) : Prop :=
  3 * ben = 36 ∧ alan = 4 * ben

def SupplySaving (seasonCost savingMonths monthlyIncome chores : ℕ) : Prop :=
  seasonCost = 4 * 100 ∧ savingMonths = 12 - 4 ∧
  monthlyIncome = seasonCost / savingMonths ∧ chores = monthlyIncome / 10

/-- 長方形2枚を重ならず切り出し、面積の合計を使用量とするモデル。 -/
def CurtainFabric (bolt living bedroom remaining : ℕ) : Prop :=
  bolt = 16 * 12 ∧ living = 4 * 6 ∧ bedroom = 2 * 4 ∧
  remaining = bolt - living - bedroom

def PencilBoxes (shared total each : ℕ) : Prop :=
  shared = 5 * 8 ∧ total = 10 + shared ∧ each = total / 10

def FrozenDesserts (iceCream yogurt difference : ℕ) : Prop :=
  iceCream = 10 * 4 ∧ yogurt = 4 * 1 ∧ difference = iceCream - yogurt

end LemmaWeave.Problems.GSM8K.Daily0907E
