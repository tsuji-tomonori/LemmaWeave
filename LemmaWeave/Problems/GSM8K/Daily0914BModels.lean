import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0914B

def OrangeBoxes
    (bought afterMother givenHalf left : ℕ) : Prop :=
  left = 4 ∧ afterMother + 1 = bought ∧
  2 * givenHalf = afterMother ∧ left + givenHalf = afterMother

def ColoredGrid
    (rows columns total redRows redPerRow red
     blueTopRows blueBottomRows blueRows blue green : ℕ) : Prop :=
  rows = 10 ∧ columns = 15 ∧ total = rows * columns ∧
  redRows = 4 ∧ redPerRow = 6 ∧ red = redRows * redPerRow ∧
  blueTopRows = 2 ∧ blueBottomRows = 2 ∧
  blueRows = blueTopRows + blueBottomRows ∧ blue = blueRows * columns ∧
  green + red + blue = total

def QuizScore
    (rounds questionsPerRound totalQuestions missed correct pointsPerCorrect
     basePoints perfectRounds bonusPerRound bonusPoints totalPoints : ℕ) : Prop :=
  rounds = 5 ∧ questionsPerRound = 5 ∧
  totalQuestions = rounds * questionsPerRound ∧ missed = 1 ∧
  correct + missed = totalQuestions ∧ pointsPerCorrect = 2 ∧
  basePoints = correct * pointsPerCorrect ∧
  perfectRounds + 1 = rounds ∧ bonusPerRound = 4 ∧
  bonusPoints = perfectRounds * bonusPerRound ∧
  totalPoints = basePoints + bonusPoints

def AquariumFish
    (goldfish angelfish guppies total : ℕ) : Prop :=
  goldfish = 8 ∧ angelfish = goldfish + 4 ∧
  guppies = 2 * angelfish ∧ total = goldfish + angelfish + guppies

def ReturnedMarbles
    (taken lost recovered additional newBag originalReturned totalReturned : ℕ) : Prop :=
  taken = 12 ∧ 2 * lost = taken ∧ recovered + lost = taken ∧
  additional = 10 ∧ newBag = 25 ∧
  originalReturned = recovered + additional ∧
  totalReturned = originalReturned + newBag

def ReadingPages
    (minutes unitMinutes periods reneRate luluRate cherryRate
     renePages luluPages cherryPages totalPages : ℕ) : Prop :=
  minutes = 240 ∧ unitMinutes = 60 ∧ minutes = periods * unitMinutes ∧
  reneRate = 30 ∧ luluRate = 27 ∧ cherryRate = 25 ∧
  renePages = periods * reneRate ∧ luluPages = periods * luluRate ∧
  cherryPages = periods * cherryRate ∧
  totalPages = renePages + luluPages + cherryPages

def PeanutButter
    (oilPerRatio peanutsPerRatio mixturePerRatio batch scale oilUsed : ℕ) : Prop :=
  oilPerRatio = 2 ∧ peanutsPerRatio = 8 ∧
  mixturePerRatio = oilPerRatio + peanutsPerRatio ∧ batch = 20 ∧
  batch = scale * mixturePerRatio ∧ oilUsed = scale * oilPerRatio

def ShipStorm
    (hours speed eastDistance totalDistance postStormDistance westDistance : ℕ) : Prop :=
  hours = 20 ∧ speed = 30 ∧ eastDistance = hours * speed ∧
  totalDistance = 2 * eastDistance ∧
  3 * postStormDistance = totalDistance ∧
  postStormDistance + westDistance = eastDistance

def BriefcaseWeights
    (tote emptyCase fullCase contents papers laptop difference : ℕ) : Prop :=
  tote = 8 ∧ tote = 2 * emptyCase ∧ fullCase = 2 * tote ∧
  contents + emptyCase = fullCase ∧ 6 * papers = contents ∧
  laptop + papers = contents ∧ tote + difference = laptop

def FruitPrices
    (tonyPaid arnoldPaid appleDozen bananas : ℕ) : Prop :=
  tonyPaid = 7 ∧ arnoldPaid = 5 ∧
  2 * appleDozen + bananas = tonyPaid ∧
  appleDozen + bananas = arnoldPaid

end LemmaWeave.Problems.GSM8K.Daily0914B
