import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0907B

def ReadingRate (minutes hours : ℚ) : Prop :=
  minutes * 8 = 120 * 20 ∧ hours * 60 = minutes

def Empire (sale margin units gross net : ℚ) : Prop :=
  sale = 2.5 * 6 ∧ margin = sale - 6 ∧ units = 500 * 5 * 20 ∧
  gross = margin * units ∧ net = gross - 2000

def PartnerShare (part mike remaining : ℚ) : Prop :=
  part * 5 = 2500 ∧ mike = 2 * part ∧ remaining = mike - 200

def Hats (pink green total : ℕ) : Prop :=
  pink + 4 + 6 = 26 ∧ green + 2 * 6 = 15 ∧ total = pink + green + 24

/-- 復路時間を別変数にした一般形。原文は往路しか数値を示さない。 -/
def Commute (walkReturn bikeReturn total : ℚ) : Prop :=
  0 ≤ walkReturn ∧ 0 ≤ bikeReturn ∧
  total = 3 * (2 + walkReturn) + 2 * (1 + bikeReturn)

def Cycling (workDaily workWeekly allMiles hours : ℚ) : Prop :=
  workDaily = 2 * 20 ∧ workWeekly = 5 * workDaily ∧
  allMiles = workWeekly + 200 ∧ hours * 25 = allMiles

def Stamps (truck rose total : ℕ) : Prop :=
  truck = 11 + 9 ∧ rose + 13 = truck ∧ total = 11 + truck + rose

/-- 食物連鎖を「必要な餌数の換算」と読む追加規約。 -/
def FoodChainEquivalent (snakes birds beetles : ℕ) : Prop :=
  snakes = 6 * 5 ∧ birds = snakes * 3 ∧ beetles = birds * 12

/-- 実際に食べられる甲虫数は、生存する鳥の数が別途必要。 -/
def LiteralBeetles (livingBirds beetles : ℕ) : Prop := beetles = livingBirds * 12

def LastNames (jamie bobbie samantha : ℕ) : Prop :=
  jamie = 4 ∧ 2 ≤ bobbie ∧ bobbie - 2 = 2 * jamie ∧ samantha + 3 = bobbie

def Tops (shorts shoes topsTotal each : ℚ) : Prop :=
  shorts = 5 * 7 ∧ shoes = 2 * 10 ∧ shorts + shoes + topsTotal = 75 ∧
  topsTotal = 4 * each

end LemmaWeave.Problems.GSM8K.Daily0907B
