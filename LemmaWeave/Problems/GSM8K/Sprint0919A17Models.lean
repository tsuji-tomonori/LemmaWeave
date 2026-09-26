namespace LemmaWeave.Problems.GSM8K.Sprint0919A17

def BrotherPresents
    (brothers march october november december firstHalfBirthdays secondHalfBirthdays
      firstHalfPresents secondHalfPresents difference : Nat) : Prop :=
  brothers = 7 ∧ march = 3 ∧ october = 1 ∧ november = 1 ∧ december = 2 ∧
  firstHalfBirthdays = march ∧
  secondHalfBirthdays = october + november + december ∧
  firstHalfPresents = firstHalfBirthdays ∧
  secondHalfPresents = secondHalfBirthdays + brothers ∧
  firstHalfPresents + difference = secondHalfPresents

def DiceTotal (ivan multiplier jerry total : Nat) : Prop :=
  ivan = 20 ∧ multiplier = 2 ∧ jerry = multiplier * ivan ∧ total = ivan + jerry

/-- Reference reading: “three times more” means “three times as many”. -/
def MarblesReference
    (red multiplier green yellowPercent yellow total other : Nat) : Prop :=
  red = 20 ∧ multiplier = 3 ∧ green = multiplier * red ∧ yellowPercent = 20 ∧
  yellow * 100 = green * yellowPercent ∧ total = multiplier * green ∧
  other + red + green + yellow = total

/-- Literal additive reading: “three times more” means the base plus three extra bases, i.e. four times as many. -/
def MarblesLiteralMore
    (red multiplier green yellowPercent yellow total other : Nat) : Prop :=
  red = 20 ∧ multiplier = 4 ∧ green = multiplier * red ∧ yellowPercent = 20 ∧
  yellow * 100 = green * yellowPercent ∧ total = multiplier * green ∧
  other + red + green + yellow = total

def SafeMoonTokens
    (total selfDivisor self siblings each difference : Nat) : Prop :=
  total = 1000000 ∧ selfDivisor = 2 ∧ self * selfDivisor = total ∧ siblings = 4 ∧
  each * siblings = self ∧ each + difference = self

def Ages (li multiplier zhang jungExtra jung : Nat) : Prop :=
  li = 12 ∧ multiplier = 2 ∧ zhang = multiplier * li ∧ jungExtra = 2 ∧
  jung = zhang + jungExtra

end LemmaWeave.Problems.GSM8K.Sprint0919A17
