import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0911E

def ParkingSearch
    (gRows gPerRow gCars hRows hPerRow hCars total rate minutes : ℕ) : Prop :=
  gRows = 15 ∧ gPerRow = 10 ∧ gCars = gRows * gPerRow ∧
  hRows = 20 ∧ hPerRow = 9 ∧ hCars = hRows * hPerRow ∧
  total = gCars + hCars ∧ rate = 11 ∧ total = rate * minutes

def MattAge (bush difference matt years future : ℕ) : Prop :=
  bush = 12 ∧ difference = 3 ∧ matt = bush + difference ∧
  years = 10 ∧ future = matt + years

/-- 長さを8分の1インチ単位で表し、1/4インチ＝8マイルの比例を整数式にする。 -/
def MapDistance
    (quarterEighths milesPerQuarter wholeInches extraEighths mapEighths actual : ℕ) : Prop :=
  quarterEighths = 2 ∧ milesPerQuarter = 8 ∧ wholeInches = 3 ∧ extraEighths = 3 ∧
  mapEighths = 8 * wholeInches + extraEighths ∧
  actual * quarterEighths = mapEighths * milesPerQuarter

/-- 金額はセント。売上から計量スプーン2組の代金を引く。 -/
def SalesRemaining
    (cookies cookiePrice cookieRevenue cupcakes cupcakePrice cupcakeRevenue totalRevenue
     spoonSets spoonPrice spoonCost remaining dollars : ℕ) : Prop :=
  cookies = 40 ∧ cookiePrice = 80 ∧ cookieRevenue = cookies * cookiePrice ∧
  cupcakes = 30 ∧ cupcakePrice = 200 ∧ cupcakeRevenue = cupcakes * cupcakePrice ∧
  totalRevenue = cookieRevenue + cupcakeRevenue ∧ spoonSets = 2 ∧ spoonPrice = 650 ∧
  spoonCost = spoonSets * spoonPrice ∧ totalRevenue = spoonCost + remaining ∧
  remaining = 100 * dollars

def HeightDifference (anne sister bellaMultiple bella difference : ℕ) : Prop :=
  anne = 80 ∧ anne = 2 * sister ∧ bellaMultiple = 3 ∧
  bella = bellaMultiple * anne ∧ bella = sister + difference

/-- 40%は `100 * classA = 40 * total` という整数の比例式で表す。 -/
def ClassC (total percent classA gap classB classC : ℕ) : Prop :=
  total = 80 ∧ percent = 40 ∧ 100 * classA = percent * total ∧
  gap = 21 ∧ classA = classB + gap ∧ total = classA + classB + classC

def ShadowLength (hours feetPerHour feet inchesPerFoot inches : ℕ) : Prop :=
  hours = 6 ∧ feetPerHour = 5 ∧ feet = hours * feetPerHour ∧
  inchesPerFoot = 12 ∧ inches = feet * inchesPerFoot

/-- 金額はセント。36個を3種類へ均等に分け、スイカ1個はリンゴ4個分。 -/
def ApplePrice
    (totalFruits kinds eachKind orangePrice orangeCost bill otherCost applePrice
     watermelonPrice dollars : ℕ) : Prop :=
  totalFruits = 36 ∧ kinds = 3 ∧ totalFruits = kinds * eachKind ∧
  orangePrice = 50 ∧ orangeCost = eachKind * orangePrice ∧
  bill = 6600 ∧ bill = orangeCost + otherCost ∧
  watermelonPrice = 4 * applePrice ∧
  otherCost = eachKind * applePrice + eachKind * watermelonPrice ∧
  applePrice = 100 * dollars

def BasketCapacity
    (jackCapacity emptySpaces current multiplier jillCapacity times : ℕ) : Prop :=
  jackCapacity = 12 ∧ emptySpaces = 4 ∧ jackCapacity = current + emptySpaces ∧
  multiplier = 2 ∧ jillCapacity = multiplier * jackCapacity ∧
  jillCapacity = current * times

/-- 金額はセント。木の本数、リンゴ数、売上の順に数える。 -/
def OrchardRevenue
    (rows columns trees applesPerTree apples price revenue dollars : ℕ) : Prop :=
  rows = 3 ∧ columns = 4 ∧ trees = rows * columns ∧
  applesPerTree = 5 ∧ apples = trees * applesPerTree ∧
  price = 50 ∧ revenue = apples * price ∧ revenue = 100 * dollars

end LemmaWeave.Problems.GSM8K.Daily0911E
