namespace LemmaWeave.Problems.GSM8K.Sprint0921A02

def BathroomArea (widthTiles lengthTiles tileInches widthInches lengthInches inchesPerFoot widthFeet lengthFeet area : Nat) : Prop :=
  widthInches = widthTiles * tileInches ∧ lengthInches = lengthTiles * tileInches ∧
  widthInches = widthFeet * inchesPerFoot ∧ lengthInches = lengthFeet * inchesPerFoot ∧ area = widthFeet * lengthFeet
def HikingEquipment (hoodie flashlightPercent flashlight bootsList discountPercent discount bootsPaid total : Nat) : Prop :=
  flashlight * 100 = hoodie * flashlightPercent ∧ discount * 100 = bootsList * discountPercent ∧
  bootsList = bootsPaid + discount ∧ total = hoodie + flashlight + bootsPaid
def AntiqueProfit (dolls dollPrice dollRevenue clocks clockPrice clockRevenue glasses glassPrice glassRevenue revenue cost profit : Nat) : Prop :=
  dollRevenue = dolls * dollPrice ∧ clockRevenue = clocks * clockPrice ∧ glassRevenue = glasses * glassPrice ∧
  revenue = dollRevenue + clockRevenue + glassRevenue ∧ revenue = cost + profit
def QuizItems (scorePercent mistakePercent mistakes total : Nat) : Prop :=
  scorePercent + mistakePercent = 100 ∧ mistakes * 100 = total * mistakePercent
def Fishbowls (tables normalFish exceptionalFish baseTotal extra total : Nat) : Prop :=
  baseTotal = tables * normalFish ∧ exceptionalFish = normalFish + extra ∧ total = baseTotal + extra
def TelevisionPayment (cash down monthly months installments credit saving : Nat) : Prop :=
  installments = monthly * months ∧ credit = down + installments ∧ credit = cash + saving
def EngineeringStudents (menPercent womenPercent women total men : Nat) : Prop :=
  menPercent + womenPercent = 100 ∧ women * 100 = total * womenPercent ∧ men * 100 = total * menPercent ∧ total = women + men
/-- Honey amounts are measured in deciliters so the per-bee quantities remain natural numbers. -/
def BeeHoney (firstBees firstHoneyDl fewerPercent secondBees firstPerBeeDl morePercent secondPerBeeDl secondHoneyDl totalHoneyDl : Nat) : Prop :=
  firstHoneyDl = firstBees * firstPerBeeDl ∧ secondBees * 100 = firstBees * (100 - fewerPercent) ∧
  secondPerBeeDl * 100 = firstPerBeeDl * (100 + morePercent) ∧ secondHoneyDl = secondBees * secondPerBeeDl ∧
  totalHoneyDl = firstHoneyDl + secondHoneyDl
def Maize (years monthsPerYear perMonth stored stolen afterTheft donation total : Nat) : Prop :=
  stored = years * monthsPerYear * perMonth ∧ stored = stolen + afterTheft ∧ total = afterTheft + donation
def FactoryTelevisions (daily days firstYear reductionPercent reduction secondYear : Nat) : Prop :=
  firstYear = daily * days ∧ reduction * 100 = firstYear * reductionPercent ∧ firstYear = reduction + secondYear
def TipShare (people steak drink perMeal bill tipPercent tip billyPercent billy : Nat) : Prop :=
  perMeal = steak + drink ∧ bill = people * perMeal ∧ tip * 100 = bill * tipPercent ∧ billy * 100 = tip * billyPercent
def Luggage (siblings eachSibling siblingCases parents eachParent parentCases lilyCases total : Nat) : Prop :=
  siblingCases = siblings * eachSibling ∧ parentCases = parents * eachParent ∧ total = siblingCases + parentCases + lilyCases
/-- Tomato quantities are measured in half-kilogram units. -/
def Tomatoes (harvest firstSale secondSale sold unsold : Nat) : Prop :=
  sold = firstSale + secondSale ∧ harvest = sold + unsold
def LibraryBooks (initial borrowedLunch added borrowedEvening remaining : Nat) : Prop :=
  initial + added = borrowedLunch + borrowedEvening + remaining
def RanchCows (first multiplier extra second total : Nat) : Prop :=
  second = multiplier * first + extra ∧ total = first + second

end LemmaWeave.Problems.GSM8K.Sprint0921A02
