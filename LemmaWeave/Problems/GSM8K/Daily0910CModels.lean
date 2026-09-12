import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0910C

def CovidCases
    (initial new2 recovered2 after2 new3 recovered3 beforeRecovery3 after3 : ℕ) : Prop :=
  initial = 2000 ∧ new2 = 500 ∧ recovered2 = 50 ∧
  after2 = initial + new2 - recovered2 ∧ new3 = 1500 ∧ recovered3 = 200 ∧
  beforeRecovery3 = after2 + new3 ∧ after3 = beforeRecovery3 - recovered3

def TroutDifference (caleb multiplier dad difference : ℕ) : Prop :=
  caleb = 2 ∧ multiplier = 3 ∧ dad = multiplier * caleb ∧ difference = dad - caleb

def SnakeLengths
    (feet inchesPerFoot firstInches secondInches thirdInches totalInches : ℕ) : Prop :=
  feet = 2 ∧ inchesPerFoot = 12 ∧ firstInches = feet * inchesPerFoot ∧
  secondInches = 16 ∧ thirdInches = 10 ∧
  totalInches = firstInches + secondInches + thirdInches

/-- 「最後の箱は全部は使われていない」だけでは、最後の箱の未使用本数は1～24本。 -/
def CrayonUnused
    (perBox firstBoxes firstUnusedNum firstUnusedDen firstEach firstTotal
     otherBoxes otherUsedNum otherUsedDen otherUsedEach otherUnusedEach
     otherUnusedTotal lastUnused totalUnused : ℕ) : Prop :=
  perBox = 24 ∧ firstBoxes = 2 ∧ firstUnusedNum = 5 ∧ firstUnusedDen = 8 ∧
  firstUnusedDen * firstEach = firstUnusedNum * perBox ∧
  firstTotal = firstBoxes * firstEach ∧ otherBoxes = 2 ∧
  otherUsedNum = 2 ∧ otherUsedDen = 3 ∧
  otherUsedDen * otherUsedEach = otherUsedNum * perBox ∧
  otherUnusedEach = perBox - otherUsedEach ∧
  otherUnusedTotal = otherBoxes * otherUnusedEach ∧
  0 < lastUnused ∧ lastUnused ≤ perBox ∧
  totalUnused = firstTotal + otherUnusedTotal + lastUnused

def BrokenGlasses (david multiplier william total : ℕ) : Prop :=
  david = 2 ∧ multiplier = 4 ∧ william = multiplier * david ∧ total = david + william

/-- ベンチマーク慣行どおり `13 times older` を「13倍の年齢」と読むモデル。 -/
def HeroAgesMultiplicative (thor captain peter ironman extra : ℕ) : Prop :=
  thor = 1456 ∧ thor = 13 * captain ∧ captain = 7 * peter ∧
  extra = 32 ∧ ironman = peter + extra

/-- `13 times older` を「13倍だけ年上」、すなわち14倍の年齢と読むモデル。 -/
def HeroAgesLiteralOlder (thor captain peter ironman extra : ℕ) : Prop :=
  thor = 1456 ∧ thor = 14 * captain ∧ captain = 8 * peter ∧
  extra = 32 ∧ ironman = peter + extra

def DallasAge
    (dexterNow darcyNow darcyLast dallasLast dallasNow : ℕ) : Prop :=
  dexterNow = 8 ∧ darcyNow = 2 * dexterNow ∧ darcyLast = darcyNow - 1 ∧
  dallasLast = 3 * darcyLast ∧ dallasNow = dallasLast + 1

def ForestRodents
    (weeks foxes weasels rabbits weaselPerFox rabbitPerFox weeklyWeasels weeklyRabbits
     caughtWeasels caughtRabbits leftWeasels leftRabbits totalLeft : ℕ) : Prop :=
  weeks = 3 ∧ foxes = 3 ∧ weasels = 100 ∧ rabbits = 50 ∧
  weaselPerFox = 4 ∧ rabbitPerFox = 2 ∧
  weeklyWeasels = foxes * weaselPerFox ∧ weeklyRabbits = foxes * rabbitPerFox ∧
  caughtWeasels = weeks * weeklyWeasels ∧ caughtRabbits = weeks * weeklyRabbits ∧
  leftWeasels = weasels - caughtWeasels ∧ leftRabbits = rabbits - caughtRabbits ∧
  totalLeft = leftWeasels + leftRabbits

def AppleAverage
    (phones phonePrice phoneSales tablets tabletPrice tabletSales tvs tvPrice tvSales
     totalProducts totalSales average : ℕ) : Prop :=
  phones = 100 ∧ phonePrice = 1000 ∧ phoneSales = phones * phonePrice ∧
  tablets = 20 ∧ tabletPrice = 900 ∧ tabletSales = tablets * tabletPrice ∧
  tvs = 80 ∧ tvPrice = 200 ∧ tvSales = tvs * tvPrice ∧
  totalProducts = phones + tablets + tvs ∧
  totalSales = phoneSales + tabletSales + tvSales ∧
  average * totalProducts = totalSales

def SunflowerHeight (heightA percentBase percentA heightB : ℕ) : Prop :=
  heightA = 192 ∧ percentBase = 100 ∧ percentA = 120 ∧
  percentBase * heightA = percentA * heightB

end LemmaWeave.Problems.GSM8K.Daily0910C
