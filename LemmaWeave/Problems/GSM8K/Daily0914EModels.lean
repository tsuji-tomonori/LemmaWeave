import Mathlib.Algebra.Order.Field.Rat
namespace LemmaWeave.Problems.GSM8K.Daily0914E

def ChildrenShare (total boys pool each : ℕ) : Prop :=
  total = 180 ∧ 12 * boys = 5 * total ∧ pool = 3900 ∧ pool = boys * each
def Painkillers (start firstDay firstUsed nextDay nextUsed final used left : ℕ) : Prop :=
  start = 50 ∧ firstDay = 6 ∧ firstUsed = 2 * firstDay ∧ 2 * nextDay = firstDay ∧
  nextUsed = 3 * nextDay ∧ final = 2 ∧ used = firstUsed + nextUsed + final ∧ left + used = start
def MagazineDiscount (months perMonth issues cents saving dollars : ℕ) : Prop :=
  months = 18 ∧ perMonth = 2 ∧ issues = months * perMonth ∧ cents = 25 ∧ saving = issues * cents ∧ 100 * dollars = saving
def DandelionShare (start gifts remaining friends each : ℕ) : Prop :=
  start = 40 ∧ gifts = 3 + 3 + 5 + 2 ∧ remaining + gifts = start ∧ friends = 3 ∧ remaining = friends * each
def LoweringWeight (plates eachPlate base percent extra felt : ℕ) : Prop :=
  plates = 10 ∧ eachPlate = 30 ∧ base = plates * eachPlate ∧ percent = 20 ∧ 100 * extra = percent * base ∧ felt = base + extra
def PieProfit (pies perPie pieces price revenue unitCost cost profit : ℕ) : Prop :=
  pies = 12 ∧ perPie = 3 ∧ pieces = pies * perPie ∧ price = 400 ∧ revenue = pieces * price ∧
  unitCost = 50 ∧ cost = pies * unitCost ∧ profit + cost = revenue
def CoffeeSupply (pounds perPound total perDay days : ℕ) : Prop :=
  pounds = 3 ∧ perPound = 40 ∧ total = pounds * perPound ∧ perDay = 3 ∧ total = perDay * days
def FenceReplacement (short long perimeter replaced : ℕ) : Prop :=
  long = 3 * short ∧ perimeter = 2 * short + 2 * long ∧ perimeter = 640 ∧ replaced = short
def ParkingSearch (rowsG carsG rowsH carsH total rate minutes : ℕ) : Prop :=
  rowsG = 15 ∧ carsG = 10 ∧ rowsH = 20 ∧ carsH = 9 ∧ total = rowsG * carsG + rowsH * carsH ∧ rate = 11 ∧ total = rate * minutes
def FutureAge (bush gap matt years future : ℕ) : Prop :=
  bush = 12 ∧ gap = 3 ∧ matt = bush + gap ∧ years = 10 ∧ future = matt + years
end LemmaWeave.Problems.GSM8K.Daily0914E
