import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0911D

/-- 分は120、1時間は60分。一定速度50 km/hで進む時間と距離。 -/
def FoxRun (minutes minutesPerHour hours speed distance : ℕ) : Prop :=
  minutes = 120 ∧ minutesPerHour = 60 ∧ minutes = hours * minutesPerHour ∧
  speed = 50 ∧ distance = speed * hours

def FruitTotal
    (orangeCrates orangesPerCrate oranges nectarineBoxes nectarinesPerBox nectarines total : ℕ) : Prop :=
  orangeCrates = 12 ∧ orangesPerCrate = 150 ∧
  oranges = orangeCrates * orangesPerCrate ∧
  nectarineBoxes = 16 ∧ nectarinesPerBox = 30 ∧
  nectarines = nectarineBoxes * nectarinesPerBox ∧ total = oranges + nectarines

/-- 子どもの人数比5:7を、全比12に対する男子5の比例式で表す。 -/
def FamilyShare
    (boyParts girlParts totalParts totalChildren boys money each : ℕ) : Prop :=
  boyParts = 5 ∧ girlParts = 7 ∧ totalParts = boyParts + girlParts ∧
  totalChildren = 180 ∧ boys * totalParts = totalChildren * boyParts ∧
  money = 3900 ∧ money = boys * each

def Painkillers
    (firstDose firstTimes firstDaily firstDays firstUsed nextDaily nextDays nextUsed
     finalDose used remaining : ℕ) : Prop :=
  firstDose = 2 ∧ firstTimes = 3 ∧ firstDaily = firstDose * firstTimes ∧
  firstDays = 2 ∧ firstUsed = firstDaily * firstDays ∧
  2 * nextDaily = firstDaily ∧ nextDays = 3 ∧ nextUsed = nextDaily * nextDays ∧
  finalDose = 2 ∧ used = firstUsed + nextUsed + finalDose ∧ 50 = used + remaining

/-- 金額はセント。18か月に月2回、各号25セント引き。 -/
def MagazineDiscount
    (months issuesPerMonth issues discountPerIssue discount normal promo dollars : ℕ) : Prop :=
  months = 18 ∧ issuesPerMonth = 2 ∧ issues = months * issuesPerMonth ∧
  discountPerIssue = 25 ∧ discount = issues * discountPerIssue ∧
  normal = 3400 ∧ normal = promo + discount ∧ discount = 100 * dollars

def Dandelions
    (mom sister grandmother dog given original remaining friends each : ℕ) : Prop :=
  mom = 3 ∧ sister = 3 ∧ grandmother = 5 ∧ dog = 2 ∧
  given = mom + sister + grandmother + dog ∧ original = 40 ∧
  original = given + remaining ∧ friends = 3 ∧ remaining = friends * each

/-- 20%増分は、端数のない整数関係 `100 * extra = 20 * base` で表す。 -/
def LoweringWeight (plates perPlate base percent extra lowered : ℕ) : Prop :=
  plates = 10 ∧ perPlate = 30 ∧ base = plates * perPlate ∧
  percent = 20 ∧ 100 * extra = percent * base ∧ lowered = base + extra

/-- 金額はセント。売上から12枚のパイの製造費を引いた利益を求める。 -/
def PieProfit
    (pies piecesPerPie pieces price revenue costPerPie cost profit dollars : ℕ) : Prop :=
  pies = 12 ∧ piecesPerPie = 3 ∧ pieces = pies * piecesPerPie ∧
  price = 400 ∧ revenue = pieces * price ∧ costPerPie = 50 ∧
  cost = pies * costPerPie ∧ revenue = cost + profit ∧ profit = 100 * dollars

def CoffeeDays (pounds cupsPerPound totalCups daily days : ℕ) : Prop :=
  pounds = 3 ∧ cupsPerPound = 40 ∧ totalCups = pounds * cupsPerPound ∧
  daily = 3 ∧ totalCups = daily * days

def FenceRepair (short long perimeter : ℕ) : Prop :=
  long = 3 * short ∧ perimeter = 2 * short + 2 * long ∧ perimeter = 640

end LemmaWeave.Problems.GSM8K.Daily0911D
