import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0917E

def DanceTeam
    (initial quitters afterQuit newcomers current : Nat) : Prop :=
  initial = 25 ∧ quitters = 8 ∧ afterQuit + quitters = initial ∧
  newcomers = 13 ∧ current = afterQuit + newcomers

def DailyPay
    (weeklyHours workdays dailyHours hourly pay : Nat) : Prop :=
  weeklyHours = 35 ∧ workdays = 5 ∧ workdays * dailyHours = weeklyHours ∧
  hourly = 9 ∧ pay = hourly * dailyHours

/-- 問題に列挙された月曜から金曜の5日を観測期間とする平均と、
    土日を0インチと追加仮定した暦週7日の平均を分ける。 -/
def RainAverages
    (monday tuesday wednesday thursday friday total weekdayAverage weekAverage : ℚ) : Prop :=
  monday = 2 + 1 ∧ tuesday = 2 * monday ∧ wednesday = 0 ∧ thursday = 1 ∧
  friday = monday + tuesday + wednesday + thursday ∧
  total = monday + tuesday + wednesday + thursday + friday ∧
  weekdayAverage = total / 5 ∧ weekAverage = total / 7

/-- 「4個を各5ドルで売った」を文字どおり、売れたのは4個だけと読む。 -/
def PineappleLiteral
    (pineapples costEach ringsEach cost ringsMade ringsSold priceEach revenue profit : Nat) : Prop :=
  pineapples = 6 ∧ costEach = 3 ∧ ringsEach = 12 ∧ cost = pineapples * costEach ∧
  ringsMade = pineapples * ringsEach ∧ ringsSold = 4 ∧ priceEach = 5 ∧
  revenue = ringsSold * priceEach ∧ profit + cost = revenue

/-- 参考解答どおり、4個組を5ドルで全72個売ったという追加条件を置く。 -/
def PineappleBundles
    (pineapples costEach ringsEach cost ringsMade bundleSize bundles bundlePrice revenue profit : Nat) : Prop :=
  pineapples = 6 ∧ costEach = 3 ∧ ringsEach = 12 ∧ cost = pineapples * costEach ∧
  ringsMade = pineapples * ringsEach ∧ bundleSize = 4 ∧
  bundleSize * bundles = ringsMade ∧ bundlePrice = 5 ∧
  revenue = bundles * bundlePrice ∧ profit + cost = revenue

def BoutiqueDiscount
    (cash extraNum extraDen sticker discountPercent percentBase discount payment shortfall : Nat) : Prop :=
  cash = 500 ∧ extraNum = 2 ∧ extraDen = 5 ∧
  extraDen * (sticker - cash) = extraNum * cash ∧ cash ≤ sticker ∧
  discountPercent = 15 ∧ percentBase = 100 ∧
  percentBase * discount = discountPercent * sticker ∧
  payment + discount = sticker ∧ shortfall + cash = payment

def BookEarnings
    (topPrice abcPrice topCount abcCount topRevenue abcRevenue difference : Nat) : Prop :=
  topPrice = 8 ∧ abcPrice = 23 ∧ topCount = 13 ∧ abcCount = 4 ∧
  topRevenue = topCount * topPrice ∧ abcRevenue = abcCount * abcPrice ∧
  difference + abcRevenue = topRevenue

def TriangleSide
    (perimeter first second knownSum third : Nat) : Prop :=
  perimeter = 160 ∧ first = 40 ∧ second = 50 ∧ knownSum = first + second ∧
  knownSum + third = perimeter

def ErrandBlocks
    (store gallery workLeg total walked remaining : Nat) : Prop :=
  store = 11 ∧ gallery = 6 ∧ workLeg = 8 ∧ total = store + gallery + workLeg ∧
  walked = 5 ∧ remaining + walked = total

def JudgeAges
    (total underPercent middlePercent percentBase under middle over : Nat) : Prop :=
  total = 40 ∧ underPercent = 10 ∧ middlePercent = 60 ∧ percentBase = 100 ∧
  percentBase * under = underPercent * total ∧
  percentBase * middle = middlePercent * total ∧ under + middle + over = total

def PartyExpenses
    (attendees contributionEach contributions surplus expenses : Nat) : Prop :=
  attendees = 50 ∧ contributionEach = 100 ∧
  contributions = attendees * contributionEach ∧ surplus = 500 ∧
  expenses + surplus = contributions

end LemmaWeave.Problems.GSM8K.Daily0917E
