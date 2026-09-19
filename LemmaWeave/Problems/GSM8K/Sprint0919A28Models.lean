namespace LemmaWeave.Problems.GSM8K.Sprint0919A28

def SchoolLunch
    (thirdClasses thirdEach third fourthClasses fourthEach fourth
      fifthClasses fifthEach fifth students burger carrots cookie lunch total : Nat) : Prop :=
  thirdClasses = 5 ∧ thirdEach = 30 ∧ third = thirdClasses * thirdEach ∧
  fourthClasses = 4 ∧ fourthEach = 28 ∧ fourth = fourthClasses * fourthEach ∧
  fifthClasses = 4 ∧ fifthEach = 27 ∧ fifth = fifthClasses * fifthEach ∧
  students = third + fourth + fifth ∧ burger = 210 ∧ carrots = 50 ∧ cookie = 20 ∧
  lunch = burger + carrots + cookie ∧ total = students * lunch

def BrownSocks (whitePair extra brownEach count totalCents : Nat) : Prop :=
  whitePair = 45 ∧ extra = 25 ∧ whitePair = brownEach + extra ∧
  count = 15 ∧ totalCents = count * brownEach

def PizzaSlices (pizzas slicesEach slices totalCents sliceCents wanted wantedCents : Nat) : Prop :=
  pizzas = 3 ∧ slicesEach = 12 ∧ slices = pizzas * slicesEach ∧
  totalCents = 7200 ∧ totalCents = slices * sliceCents ∧
  wanted = 5 ∧ wantedCents = wanted * sliceCents

def Account (initial shirt afterShirt multiplier second afterSecond : Nat) : Prop :=
  initial = 55 ∧ shirt = 7 ∧ initial = shirt + afterShirt ∧
  multiplier = 3 ∧ second = multiplier * shirt ∧ afterShirt = second + afterSecond

def Guacamole (owned bought total perServing servings : Nat) : Prop :=
  owned = 5 ∧ bought = 4 ∧ total = owned + bought ∧ perServing = 3 ∧ total = perServing * servings

def CookieTransfers
    (initial brother afterBrother motherDivisor motherGift afterGift
      sisterNumerator sisterDenominator sisterGift left : Nat) : Prop :=
  initial = 20 ∧ brother = 10 ∧ initial = brother + afterBrother ∧
  motherDivisor = 2 ∧ motherGift * motherDivisor = brother ∧ afterGift = afterBrother + motherGift ∧
  sisterNumerator = 2 ∧ sisterDenominator = 3 ∧
  sisterGift * sisterDenominator = afterGift * sisterNumerator ∧ afterGift = sisterGift + left

def PiggyBank (initial afterToy left : Nat) : Prop :=
  initial = 2 * afterToy ∧ afterToy = 2 * left ∧ left = 51

def PoolTiles (blue red current target needed : Nat) : Prop :=
  blue = 48 ∧ red = 32 ∧ current = blue + red ∧ target = 100 ∧ target = current + needed

def BreadPieces (slices firstPiecesPerSlice finalPiecesPerSlice total : Nat) : Prop :=
  slices = 2 ∧ firstPiecesPerSlice = 2 ∧ finalPiecesPerSlice = 2 * firstPiecesPerSlice ∧
  total = slices * finalPiecesPerSlice

/-- Eleven complete on/off cycles take 22 minutes and leave 110 L.
The next open interval has net rate 11 L/min, so 10/11 minute is needed. -/
def AlternatingTub
    (capacity tapRate leakRate cycleNet fullCycles volumeAfterCycles : Nat) : Prop :=
  capacity = 120 ∧ tapRate = 12 ∧ leakRate = 1 ∧
  cycleNet + 2 * leakRate = tapRate ∧ fullCycles = 11 ∧
  volumeAfterCycles = fullCycles * cycleNet

def Meatballs (sons perPlate total eatenNumerator eatenDenominator remaining : Nat) : Prop :=
  sons = 3 ∧ perPlate = 3 ∧ total = sons * perPlate ∧
  eatenNumerator = 2 ∧ eatenDenominator = 3 ∧
  remaining * eatenDenominator = total * (eatenDenominator - eatenNumerator)

def Candy (collected people eatenEach eaten left : Nat) : Prop :=
  collected = 68 ∧ people = 2 ∧ eatenEach = 4 ∧ eaten = people * eatenEach ∧ collected = eaten + left

def Oranges (emily alice total : Nat) : Prop :=
  alice = 2 * emily ∧ total = emily + alice ∧ total = 180

def StoreChange
    (pens penEach penCost notebooks notebookEach notebookCost folders folderEach folderCost
      spent paid change : Nat) : Prop :=
  pens = 3 ∧ penEach = 1 ∧ penCost = pens * penEach ∧
  notebooks = 4 ∧ notebookEach = 3 ∧ notebookCost = notebooks * notebookEach ∧
  folders = 2 ∧ folderEach = 5 ∧ folderCost = folders * folderEach ∧
  spent = penCost + notebookCost + folderCost ∧ paid = 50 ∧ paid = spent + change

def PopsicleSticks
    (boys boysEach boysTotal girls girlsEach girlsTotal fewer : Nat) : Prop :=
  boys = 10 ∧ boysEach = 15 ∧ boysTotal = boys * boysEach ∧
  girls = 12 ∧ girlsEach = 12 ∧ girlsTotal = girls * girlsEach ∧
  boysTotal = girlsTotal + fewer

end LemmaWeave.Problems.GSM8K.Sprint0919A28
