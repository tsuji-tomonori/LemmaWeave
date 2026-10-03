namespace LemmaWeave.Problems.GSM8K.Sprint0920A15

def ZooAnimals (kangaroos ratio koalas total : Nat) : Prop :=
  kangaroos = koalas * ratio ∧ total = kangaroos + koalas

def PrinterPages (pages crumpled blurred both neither : Nat) : Prop :=
  pages = crumpled * 7 ∧ pages = blurred * 3 ∧ pages = both * 21 ∧
  neither + crumpled + blurred = pages + both

def WeeklySwimming (camdenMonth susannahMonth weeks camdenWeek susannahWeek more : Nat) : Prop :=
  camdenMonth = camdenWeek * weeks ∧ susannahMonth = susannahWeek * weeks ∧
  susannahWeek = camdenWeek + more

def MoneyTransfer
    (lucyBefore transfer lucyAfter lindaBefore lindaAfter : Nat) : Prop :=
  lucyBefore = lucyAfter + transfer ∧ lindaAfter = lindaBefore + transfer ∧
  lucyAfter = lindaAfter

def BoxVolume (height lengthFactor length widthFactor width volume : Nat) : Prop :=
  length = lengthFactor * height ∧ length = widthFactor * width ∧
  volume = height * length * width

def PoolBuckets (caleb cynthia perTrip capacity trips : Nat) : Prop :=
  perTrip = caleb + cynthia ∧ capacity = trips * perTrip

def Landscaping
    (mowHours mowRate weedHours weedRate mulchHours mulchRate mow weed mulch total : Nat) : Prop :=
  mow = mowHours * mowRate ∧ weed = weedHours * weedRate ∧
  mulch = mulchHours * mulchRate ∧ total = mow + weed + mulch

def UnicornFlowers
    (kilometers metersPerKilometer meters stepMeters steps flowersPerStep perUnicorn unicorns total : Nat) : Prop :=
  meters = kilometers * metersPerKilometer ∧ meters = steps * stepMeters ∧
  perUnicorn = steps * flowersPerStep ∧ total = perUnicorn * unicorns

def BananaBread (bananas bananasPerCup mushCups flourPerCup flourCups : Nat) : Prop :=
  bananas = mushCups * bananasPerCup ∧ flourCups = mushCups * flourPerCup

def CardGiving
    (initial kept available friends eachFriend friendsTotal sisters eachSister sistersTotal miguel : Nat) : Prop :=
  initial = kept + available ∧ friendsTotal = friends * eachFriend ∧
  sistersTotal = sisters * eachSister ∧ available = miguel + friendsTotal + sistersTotal

def PizzaSlices
    (pizzas slicesEach total deanNumerator deanDenominator deanEaten frankEaten
      sammyNumerator sammyDenominator sammyEaten eaten left : Nat) : Prop :=
  total = pizzas * slicesEach ∧ deanEaten * deanDenominator = slicesEach * deanNumerator ∧
  sammyEaten * sammyDenominator = slicesEach * sammyNumerator ∧
  eaten = deanEaten + frankEaten + sammyEaten ∧ total = eaten + left

def MarriageAges
    (joshThen years joshNow combinedFactor combinedNow annaNow annaThen : Nat) : Prop :=
  joshNow = joshThen + years ∧ combinedNow = combinedFactor * joshThen ∧
  combinedNow = joshNow + annaNow ∧ annaNow = annaThen + years

def ClubNight
    (entry rounds friends friendDrinks selfDrinks totalDrinks drinkPrice drinkCost food
      order tipPercent tip total : Nat) : Prop :=
  friendDrinks = rounds * friends ∧ totalDrinks = friendDrinks + selfDrinks ∧
  drinkCost = totalDrinks * drinkPrice ∧ order = drinkCost + food ∧
  tip * 100 = order * tipPercent ∧ total = entry + order + tip

def FishSharing
    (eatenEyes dogEyes totalEyes eyesPerFish fish people each : Nat) : Prop :=
  totalEyes = eatenEyes + dogEyes ∧ totalEyes = fish * eyesPerFish ∧
  fish = each * people

/-- Rates and volume are measured in tenths of a gallon, so no decimal is discarded. -/
def LeakingPool (capacityTenths inflowTenths leakTenths netTenths minutes : Nat) : Prop :=
  inflowTenths = netTenths + leakTenths ∧ capacityTenths = minutes * netTenths

end LemmaWeave.Problems.GSM8K.Sprint0920A15
