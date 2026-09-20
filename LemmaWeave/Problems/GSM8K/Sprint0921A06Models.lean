namespace LemmaWeave.Problems.GSM8K.Sprint0921A06

def Lollipops (alison henry diane total perDay days : Nat) : Prop :=
  henry = alison + 30 ∧ diane = alison * 2 ∧ total = alison + henry + diane ∧
  total = perDay * days

def Books (initial count each cost remaining : Nat) : Prop :=
  cost = count * each ∧ initial = cost + remaining

def DogFood (dogs gramsPerDog dailyGrams days totalGrams kilograms : Nat) : Prop :=
  dailyGrams = dogs * gramsPerDog ∧ totalGrams = dailyGrams * days ∧
  totalGrams = kilograms * 1000

def Oreos (jordan james total : Nat) : Prop :=
  james = 4 * jordan + 7 ∧ total = jordan + james

def WeeklyDeposit (start increment weeksLater amount : Nat) : Prop :=
  amount = start + increment * weeksLater

def FourDepositSavings (w0 w1 w2 w3 total : Nat) : Prop :=
  w1 = w0 + 10 ∧ w2 = w1 + 10 ∧ w3 = w2 + 10 ∧ total = w0 + w1 + w2 + w3

def FiveDepositSavings (w0 w1 w2 w3 w4 total : Nat) : Prop :=
  w1 = w0 + 10 ∧ w2 = w1 + 10 ∧ w3 = w2 + 10 ∧ w4 = w3 + 10 ∧
  total = w0 + w1 + w2 + w3 + w4

def FishBalls (goldfish redEach redBalls platyfish whiteEach whiteBalls total : Nat) : Prop :=
  redBalls = goldfish * redEach ∧ whiteBalls = platyfish * whiteEach ∧
  total = redBalls + whiteBalls

def Basketball
    (played oldPercent oldWins remaining finalGames finalPercent targetWins neededWins losses : Nat) : Prop :=
  oldWins * 100 = played * oldPercent ∧ finalGames = played + remaining ∧
  targetWins * 100 = finalGames * finalPercent ∧ targetWins = oldWins + neededWins ∧
  remaining = neededWins + losses

def PetStore
    (birds birdsLeft puppies adopted puppiesLeft cats spiders escaped spidersLeft total : Nat) : Prop :=
  birds = birdsLeft * 2 ∧ puppies = adopted + puppiesLeft ∧
  spiders = escaped + spidersLeft ∧ total = birdsLeft + puppiesLeft + cats + spidersLeft

def Sharks (daytona capeMay : Nat) : Prop :=
  daytona = 3 * capeMay + 5

def StorePurchase
    (toyPrice toys toyCost hatPrice hats hatCost spent paid change : Nat) : Prop :=
  toyCost = toys * toyPrice ∧ hatCost = hats * hatPrice ∧
  spent = toyCost + hatCost ∧ paid = spent + change

def Brothers (michael younger older total : Nat) : Prop :=
  older = younger * 3 ∧ older = 1 + 2 * (michael - 1) ∧
  total = michael + younger + older

def ConcertTickets (people price cost current needed : Nat) : Prop :=
  cost = people * price ∧ cost = current + needed

def BulbsHalfDollars
    (tulips irises daffodils crocuses totalBulbs rateHalf earningsHalf earningsDollars : Nat) : Prop :=
  tulips = irises * 2 ∧ crocuses = daffodils * 3 ∧
  totalBulbs = tulips + irises + daffodils + crocuses ∧
  earningsHalf = totalBulbs * rateHalf ∧ earningsHalf = earningsDollars * 2

def CityPopulationDifference (largeVolume smallVolume volumeDifference density peopleDifference : Nat) : Prop :=
  largeVolume = smallVolume + volumeDifference ∧ peopleDifference = volumeDifference * density

def Rice (grainsPerCup tablespoonsPerHalf tablespoonsPerCup teaspoonsPerTablespoon teaspoonsPerCup grainsPerTeaspoon : Nat) : Prop :=
  tablespoonsPerCup = tablespoonsPerHalf * 2 ∧
  teaspoonsPerCup = tablespoonsPerCup * teaspoonsPerTablespoon ∧
  grainsPerCup = teaspoonsPerCup * grainsPerTeaspoon

end LemmaWeave.Problems.GSM8K.Sprint0921A06
