import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0915E

def HaircutGoal (done needed goal percent : Nat) : Prop :=
  done = 8 ∧ needed = 2 ∧ goal = done + needed ∧ goal * percent = 100 * done

def BikeFund (price saved mother available earn : Nat) : Prop :=
  price = 600 ∧ saved = 120 ∧ mother = 250 ∧ available = saved + mother ∧
  available + earn = price

def StationeryLeft
    (pens pencils friends pensEach pencilsEach pensGiven pencilsGiven pensLeft pencilsLeft total : Nat) : Prop :=
  pens = 60 ∧ pencils = pens ∧ friends = 7 ∧ pensEach = 8 ∧ pencilsEach = 6 ∧
  pensGiven = friends * pensEach ∧ pencilsGiven = friends * pencilsEach ∧
  pensLeft + pensGiven = pens ∧ pencilsLeft + pencilsGiven = pencils ∧
  total = pensLeft + pencilsLeft

def ChickenProfit
    (saleCents bagPounds bagCostCents feedPounds feedCostCents profitCents
      totalProfitDollars centsPerDollar totalProfitCents chickens : Nat) : Prop :=
  saleCents = 150 ∧ bagPounds = 20 ∧ bagCostCents = 200 ∧ feedPounds = 2 ∧
  bagPounds * feedCostCents = bagCostCents * feedPounds ∧
  profitCents + feedCostCents = saleCents ∧ totalProfitDollars = 65 ∧
  centsPerDollar = 100 ∧ totalProfitCents = totalProfitDollars * centsPerDollar ∧
  profitCents * chickens = totalProfitCents

def CampingRain (dayOne dayTwo dayThree camp home less : Nat) : Prop :=
  dayOne = 3 ∧ dayTwo = 6 ∧ dayThree = 5 ∧ camp = dayOne + dayTwo + dayThree ∧
  camp + less = home ∧ home = 26

def SouvenirKeychains
    (budget shirtPrice shirts bagPrice bags clothingSpend left setPrice piecesPerSet sets pieces : Nat) : Prop :=
  budget = 50 ∧ shirtPrice = 8 ∧ shirts = 2 ∧ bagPrice = 10 ∧ bags = 2 ∧
  clothingSpend = shirtPrice * shirts + bagPrice * bags ∧
  clothingSpend + left = budget ∧ setPrice = 2 ∧ piecesPerSet = 3 ∧
  setPrice * sets = left ∧ pieces = piecesPerSet * sets

def AuntAge (coriToday years coriFuture auntMultiplier auntFuture auntToday : Nat) : Prop :=
  coriToday = 3 ∧ years = 5 ∧ coriFuture = coriToday + years ∧ auntMultiplier = 3 ∧
  auntFuture = auntMultiplier * coriFuture ∧ auntToday + years = auntFuture

def PartyInvitations
    (hometown schoolMultiplier school club base percent percentBase other total : Nat) : Prop :=
  hometown = 5 ∧ schoolMultiplier = 2 ∧ school = schoolMultiplier * hometown ∧
  club = hometown + school ∧ base = hometown + school + club ∧ percent = 20 ∧
  percentBase = 100 ∧ percentBase * other = percent * base ∧ total = base + other

def CraneComparison
    (buildingOne craneOne buildingTwo craneTwo buildingThree craneThree
      percentOne percentTwo percentThree equalAverage aggregatePercent : ℚ) : Prop :=
  buildingOne = 200 ∧ craneOne = 228 ∧ buildingTwo = 100 ∧ craneTwo = 120 ∧
  buildingThree = 140 ∧ craneThree = 147 ∧
  buildingOne * percentOne = 100 * (craneOne - buildingOne) ∧
  buildingTwo * percentTwo = 100 * (craneTwo - buildingTwo) ∧
  buildingThree * percentThree = 100 * (craneThree - buildingThree) ∧
  3 * equalAverage = percentOne + percentTwo + percentThree ∧
  (buildingOne + buildingTwo + buildingThree) * aggregatePercent =
    100 * ((craneOne + craneTwo + craneThree) -
      (buildingOne + buildingTwo + buildingThree))

def SharedRevenue
    (shoePairs shoePrice shoeRevenue shirts shirtPrice shirtRevenue total people each : Nat) : Prop :=
  shoePairs = 6 ∧ shoePrice = 3 ∧ shoeRevenue = shoePairs * shoePrice ∧
  shirts = 18 ∧ shirtPrice = 2 ∧ shirtRevenue = shirts * shirtPrice ∧
  total = shoeRevenue + shirtRevenue ∧ people = 2 ∧ people * each = total

end LemmaWeave.Problems.GSM8K.Daily0915E
