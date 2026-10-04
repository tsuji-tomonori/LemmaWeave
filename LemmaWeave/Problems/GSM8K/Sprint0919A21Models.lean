namespace LemmaWeave.Problems.GSM8K.Sprint0919A21

def StationeryDifference (georgia multiplier lorene fewer : Nat) : Prop :=
  georgia = 25 ∧ multiplier = 3 ∧ lorene = georgia * multiplier ∧
  georgia + fewer = lorene

def TrashCans (street multiplier stores total : Nat) : Prop :=
  street = 14 ∧ multiplier = 2 ∧ stores = street * multiplier ∧
  total = street + stores

/-- Constant question-answering pace is represented by equality of cross products. -/
def ExamPace
    (answered totalQuestions usedMinutes totalMinutes allowedMinutes minutesLeft : Nat) : Prop :=
  answered = 16 ∧ totalQuestions = 80 ∧ usedMinutes = 12 ∧
  answered * totalMinutes = totalQuestions * usedMinutes ∧
  allowedMinutes = 60 ∧ totalMinutes + minutesLeft = allowedMinutes

def ChairPurchase
    (table fractionDenominator chair chairs chairCost total : Nat) : Prop :=
  table = 140 ∧ fractionDenominator = 7 ∧
  chair * fractionDenominator = table ∧ chairs = 4 ∧
  chairCost = chairs * chair ∧ total = table + chairCost

/-- Equal hourly rates are represented without division by a cross-product equation. -/
def BabysittingRate
    (earned workedHours targetEarn targetHours : Nat) : Prop :=
  earned = 45 ∧ workedHours = 3 ∧ targetEarn = 75 ∧
  earned * targetHours = targetEarn * workedHours

end LemmaWeave.Problems.GSM8K.Sprint0919A21
