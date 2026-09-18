import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0915C

def EnergyCaffeine
    (firstOunces firstCaffeine multiplier secondOunces secondCaffeine
      drinks pill total : ℚ) : Prop :=
  firstOunces = 12 ∧ firstCaffeine = 250 ∧ multiplier = 3 ∧
  secondOunces = 2 ∧
  secondCaffeine * firstOunces = firstCaffeine * multiplier * secondOunces ∧
  drinks = firstCaffeine + secondCaffeine ∧ pill = drinks ∧ total = drinks + pill

def DogWeight
    (puppy weekNine monthThree monthFive added adult : Nat) : Prop :=
  puppy = 6 ∧ weekNine = 2 * puppy ∧ monthThree = 2 * weekNine ∧
  monthFive = 2 * monthThree ∧ added = 30 ∧ adult = monthFive + added

def RiverDepth (mayDepth juneIncrease juneDepth julyMultiplier julyDepth : Nat) : Prop :=
  mayDepth = 5 ∧ juneIncrease = 10 ∧ juneDepth = mayDepth + juneIncrease ∧
  julyMultiplier = 3 ∧ julyDepth = julyMultiplier * juneDepth

def CarWashPackage
    (washCount paidPercent percentBase unitPrice listTotal paid : ℚ) : Prop :=
  washCount = 20 ∧ paidPercent = 60 ∧ percentBase = 100 ∧ unitPrice = 15 ∧
  listTotal = washCount * unitPrice ∧ paid * percentBase = listTotal * paidPercent

def PencilSharing (total manny nilo given kept : Nat) : Prop :=
  total = 50 ∧ manny = 10 ∧ nilo = manny + 10 ∧
  given = manny + nilo ∧ kept + given = total

def PracticeHours (basketball running trumpet : Nat) : Prop :=
  basketball = 10 ∧ running = 2 * basketball ∧ trumpet = 2 * running

def TaskMinutes
    (laundry bathroom homework totalHours minutesPerHour totalMinutes known room : Nat) : Prop :=
  laundry = 30 ∧ bathroom = 15 ∧ homework = 40 ∧ totalHours = 2 ∧
  minutesPerHour = 60 ∧ totalMinutes = totalHours * minutesPerHour ∧
  known = laundry + bathroom + homework ∧ room + known = totalMinutes

def ConcertSavings
    (saved vipCount vipPrice regularCount regularPrice vipTotal regularTotal
      cost left : Nat) : Prop :=
  saved = 500 ∧ vipCount = 2 ∧ vipPrice = 100 ∧ regularCount = 3 ∧
  regularPrice = 50 ∧ vipTotal = vipCount * vipPrice ∧
  regularTotal = regularCount * regularPrice ∧ cost = vipTotal + regularTotal ∧
  left + cost = saved

def SocialMediaHours (outreach advertisement marketing total : Nat) : Prop :=
  outreach = 4 ∧ 2 * advertisement = outreach ∧ total = 8 ∧
  marketing + outreach + advertisement = total

def MarketShopping
    (starting bananaPacks bananaPrice pears asparagus chicken spent left : Nat) : Prop :=
  starting = 55 ∧ bananaPacks = 2 ∧ bananaPrice = 4 ∧ pears = 2 ∧
  asparagus = 6 ∧ chicken = 11 ∧
  spent = bananaPacks * bananaPrice + pears + asparagus + chicken ∧
  left + spent = starting

end LemmaWeave.Problems.GSM8K.Daily0915C
