import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Next

/-- 黄10本。紫は黄より80%多く、緑は黄と紫の合計の25%。 -/
def Flowers (purple green total : ℚ) : Prop :=
  purple = 10 + (80/100)*10 ∧ green = (25/100)*(10+purple) ∧ total = 10+purple+green

def Pizza (large small total : ℕ) : Prop :=
  large = 2*16 ∧ small = 2*8 ∧ total = large+small

/-- 最初の2ポンドは箱を含む秤の総重量。箱の重さをもう一度加えない。 -/
def Parcel (brownies more final : ℚ) : Prop :=
  brownies = 3*2 ∧ more = brownies+2 ∧ final = 2*more

/-- 既知の購入額と靴代と残金の和が元の予算。 -/
def Clothes (shoes : ℚ) : Prop :=
  30+46+38+11+18+shoes+16 = 200 ∧ 0 ≤ shoes

/-- 1日8時間までは通常賃金、それを超える2時間のみ割増。5日とも同じ勤務。 -/
def Overtime (extra rate regular premium daily weekly : ℚ) : Prop :=
  8+extra = 10 ∧ rate = 18+(1/2)*18 ∧ regular = 8*18 ∧
  premium = extra*rate ∧ daily = regular+premium ∧ weekly = 5*daily

end LemmaWeave.Problems.GSM8K.Next
