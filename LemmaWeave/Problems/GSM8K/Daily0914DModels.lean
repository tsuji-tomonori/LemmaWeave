import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0914D

def GroceryBuyers
    (dayBefore yesterday today total : ℕ) : Prop :=
  dayBefore = 50 ∧ 2 * yesterday = dayBefore ∧
  today = yesterday + 40 ∧ total = dayBefore + yesterday + today

def PantsPrice
    (wholesale markup retail : ℚ) : Prop :=
  retail = 36 ∧ markup = (80 / 100) * wholesale ∧
  retail = wholesale + markup

def AppleDifference
    (kayla caleb suraya difference : ℕ) : Prop :=
  kayla = 20 ∧ caleb + 5 = kayla ∧ suraya = caleb + 12 ∧
  difference + kayla = suraya

def CDLengths
    (shortCount shortEach last combinedShort combined : ℚ) : Prop :=
  shortCount = 2 ∧ shortEach = 3 / 2 ∧ last = 2 * shortEach ∧
  combinedShort = shortCount * shortEach ∧
  combined = combinedShort + last

/-- 平均生産数を毎日すべて表示価格で販売し、費用を差し引かない売上モデル。金額はセント。 -/
def BakeryRevenue
    (cupcakes cupcakePrice cookies cookiePrice biscuits biscuitPrice
     cupcakeRevenue cookieRevenue biscuitRevenue daily days total : ℕ) : Prop :=
  cupcakes = 20 ∧ cupcakePrice = 150 ∧ cookies = 10 ∧ cookiePrice = 200 ∧
  biscuits = 20 ∧ biscuitPrice = 100 ∧
  cupcakeRevenue = cupcakes * cupcakePrice ∧
  cookieRevenue = cookies * cookiePrice ∧
  biscuitRevenue = biscuits * biscuitPrice ∧
  daily = cupcakeRevenue + cookieRevenue + biscuitRevenue ∧
  days = 5 ∧ total = days * daily

def PianoCost
    (piano lessons pricePerLesson listPrice discount lessonCost total : ℕ) : Prop :=
  piano = 500 ∧ lessons = 20 ∧ pricePerLesson = 40 ∧
  listPrice = lessons * pricePerLesson ∧ 4 * discount = listPrice ∧
  lessonCost + discount = listPrice ∧ total = piano + lessonCost

def PatrickAge
    (robertNow robertFuture years patrick : ℕ) : Prop :=
  robertFuture = 30 ∧ years = 2 ∧ robertNow + years = robertFuture ∧
  2 * patrick = robertNow

def WorkMinutes
    (monday tuesday wednesday difference : ℕ) : Prop :=
  monday = 450 ∧ 2 * tuesday = monday ∧ wednesday = 300 ∧
  difference + tuesday = wednesday

/-- 同じ4枚組を洗う時間が常に10分で、組ごとに順次洗うモデル。 -/
def WindowWashing
    (windowsPerGroup minutesPerGroup totalWindows groups totalMinutes : ℕ) : Prop :=
  windowsPerGroup = 4 ∧ minutesPerGroup = 10 ∧ totalWindows = 64 ∧
  groups * windowsPerGroup = totalWindows ∧
  totalMinutes = groups * minutesPerGroup

def CupcakesLeft
    (total remaining eaten left : ℕ) : Prop :=
  total = 60 ∧ 5 * remaining = total ∧ eaten = 3 ∧
  left + eaten = remaining

end LemmaWeave.Problems.GSM8K.Daily0914D
