import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0912B

def MarbleCounts (katrina twiceKatrina amanda mabel difference : ℕ) : Prop :=
  mabel = 85 ∧ mabel = 5 * katrina ∧ twiceKatrina = 2 * katrina ∧
  amanda + 12 = twiceKatrina ∧ mabel = amanda + difference

def SalaryRaise
    (base hanselPercent hanselRaise hanselTotal gretelPercent gretelRaise gretelTotal
     difference : ℕ) : Prop :=
  base = 30000 ∧ hanselPercent = 10 ∧ 100 * hanselRaise = hanselPercent * base ∧
  hanselTotal = base + hanselRaise ∧ gretelPercent = 15 ∧
  100 * gretelRaise = gretelPercent * base ∧ gretelTotal = base + gretelRaise ∧
  gretelTotal = hanselTotal + difference

def ReadingSeries
    (totalBooks pagesPerBook firstMonth afterFirst secondMonth readBooks remainingBooks
     remainingPages : ℕ) : Prop :=
  totalBooks = 14 ∧ pagesPerBook = 200 ∧ firstMonth = 4 ∧
  totalBooks = firstMonth + afterFirst ∧ 2 * secondMonth = afterFirst ∧
  readBooks = firstMonth + secondMonth ∧ totalBooks = readBooks + remainingBooks ∧
  remainingPages = remainingBooks * pagesPerBook

def PuppyPrices
    (total saleCount salePrice saleCost otherCount otherCost eachOther : ℕ) : Prop :=
  total = 800 ∧ saleCount = 3 ∧ salePrice = 150 ∧ saleCost = saleCount * salePrice ∧
  otherCount = 2 ∧ total = saleCost + otherCost ∧ otherCost = otherCount * eachOther

/-- 家と納屋の双方に同じ平方フィート単価を適用する条件付きモデル。 -/
def PropertyPrice (houseArea barnArea totalArea rate totalPrice : ℕ) : Prop :=
  houseArea = 2400 ∧ barnArea = 1000 ∧ totalArea = houseArea + barnArea ∧
  rate = 98 ∧ totalPrice = totalArea * rate

def DoublingSavings (jan feb mar apr may jun total : ℕ) : Prop :=
  jan = 2 ∧ feb = 2 * jan ∧ mar = 2 * feb ∧ apr = 2 * mar ∧
  may = 2 * apr ∧ jun = 2 * may ∧ total = jan + feb + mar + apr + may + jun

/-- 小数のドル額を整数のセントへ直して計算する。 -/
def CardCost
    (firstCents secondCents pairCents count totalCents centsPerDollar dollars : ℕ) : Prop :=
  firstCents = 125 ∧ secondCents = 175 ∧ pairCents = firstCents + secondCents ∧
  count = 6 ∧ totalCents = count * pairCents ∧ centsPerDollar = 100 ∧
  totalCents = dollars * centsPerDollar

def AccountBalances (betty divisor eachGina count combined : ℕ) : Prop :=
  betty = 3456 ∧ divisor = 4 ∧ divisor * eachGina = betty ∧
  count = 2 ∧ combined = count * eachGina

/-- 「25 times more」の曖昧さを、全体倍率を外から与えて表す。 -/
def StickerScale (totalMultiplier kristoff riku : ℕ) : Prop :=
  kristoff = 85 ∧ riku = totalMultiplier * kristoff

def LotteryPrize
    (first second third fourth fifth revenue profit prize : ℕ) : Prop :=
  first = 1 ∧ second = first + 1 ∧ third = second + 1 ∧
  fourth = third + 1 ∧ fifth = fourth + 1 ∧
  revenue = first + second + third + fourth + fifth ∧ profit = 4 ∧
  revenue = profit + prize

end LemmaWeave.Problems.GSM8K.Daily0912B
