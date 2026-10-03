import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0915A

def CrackerSandwich
    (boxes sleeves perSleeve crackersPerSandwich sandwichesPerNight crackersPerNight total nights : Nat) : Prop :=
  boxes = 5 ∧ sleeves = 4 ∧ perSleeve = 28 ∧ crackersPerSandwich = 2 ∧
  sandwichesPerNight = 5 ∧ crackersPerNight = crackersPerSandwich * sandwichesPerNight ∧
  total = boxes * sleeves * perSleeve ∧ total = crackersPerNight * nights

def CrackerLiteral (boxes sleeves perSleeve crackersPerNight total nights : Nat) : Prop :=
  boxes = 5 ∧ sleeves = 4 ∧ perSleeve = 28 ∧ crackersPerNight = 5 ∧
  total = boxes * sleeves * perSleeve ∧ total = crackersPerNight * nights

def ElephantFlow (start hoursOut rateOut left final hoursIn entered rateIn : Nat) : Prop :=
  start = 30000 ∧ hoursOut = 4 ∧ rateOut = 2880 ∧
  left + hoursOut * rateOut = start ∧ final = 28980 ∧ left + entered = final ∧
  hoursIn = 7 ∧ entered = hoursIn * rateIn

def WeeklyPills (insulin pressure anticonvulsant daily days weekly : Nat) : Prop :=
  insulin = 2 ∧ pressure = 3 ∧ anticonvulsant = 2 * pressure ∧
  daily = insulin + pressure + anticonvulsant ∧ days = 7 ∧ weekly = days * daily

def TeacherGift (originalFriends remainingFriends increase originalShare newShare cost : Nat) : Prop :=
  originalFriends = 10 ∧ remainingFriends = 6 ∧ increase = 8 ∧
  newShare = originalShare + increase ∧ cost = originalFriends * originalShare ∧
  cost = remainingFriends * newShare

def PoolMoney (earnedCents feeCents people costCents leftCents leftDollars : Nat) : Prop :=
  earnedCents = 3000 ∧ feeCents = 250 ∧ people = 10 ∧ costCents = people * feeCents ∧
  leftCents + costCents = earnedCents ∧ leftCents = 100 * leftDollars

def WidgetReference
    (samMinutes jackMinutes shiftMinutes total sam jack tony tonyPerWidget : Nat) : Prop :=
  samMinutes = 360 ∧ jackMinutes = 240 ∧ shiftMinutes = 480 ∧ total = 68 ∧
  samMinutes = 10 * sam ∧ jackMinutes = 15 * jack ∧
  total = sam + jack + tony ∧ shiftMinutes = tonyPerWidget * tony

def WidgetCombined
    (togetherMinutes samSoloMinutes shiftMinutes total together samSolo tony tonyPerWidget : Nat) : Prop :=
  togetherMinutes = 240 ∧ samSoloMinutes = 120 ∧ shiftMinutes = 480 ∧ total = 68 ∧
  2 * togetherMinutes = 15 * together ∧ samSoloMinutes = 10 * samSolo ∧
  total = together + samSolo + tony ∧ shiftMinutes = tonyPerWidget * tony

def BackpackThirdPounds
    (water food gear waterPerHour foodPerHour hours used remaining finalPounds : Nat) : Prop :=
  water = 60 ∧ food = 30 ∧ gear = 60 ∧ waterPerHour = 6 ∧ foodPerHour = 2 ∧
  hours = 6 ∧ used = hours * (waterPerHour + foodPerHour) ∧
  remaining + used = water + food + gear ∧ remaining = 3 * finalPounds

def Firewood (kimberley houston total ela : Nat) : Prop :=
  kimberley = 10 ∧ houston = 12 ∧ total = 35 ∧ kimberley + houston + ela = total

def MovieProfit (opening gross keptPercent kept cost profit : Nat) : Prop :=
  opening = 120 ∧ 2 * gross = 7 * opening ∧ keptPercent = 60 ∧
  100 * kept = keptPercent * gross ∧ cost = 60 ∧ profit + cost = kept

def AverageAge (kimiko omi arlette total average : Nat) : Prop :=
  kimiko = 28 ∧ omi = 2 * kimiko ∧ 4 * arlette = 3 * kimiko ∧
  total = kimiko + omi + arlette ∧ total = 3 * average

end LemmaWeave.Problems.GSM8K.Daily0915A
