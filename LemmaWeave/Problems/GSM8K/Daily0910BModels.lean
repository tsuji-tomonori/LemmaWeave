import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0910B

def MovieTickets (monday wednesday saturday total : ℕ) : Prop :=
  monday = 5 ∧ wednesday = 2 * monday ∧ saturday = 5 * monday ∧
  total = wednesday + saturday

/-- 3区間の所要時間が等しいため、時間で重み付けした平均は3速度の算術平均になる。 -/
def DuneBuggyAverage (flat downhill uphill speedSum average : ℕ) : Prop :=
  flat = 60 ∧ downhill = flat + 12 ∧ uphill + 18 = flat ∧
  speedSum = flat + downhill + uphill ∧ 3 * average = speedSum

def SugarSale (packets gramsPerPacket totalGrams gramsPerKilogram kilograms : ℕ) : Prop :=
  packets = 20 ∧ gramsPerPacket = 100 ∧ totalGrams = packets * gramsPerPacket ∧
  gramsPerKilogram = 1000 ∧ kilograms * gramsPerKilogram = totalGrams

def CarReplacement (oldValue salePercent salePrice stickerPrice purchasePercent purchasePrice outOfPocket : ℕ) : Prop :=
  oldValue = 20000 ∧ salePercent = 80 ∧ 100 * salePrice = salePercent * oldValue ∧
  stickerPrice = 30000 ∧ purchasePercent = 90 ∧
  100 * purchasePrice = purchasePercent * stickerPrice ∧
  outOfPocket = purchasePrice - salePrice

/-- 金額は端数を避けてセントで表す。 -/
def FlowerPurchase
    (pansies pansyPrice pansyCost hydrangeaCost petunias petuniaPrice petuniaCost
     subtotal discountPercent discount paid total change : ℕ) : Prop :=
  pansies = 5 ∧ pansyPrice = 250 ∧ pansyCost = pansies * pansyPrice ∧
  hydrangeaCost = 1250 ∧ petunias = 5 ∧ petuniaPrice = 100 ∧
  petuniaCost = petunias * petuniaPrice ∧
  subtotal = pansyCost + hydrangeaCost + petuniaCost ∧ discountPercent = 10 ∧
  100 * discount = discountPercent * subtotal ∧ total = subtotal - discount ∧
  paid = 5000 ∧ change = paid - total

def DolphinStickers
    (initial friends countPerFriend friendsTotal mandyExtra mandy justinLess justin totalGiven left : ℕ) : Prop :=
  initial = 72 ∧ friends = 3 ∧ countPerFriend = 4 ∧
  friendsTotal = friends * countPerFriend ∧ mandyExtra = 2 ∧
  mandy = friendsTotal + mandyExtra ∧ justinLess = 10 ∧
  justin + justinLess = mandy ∧ totalGiven = friendsTotal + mandy + justin ∧
  left = initial - totalGiven

def SemesterBooks (budget textbooks afterTextbooks supplies left : ℕ) : Prop :=
  budget = 960 ∧ 2 * textbooks = budget ∧ afterTextbooks = budget - textbooks ∧
  4 * supplies = afterTextbooks ∧ left = afterTextbooks - supplies

def TreeGrowth
    (height2017 growth2018 height2018 growth2019 height2019 totalGrowth : ℕ) : Prop :=
  height2017 = 100 ∧ 100 * growth2018 = 10 * height2017 ∧
  height2018 = height2017 + growth2018 ∧
  100 * growth2019 = 10 * height2018 ∧
  height2019 = height2018 + growth2019 ∧ totalGrowth = height2019 - height2017

def ShoppingTotal
    (lisaShirts lisaJeans lisaCoats lisaTotal carlyShirts carlyJeans carlyCoats carlyTotal total : ℕ) : Prop :=
  lisaShirts = 40 ∧ 2 * lisaJeans = lisaShirts ∧ lisaCoats = 2 * lisaShirts ∧
  lisaTotal = lisaShirts + lisaJeans + lisaCoats ∧
  4 * carlyShirts = lisaShirts ∧ carlyJeans = 3 * lisaJeans ∧
  4 * carlyCoats = lisaCoats ∧ carlyTotal = carlyShirts + carlyJeans + carlyCoats ∧
  total = lisaTotal + carlyTotal

def PoultryAfterWeek
    (days chickens turkeys guinea chickenDaily turkeyDaily guineaDaily
     chickensLeft turkeysLeft guineaLeft totalLeft : ℕ) : Prop :=
  days = 7 ∧ chickens = 300 ∧ turkeys = 200 ∧ guinea = 80 ∧
  chickenDaily = 20 ∧ turkeyDaily = 8 ∧ guineaDaily = 5 ∧
  chickensLeft = chickens - days * chickenDaily ∧
  turkeysLeft = turkeys - days * turkeyDaily ∧
  guineaLeft = guinea - days * guineaDaily ∧
  totalLeft = chickensLeft + turkeysLeft + guineaLeft

end LemmaWeave.Problems.GSM8K.Daily0910B
