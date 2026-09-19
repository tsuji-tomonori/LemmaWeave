namespace LemmaWeave.Problems.GSM8K.Sprint0919A11

/-- Monetary amounts are in cents. -/
def TacoDinner
    (shells peppers pepperCents pepperTotal meatPounds meatCents meatTotal total : Nat) : Prop :=
  shells = 500 ∧ peppers = 4 ∧ pepperCents = 150 ∧ pepperTotal = peppers * pepperCents ∧
  meatPounds = 2 ∧ meatCents = 300 ∧ meatTotal = meatPounds * meatCents ∧
  total = shells + pepperTotal + meatTotal

def CandyCalories (servings perServing total eatenDivisor eaten : Nat) : Prop :=
  servings = 3 ∧ perServing = 120 ∧ total = servings * perServing ∧
  eatenDivisor = 2 ∧ eaten * eatenDivisor = total

def AppleTotal (cecile extra diane total : Nat) : Prop :=
  cecile = 15 ∧ extra = 20 ∧ diane = cecile + extra ∧ total = cecile + diane

def LaceSets
    (teams membersPerTeam members pairsPerMember pairs laceSetsPerPair totalSets : Nat) : Prop :=
  teams = 4 ∧ membersPerTeam = 10 ∧ members = teams * membersPerTeam ∧
  pairsPerMember = 2 ∧ pairs = members * pairsPerMember ∧ laceSetsPerPair = 3 ∧
  totalSets = pairs * laceSetsPerPair

def FishSavings
    (gameCost prior fish troutPercent trout bluegill troutPrice bluegillPrice
      sundayEarnings savings shortfall : Nat) : Prop :=
  gameCost = 60 ∧ prior = 35 ∧ fish = 5 ∧ troutPercent = 60 ∧
  trout * 100 = fish * troutPercent ∧ bluegill + trout = fish ∧
  troutPrice = 5 ∧ bluegillPrice = 4 ∧
  sundayEarnings = trout * troutPrice + bluegill * bluegillPrice ∧
  savings = prior + sundayEarnings ∧ shortfall + savings = gameCost

end LemmaWeave.Problems.GSM8K.Sprint0919A11
