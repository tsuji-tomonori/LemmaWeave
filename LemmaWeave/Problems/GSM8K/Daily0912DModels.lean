import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0912D

def ShoppingChange
    (initial oranges apples candy spent remaining : ℕ) : Prop :=
  initial = 95 ∧ oranges = 14 ∧ apples = 25 ∧ candy = 6 ∧
  spent = oranges + apples + candy ∧ initial = spent + remaining

def AppleBags
    (geraldEach ratio pamEach total bags : ℕ) : Prop :=
  geraldEach = 40 ∧ ratio = 3 ∧ pamEach = ratio * geraldEach ∧
  total = 1200 ∧ total = bags * pamEach

def SugarRemaining
    (total bags each spilled remaining : ℚ) : Prop :=
  total = 24 ∧ bags = 4 ∧ total = bags * each ∧
  each = 2 * spilled ∧ total = spilled + remaining

def CrosswordAverage
    (weeks daysPerWeek days words wordsPerPuzzle : ℕ) : Prop :=
  weeks = 2 ∧ daysPerWeek = 7 ∧ days = weeks * daysPerWeek ∧
  words = 1050 ∧ words = days * wordsPerPuzzle

def TableSweets
    (total half extra jack remaining : ℕ) : Prop :=
  2 * half = total ∧ extra = 4 ∧ jack = half + extra ∧
  remaining = 7 ∧ total = jack + remaining

def DogCookies
    (morning bedtime daytime daily days total perBox boxes : ℚ) : Prop :=
  morning = 1 / 2 ∧ bedtime = 1 / 2 ∧ daytime = 2 ∧
  daily = morning + bedtime + daytime ∧ days = 30 ∧
  total = daily * days ∧ perBox = 45 ∧ total = boxes * perBox

def PrintPurchase
    (copies pages printed printRate printCost pens penRate penCost
     spent bills billValue paid change : ℚ) : Prop :=
  copies = 7 ∧ pages = 25 ∧ printed = copies * pages ∧
  printRate = 1 / 10 ∧ printCost = printed * printRate ∧
  pens = 7 ∧ penRate = 3 / 2 ∧ penCost = pens * penRate ∧
  spent = printCost + penCost ∧ bills = 2 ∧ billValue = 20 ∧
  paid = bills * billValue ∧ paid = spent + change

def NovelSurvey
    (total threeOrMore two one none : ℕ) : Prop :=
  total = 240 ∧ 6 * threeOrMore = total ∧
  100 * two = 35 * total ∧ 12 * one = 5 * total ∧
  total = threeOrMore + two + one + none

def WrappingPaper
    (first second third total : ℚ) : Prop :=
  first = 2 ∧ second = (3 / 4) * first ∧
  third = first + second ∧ total = first + second + third

/-- 10ポンド袋と12ポンド袋を任意に混ぜる場合も含む購入モデル。 -/
def FlourPurchase
    (tenPoundBags twelvePoundBags weight cost : ℕ) : Prop :=
  weight = 10 * tenPoundBags + 12 * twelvePoundBags ∧
  cost = 10 * tenPoundBags + 13 * twelvePoundBags

end LemmaWeave.Problems.GSM8K.Daily0912D
