namespace LemmaWeave.Problems.GSM8K.Sprint0919A16

def CandyCost
    (quarters quarterValue dimes dimeValue nickels nickelValue paid change cost : Nat) : Prop :=
  quarters = 4 ∧ quarterValue = 25 ∧ dimes = 3 ∧ dimeValue = 10 ∧
  nickels = 1 ∧ nickelValue = 5 ∧
  paid = quarters * quarterValue + dimes * dimeValue + nickels * nickelValue ∧
  change = 4 ∧ cost + change = paid

def TypingTime (usual lost current words minutes : Nat) : Prop :=
  usual = 65 ∧ lost = 20 ∧ current + lost = usual ∧ words = 810 ∧
  minutes * current = words

/-- Speeds are represented in half-feet per second because 1 mph is approximated as 1.5 ft/s. -/
def CheetahCatch
    (cheetahMph gazelleMph halfFeetPerSecondPerMph cheetahRate gazelleRate
      closingRate gapHalfFeet seconds : Nat) : Prop :=
  cheetahMph = 60 ∧ gazelleMph = 40 ∧ halfFeetPerSecondPerMph = 3 ∧
  cheetahRate = cheetahMph * halfFeetPerSecondPerMph ∧
  gazelleRate = gazelleMph * halfFeetPerSecondPerMph ∧
  gazelleRate + closingRate = cheetahRate ∧ gapHalfFeet = 420 ∧
  seconds * closingRate = gapHalfFeet

def WritingPrizes
    (totalPrizes first second third topThree winners remainingWinners remainingMoney each : Nat) : Prop :=
  totalPrizes = 800 ∧ first = 200 ∧ second = 150 ∧ third = 120 ∧
  topThree = first + second + third ∧ winners = 18 ∧
  remainingWinners + 3 = winners ∧ remainingMoney + topThree = totalPrizes ∧
  each * remainingWinners = remainingMoney

def CanCollection (target alyssa abigail collected remaining : Nat) : Prop :=
  target = 100 ∧ alyssa = 30 ∧ abigail = 43 ∧ collected = alyssa + abigail ∧
  remaining + collected = target

end LemmaWeave.Problems.GSM8K.Sprint0919A16
