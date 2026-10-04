namespace LemmaWeave.Problems.GSM8K.Sprint0919A12

def FallingLeaves
    (first laterRate laterHours laterTotal total hours average : Nat) : Prop :=
  first = 7 ∧ laterRate = 4 ∧ laterHours = 2 ∧ laterTotal = laterRate * laterHours ∧
  total = first + laterTotal ∧ hours = 3 ∧ average * hours = total

def SnowBricks
    (rows halfRows bottomPerRow topPerRow bottom top total : Nat) : Prop :=
  rows = 10 ∧ halfRows * 2 = rows ∧ bottomPerRow = 12 ∧ topPerRow = 8 ∧
  bottom = halfRows * bottomPerRow ∧ top = halfRows * topPerRow ∧ total = bottom + top

def FutureAges
    (myNow brotherNow years myFuture brotherFuture futureSum : Nat) : Prop :=
  years = 10 ∧ myFuture = myNow + years ∧ brotherFuture = brotherNow + years ∧
  myFuture = 2 * brotherFuture ∧ futureSum = myFuture + brotherFuture ∧ futureSum = 45

def Tomatoes
    (grown eaten picked shareDivisor given remaining : Nat) : Prop :=
  grown = 127 ∧ eaten = 19 ∧ picked + eaten = grown ∧ shareDivisor = 2 ∧
  given * shareDivisor = picked ∧ remaining + given = picked

/-- All rates and amounts are in half-ounces, avoiding decimal rates. -/
def RoofLeaks
    (largeRate mediumRate smallRate combinedRate minutes totalHalfOunces : Nat) : Prop :=
  largeRate = 6 ∧ mediumRate * 2 = largeRate ∧ smallRate * 3 = mediumRate ∧
  combinedRate = largeRate + mediumRate + smallRate ∧ minutes = 120 ∧
  totalHalfOunces = combinedRate * minutes

end LemmaWeave.Problems.GSM8K.Sprint0919A12
