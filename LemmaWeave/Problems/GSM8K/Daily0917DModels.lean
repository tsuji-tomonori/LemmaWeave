import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0917D

def JuiceOrders (members lemon remaining mango orange : Nat) : Prop :=
  members = 30 ∧ 5 * lemon = 2 * members ∧ lemon + remaining = members ∧
  3 * mango = remaining ∧ mango + orange = remaining

def AppleAverage (maggie kelsey people average total layla : Nat) : Prop :=
  maggie = 40 ∧ kelsey = 28 ∧ people = 3 ∧ average = 30 ∧
  total = people * average ∧ maggie + kelsey + layla = total

def SneakerCost
    (lawns lawnPay figures figurePay hours hourly mowing figureIncome jobIncome total : Nat) : Prop :=
  lawns = 3 ∧ lawnPay = 8 ∧ figures = 2 ∧ figurePay = 9 ∧ hours = 10 ∧ hourly = 5 ∧
  mowing = lawns * lawnPay ∧ figureIncome = figures * figurePay ∧
  jobIncome = hours * hourly ∧ total = mowing + figureIncome + jobIncome

/-- 招待した親族の各組が2人とも出席し、両家の招待客は重ならないという読み。 -/
def WeddingFriends
    (reception couplesEach peoplePerCouple brideFamily groomFamily friends : Nat) : Prop :=
  reception = 180 ∧ couplesEach = 20 ∧ peoplePerCouple = 2 ∧
  brideFamily = couplesEach * peoplePerCouple ∧
  groomFamily = couplesEach * peoplePerCouple ∧
  brideFamily + groomFamily + friends = reception

def CombinedWeight
    (jim steveLighter stanHeavier steve stan total : Nat) : Prop :=
  jim = 110 ∧ steveLighter = 8 ∧ stanHeavier = 5 ∧
  steve + steveLighter = jim ∧ stan = steve + stanHeavier ∧
  total = jim + steve + stan

/-- ボクシング1回1.5時間を3 half-hoursとして整数で表す。 -/
def BoxingTraining
    (strengthSessions strengthHours strengthTotal boxingSessions boxingHalfHoursEach
      boxingHalfHours boxingHours totalHours : Nat) : Prop :=
  strengthSessions = 3 ∧ strengthHours = 1 ∧
  strengthTotal = strengthSessions * strengthHours ∧ boxingSessions = 4 ∧
  boxingHalfHoursEach = 3 ∧ boxingHalfHours = boxingSessions * boxingHalfHoursEach ∧
  2 * boxingHours = boxingHalfHours ∧ totalHours = strengthTotal + boxingHours

/-- 30%の昇給は1年終了時に一度だけ行われ、2年目と3年目は同じ月給という読み。 -/
def SalaryEarnings
    (monthly months firstYear increasePercent percentBase increase laterMonthly
      laterYears laterTotal total : Nat) : Prop :=
  monthly = 6000 ∧ months = 12 ∧ firstYear = monthly * months ∧
  increasePercent = 30 ∧ percentBase = 100 ∧
  percentBase * increase = increasePercent * monthly ∧
  laterMonthly = monthly + increase ∧ laterYears = 2 ∧
  laterTotal = laterMonthly * months * laterYears ∧ total = firstYear + laterTotal

def TicketCost
    (adults adultPrice children childPrice adultCost childCost total : Nat) : Prop :=
  adults = 3 ∧ adultPrice = 12 ∧ children = 3 ∧ childPrice = 10 ∧
  adultCost = adults * adultPrice ∧ childCost = children * childPrice ∧
  total = adultCost + childCost

def JoggingCalories
    (lapsPerDay feetPerLap days feetPerDay totalFeet feetPerCalorie calories : Nat) : Prop :=
  lapsPerDay = 5 ∧ feetPerLap = 100 ∧ days = 5 ∧
  feetPerDay = lapsPerDay * feetPerLap ∧ totalFeet = feetPerDay * days ∧
  feetPerCalorie = 25 ∧ calories * feetPerCalorie = totalFeet

/-- 毎月、増量直後の192ポンドの1/8である24ポンドを固定量として失う読み。 -/
def WeightLossFixed
    (start gain afterGain monthlyLoss months final less : ℚ) : Prop :=
  start = 156 ∧ gain = 36 ∧ afterGain = start + gain ∧
  monthlyLoss = afterGain / 8 ∧ months = 3 ∧
  final = afterGain - months * monthlyLoss ∧ less = start - final

/-- 各月の開始時点の体重の1/8を失い、7/8を3回掛ける通常の複利的な読み。 -/
def WeightLossCompound
    (start gain afterGain retain first second third less : ℚ) : Prop :=
  start = 156 ∧ gain = 36 ∧ afterGain = start + gain ∧ retain = 7 / 8 ∧
  first = retain * afterGain ∧ second = retain * first ∧ third = retain * second ∧
  less = start - third

end LemmaWeave.Problems.GSM8K.Daily0917D
