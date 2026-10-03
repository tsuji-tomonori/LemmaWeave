namespace LemmaWeave.Problems.GSM8K.Sprint0919A05

def DogFood
    (firstBag secondBag bought alreadyHad current : Nat) : Prop :=
  firstBag = 15 ∧ secondBag = 10 ∧ bought = firstBag + secondBag ∧
  alreadyHad + bought = current ∧ current = 40

def TeaLeaves
    (perPlant plants initial divisor fallen remaining : Nat) : Prop :=
  perPlant = 18 ∧ plants = 3 ∧ initial = perPlant * plants ∧ divisor = 3 ∧
  fallen * divisor = initial ∧ remaining + fallen = initial

def BirthdayGifts
    (twelfth fewer thirteenth total : Nat) : Prop :=
  twelfth = 20 ∧ fewer = 8 ∧ thirteenth + fewer = twelfth ∧
  total = twelfth + thirteenth

def Renovation
    (bedrooms perBedroom bedroomTotal kitchenExtra kitchen beforeLiving
      living total : Nat) : Prop :=
  bedrooms = 3 ∧ perBedroom = 4 ∧ bedroomTotal = bedrooms * perBedroom ∧
  kitchenExtra * 2 = perBedroom ∧ kitchen = perBedroom + kitchenExtra ∧
  beforeLiving = bedroomTotal + kitchen ∧ living = beforeLiving * 2 ∧
  total = beforeLiving + living

/-- All monetary amounts are represented in cents. -/
def DistributionProfit
    (first multiplier second totalDaily centsPerPackage dailyProfitCents days
      weeklyProfitCents : Nat) : Prop :=
  first = 10000 ∧ multiplier = 3 ∧ second = first * multiplier ∧
  totalDaily = first + second ∧ centsPerPackage = 5 ∧
  dailyProfitCents = totalDaily * centsPerPackage ∧ days = 7 ∧
  weeklyProfitCents = dailyProfitCents * days

end LemmaWeave.Problems.GSM8K.Sprint0919A05
