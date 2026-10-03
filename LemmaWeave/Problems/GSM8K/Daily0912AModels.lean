import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0912A

/-- 平日・休日の日数を外から与える月間売上モデル。原文だけでは暦の内訳が決まらない。 -/
def RestaurantMonth
    (weekdays weekendDays weekdayRate weekendRate total : ℕ) : Prop :=
  weekdayRate = 600 ∧ weekendRate = 2 * weekdayRate ∧
  total = weekdays * weekdayRate + weekendDays * weekendRate

/-- 肩の高さは全身長から20%低く、Barryの地上での到達高を肩の高さへ加える。 -/
def ShoulderReach
    (larry reductionPercent shoulderPercent shoulder barryReach total : ℕ) : Prop :=
  larry = 5 ∧ reductionPercent = 20 ∧ shoulderPercent + reductionPercent = 100 ∧
  100 * shoulder = shoulderPercent * larry ∧ barryReach = 5 ∧
  total = shoulder + barryReach

/-- 1時間を60分へ統一し、各ジム日の追加時間を筋トレ時間の3分の1とする。 -/
def GymWeek
    (visits liftMinutes divisor extraMinutes visitMinutes weekMinutes minutesPerHour hours : ℕ) : Prop :=
  visits = 3 ∧ liftMinutes = 60 ∧ divisor = 3 ∧
  extraMinutes * divisor = liftMinutes ∧ visitMinutes = liftMinutes + extraMinutes ∧
  weekMinutes = visits * visitMinutes ∧ minutesPerHour = 60 ∧
  weekMinutes = hours * minutesPerHour

/-- 小麦粉を0.5kg単位で数える。7時間連続して10分ごとに1枚作る条件付きモデル。 -/
def PizzaFlour
    (hours minutesPerHour minutesPerPizza totalMinutes made sackHalfKg usedHalfKg
     leftHalfKg homePizzas : ℕ) : Prop :=
  hours = 7 ∧ minutesPerHour = 60 ∧ totalMinutes = hours * minutesPerHour ∧
  minutesPerPizza = 10 ∧ totalMinutes = made * minutesPerPizza ∧
  sackHalfKg = 44 ∧ usedHalfKg = made ∧ sackHalfKg = usedHalfKg + leftHalfKg ∧
  homePizzas = leftHalfKg

def BouquetAverage (first second third total count average : ℕ) : Prop :=
  first = 9 ∧ second = 14 ∧ third = 13 ∧ total = first + second + third ∧
  count = 3 ∧ total = count * average

def PogoMoney (saturday sunday previous earned price needed : ℕ) : Prop :=
  saturday = 18 ∧ 2 * sunday = saturday ∧ previous = 20 ∧
  earned = saturday + sunday + previous ∧ price = 60 ∧ price = earned + needed

/-- 通話料をセントで計算し、月に含める週数を外から与える。 -/
def PhoneBill
    (weeks minutesPerCall centsPerMinute callCost customersPerWeek weeklyCost
     monthlyCost centsPerDollar dollars : ℕ) : Prop :=
  minutesPerCall = 60 ∧ centsPerMinute = 5 ∧ callCost = minutesPerCall * centsPerMinute ∧
  customersPerWeek = 50 ∧ weeklyCost = customersPerWeek * callCost ∧
  monthlyCost = weeks * weeklyCost ∧ centsPerDollar = 100 ∧
  monthlyCost = dollars * centsPerDollar

def FlowerCost
    (roses lilies rosePrice lilyPrice roseCost lilyCost total : ℕ) : Prop :=
  roses = 20 ∧ 4 * lilies = 3 * roses ∧ rosePrice = 5 ∧
  lilyPrice = 2 * rosePrice ∧ roseCost = roses * rosePrice ∧
  lilyCost = lilies * lilyPrice ∧ total = roseCost + lilyCost

def CashDifference
    (oliverTwentyBills oliverFiveBills oliverTotal williamTenBills williamFiveBills
     williamTotal difference : ℕ) : Prop :=
  oliverTwentyBills = 10 ∧ oliverFiveBills = 3 ∧
  oliverTotal = oliverTwentyBills * 20 + oliverFiveBills * 5 ∧
  williamTenBills = 15 ∧ williamFiveBills = 4 ∧
  williamTotal = williamTenBills * 10 + williamFiveBills * 5 ∧
  oliverTotal = williamTotal + difference

/-- 30%短縮を、元の長さの30%を取り除く比例式で表す。 -/
def CommercialLength (original percent reduction final : ℕ) : Prop :=
  original = 30 ∧ percent = 30 ∧ 100 * reduction = percent * original ∧
  original = reduction + final

end LemmaWeave.Problems.GSM8K.Daily0912A
