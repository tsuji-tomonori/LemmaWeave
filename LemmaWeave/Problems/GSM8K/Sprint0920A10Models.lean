namespace LemmaWeave.Problems.GSM8K.Sprint0920A10

def AnimalCompound
    (frogs frogsPerDog dogs catPercent cats total : Nat) : Prop :=
  dogs * frogsPerDog = frogs ∧ cats * 100 = dogs * (100 - catPercent) ∧
  total = cats + dogs + frogs

def ColdBrew
    (gallonOunces jugDenominator jugOunces days dailyOunces ouncesPerCup cups : Nat) : Prop :=
  jugOunces * jugDenominator = gallonOunces ∧ jugOunces = days * dailyOunces ∧
  dailyOunces = ouncesPerCup * cups

def AlligatorHours
    (outbound extra returnHours companions returnGroup returnAnimalHours combined : Nat) : Prop :=
  returnHours = outbound + extra ∧ returnGroup = companions + 1 ∧
  returnAnimalHours = returnGroup * returnHours ∧ combined = outbound + returnAnimalHours

def StrawberryJam
    (betty extra matthew natalie total berriesPerJar jars dollarsPerJar revenue : Nat) : Prop :=
  matthew = betty + extra ∧ matthew = 2 * natalie ∧
  total = betty + matthew + natalie ∧ total = jars * berriesPerJar ∧
  revenue = jars * dollarsPerJar

def ShipmentFund
    (profit divisor half donation available goal surplus : Nat) : Prop :=
  half * divisor = profit ∧ available = half + donation ∧ available = goal + surplus

end LemmaWeave.Problems.GSM8K.Sprint0920A10
