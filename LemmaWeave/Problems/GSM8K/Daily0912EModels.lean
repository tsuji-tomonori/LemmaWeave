import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0912E

def IrrigationWater
    (beanRate bob brenda bernie total bobPercent : ℚ) : Prop :=
  beanRate = 2 * 20 ∧
  bob = 3 * 20 + 9 * 80 + 12 * beanRate ∧
  brenda = 6 * 20 + 7 * 80 + 14 * beanRate ∧
  bernie = 2 * 20 + 12 * 80 ∧
  total = bob + brenda + bernie ∧
  bobPercent = 100 * bob / total

def BookSavings
    (count price cost saved needed : ℕ) : Prop :=
  count = 8 ∧ price = 5 ∧ cost = count * price ∧
  saved = 13 ∧ cost = saved + needed

def AverageHeight
    (reese daisy parker total average : ℕ) : Prop :=
  reese = 60 ∧ daisy = reese + 8 ∧ parker + 4 = daisy ∧
  total = reese + daisy + parker ∧ total = 3 * average

def CheeseCalories
    (servings eaten remaining perServing calories : ℕ) : Prop :=
  servings = 16 ∧ eaten = 5 ∧ eaten + remaining = servings ∧
  perServing = 110 ∧ calories = remaining * perServing

def PaintMix
    (charcoalPerBatch waterPerBatch water batches charcoal : ℕ) : Prop :=
  charcoalPerBatch = 2 ∧ waterPerBatch = 30 ∧ water = 900 ∧
  water = batches * waterPerBatch ∧ charcoal = batches * charcoalPerBatch

def TypingOutput
    (wordsPerMinute minutesPerHour hoursPerDay days perHour perDay total : ℕ) : Prop :=
  wordsPerMinute = 50 ∧ minutesPerHour = 60 ∧
  perHour = wordsPerMinute * minutesPerHour ∧ hoursPerDay = 4 ∧
  perDay = perHour * hoursPerDay ∧ days = 7 ∧ total = perDay * days

def Payroll
    (days hoursPerDay monthlyHours warehouseCount warehouseRate warehousePay
     managerCount managerRate managerPay wages taxPercent tax total : ℕ) : Prop :=
  days = 25 ∧ hoursPerDay = 8 ∧ monthlyHours = days * hoursPerDay ∧
  warehouseCount = 4 ∧ warehouseRate = 15 ∧
  warehousePay = warehouseCount * monthlyHours * warehouseRate ∧
  managerCount = 2 ∧ managerRate = 20 ∧
  managerPay = managerCount * monthlyHours * managerRate ∧
  wages = warehousePay + managerPay ∧ taxPercent = 10 ∧
  100 * tax = taxPercent * wages ∧ total = wages + tax

def BusSeats
    (rows seatsPerRow capacity start firstOn firstOff afterFirst
     secondOn secondOff afterSecond empty : ℕ) : Prop :=
  rows = 23 ∧ seatsPerRow = 4 ∧ capacity = rows * seatsPerRow ∧
  start = 16 ∧ firstOn = 15 ∧ firstOff = 3 ∧
  afterFirst + firstOff = start + firstOn ∧
  secondOn = 17 ∧ secondOff = 10 ∧
  afterSecond + secondOff = afterFirst + secondOn ∧
  capacity = afterSecond + empty

def EmuFlock
    (headsPerEmu legsPerEmu unitsPerEmu count totalUnits : ℕ) : Prop :=
  headsPerEmu = 1 ∧ legsPerEmu = 2 ∧
  unitsPerEmu = headsPerEmu + legsPerEmu ∧
  totalUnits = 60 ∧ totalUnits = unitsPerEmu * count

def ToyCounts
    (bill halfBill extra hash total : ℕ) : Prop :=
  bill = 60 ∧ 2 * halfBill = bill ∧ extra = 9 ∧
  hash = halfBill + extra ∧ total = bill + hash

end LemmaWeave.Problems.GSM8K.Daily0912E
