namespace LemmaWeave.Problems.GSM8K.Sprint0920A17

def TwoHourWalk (first factor second total : Nat) : Prop :=
  second = factor * first ∧ total = first + second

/-- Money is measured in cents. -/
def OrangePurchase (caloriesEach neededCalories oranges priceCents costCents budgetCents leftCents : Nat) : Prop :=
  neededCalories = oranges * caloriesEach ∧ costCents = oranges * priceCents ∧
  budgetCents = costCents + leftCents

def FruitCrate (total divisor kiwi strawberries : Nat) : Prop :=
  total = kiwi * divisor ∧ total = kiwi + strawberries

def Berries (skylar divisor steve factor extra stacy : Nat) : Prop :=
  skylar = steve * divisor ∧ stacy = factor * steve + extra

def BookClub (couples peoplePerCouple coupled singles ronAndWife total weeks turns : Nat) : Prop :=
  coupled = couples * peoplePerCouple ∧ total = coupled + singles + ronAndWife ∧
  weeks = turns * total

def CookieFloor (aliceFirst bobFirst first aliceMore bobMore more baked edible thrown : Nat) : Prop :=
  first = aliceFirst + bobFirst ∧ more = aliceMore + bobMore ∧
  baked = first + more ∧ baked = edible + thrown

def WritingDifference (rightRate leftRate rateDifference minutes wordDifference : Nat) : Prop :=
  rightRate = leftRate + rateDifference ∧ wordDifference = rateDifference * minutes

def HomeworkTime (hours minutesPerHour available math english science history used project : Nat) : Prop :=
  available = hours * minutesPerHour ∧ used = math + english + science + history ∧
  available = used + project

def Ages (total olderBy younger older : Nat) : Prop :=
  older = younger + olderBy ∧ total = younger + older

/-- Each wall's stated brick volume is counted separately; no corner-sharing assumption is added. -/
def BrickFence (walls length height depth perLayer perWall total : Nat) : Prop :=
  perLayer = length * height ∧ perWall = perLayer * depth ∧ total = walls * perWall

def WeeklyPay (monday tuesday worked remaining totalHours hourly pay : Nat) : Prop :=
  worked = monday + tuesday ∧ totalHours = worked + remaining ∧ pay = totalHours * hourly

def TuitionSurvey (parents agreePercent agree disagree : Nat) : Prop :=
  agree * 100 = parents * agreePercent ∧ parents = agree + disagree

def CombinedHeight (daughter tallerBy parent total : Nat) : Prop :=
  parent = daughter + tallerBy ∧ total = parent + daughter

def ColorDrawing (base percent extra total : Nat) : Prop :=
  extra * 100 = base * percent ∧ total = base + extra

def MetalBars
    (copper steelExtra steel steelFactor tin count copperTotal steelTotal tinTotal total : Nat) : Prop :=
  steel = copper + steelExtra ∧ steel = steelFactor * tin ∧
  copperTotal = count * copper ∧ steelTotal = count * steel ∧ tinTotal = count * tin ∧
  total = copperTotal + steelTotal + tinTotal

end LemmaWeave.Problems.GSM8K.Sprint0920A17
