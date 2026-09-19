namespace LemmaWeave.Problems.GSM8K.Sprint0919A24

def CommunityPets
    (families twoDogFamilies dogsEach twoDogs oneDogFamilies oneDogs catFamilies
      catsEach cats total : Nat) : Prop :=
  families = 50 ∧ twoDogFamilies = 15 ∧ dogsEach = 2 ∧
  twoDogs = twoDogFamilies * dogsEach ∧ oneDogFamilies = 20 ∧
  oneDogs = oneDogFamilies ∧
  catFamilies + twoDogFamilies + oneDogFamilies = families ∧ catsEach = 2 ∧
  cats = catFamilies * catsEach ∧ total = twoDogs + oneDogs + cats

def CeilingPainting
    (total thisWeek divisor nextWeek remaining : Nat) : Prop :=
  total = 28 ∧ thisWeek = 12 ∧ divisor = 4 ∧
  nextWeek * divisor = thisWeek ∧ remaining + thisWeek + nextWeek = total

def SilkDresses
    (storage friends eachGift given left perDress dresses : Nat) : Prop :=
  storage = 600 ∧ friends = 5 ∧ eachGift = 20 ∧ given = friends * eachGift ∧
  left + given = storage ∧ perDress = 5 ∧ left = dresses * perDress

def ErrandHalfway
    (groceries haircut doctor total halfway : Nat) : Prop :=
  groceries = 10 ∧ haircut = 15 ∧ doctor = 5 ∧
  total = groceries + haircut + doctor ∧ total = 2 * halfway

/-- Reference-answer reading: “three/five times farther” is read as “three/five times as far”. -/
def FlashlightMultiplier
    (veronica freddieFactor freddie velmaFactor scaled less velma difference : Nat) : Prop :=
  veronica = 1000 ∧ freddieFactor = 3 ∧ freddie = freddieFactor * veronica ∧
  velmaFactor = 5 ∧ scaled = velmaFactor * freddie ∧ less = 2000 ∧
  velma + less = scaled ∧ difference + veronica = velma

/-- Literal “times more/farther” reading, applied consistently to both occurrences. -/
def FlashlightLiteralFarther
    (veronica freddieFactor freddie velmaFactor scaled less velma difference : Nat) : Prop :=
  veronica = 1000 ∧ freddieFactor = 3 ∧
  freddie = veronica + freddieFactor * veronica ∧ velmaFactor = 5 ∧
  scaled = freddie + velmaFactor * freddie ∧ less = 2000 ∧
  velma + less = scaled ∧ difference + veronica = velma

def BusThirteenWeeks (daily weeks days total : Nat) : Prop :=
  daily = 1200000 ∧ weeks = 13 ∧ days = weeks * 7 ∧ total = daily * days

def FlatResidents
    (floors halfFloors firstApartmentsEach firstApartments secondApartmentsEach
      secondApartments apartments residentsEach residents : Nat) : Prop :=
  floors = 12 ∧ floors = 2 * halfFloors ∧ firstApartmentsEach = 6 ∧
  firstApartments = halfFloors * firstApartmentsEach ∧ secondApartmentsEach = 5 ∧
  secondApartments = halfFloors * secondApartmentsEach ∧
  apartments = firstApartments + secondApartments ∧ residentsEach = 4 ∧
  residents = apartments * residentsEach

def BusTwoTrips (capacity outward returnTrip total : Nat) : Prop :=
  capacity = 200 ∧ outward * 4 = capacity * 3 ∧
  returnTrip * 5 = capacity * 4 ∧ total = outward + returnTrip

def Cupcakes
    (initial firstClass secondClass adults given left : Nat) : Prop :=
  initial = 40 ∧ firstClass = 18 ∧ secondClass = 16 ∧ adults = 4 ∧
  given = firstClass + secondClass + adults ∧ left + given = initial

def BandSets
    (repertoire first second encore middleTotal middleSets average : Nat) : Prop :=
  repertoire = 30 ∧ first = 5 ∧ second = 7 ∧ encore = 2 ∧
  middleTotal + first + second + encore = repertoire ∧ middleSets = 2 ∧
  middleTotal = average * middleSets

def PencilPurchase
    (tolu robert melissa pencils centsEach totalCents centsPerDollar dollars : Nat) : Prop :=
  tolu = 3 ∧ robert = 5 ∧ melissa = 2 ∧ pencils = tolu + robert + melissa ∧
  centsEach = 20 ∧ totalCents = pencils * centsEach ∧ centsPerDollar = 100 ∧
  totalCents = dollars * centsPerDollar

def GummyBears
    (initial siblings eachSibling siblingGiven afterSiblings friendGiven afterFriend
      joshEats shareLeft : Nat) : Prop :=
  initial = 100 ∧ siblings = 3 ∧ eachSibling = 10 ∧
  siblingGiven = siblings * eachSibling ∧ afterSiblings + siblingGiven = initial ∧
  afterSiblings = 2 * friendGiven ∧ afterFriend + friendGiven = afterSiblings ∧
  joshEats = 16 ∧ shareLeft + joshEats = afterFriend

def OliviaPay
    (rate monday wednesday friday hours total : Nat) : Prop :=
  rate = 9 ∧ monday = 4 ∧ wednesday = 3 ∧ friday = 6 ∧
  hours = monday + wednesday + friday ∧ total = rate * hours

def CrackerSales
    (saturday percent extra sunday total : Nat) : Prop :=
  saturday = 60 ∧ percent = 50 ∧ extra * 100 = saturday * percent ∧
  sunday = saturday + extra ∧ total = saturday + sunday

def Allowance
    (ended carEarnings afterMovie divisor weekly : Nat) : Prop :=
  ended = 14 ∧ carEarnings = 6 ∧ afterMovie + carEarnings = ended ∧
  divisor = 2 ∧ weekly = afterMovie * divisor

end LemmaWeave.Problems.GSM8K.Sprint0919A24
