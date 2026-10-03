namespace LemmaWeave.Problems.GSM8K.Sprint0919A18

def MonthlyTaxes (salary necessities taxes left : Nat) : Prop :=
  salary = 80 ∧ necessities = 42 ∧ left = 18 ∧ left + necessities + taxes = salary

def PiesWithoutForks (total forkPercent withForks withoutForks : Nat) : Prop :=
  total = 2000 ∧ forkPercent = 68 ∧ withForks * 100 = total * forkPercent ∧
  withoutForks + withForks = total

def PizzaPepperoni
    (initialPepperoni firstCutPieces secondCutPieces perPiece fallen remaining : Nat) : Prop :=
  initialPepperoni = 40 ∧ firstCutPieces = 2 ∧
  secondCutPieces = firstCutPieces * 2 ∧ perPiece * secondCutPieces = initialPepperoni ∧
  fallen = 1 ∧ remaining + fallen = perPiece

def GreenCaps (total red green greenPercent : Nat) : Prop :=
  total = 125 ∧ red = 50 ∧ green + red = total ∧ greenPercent * total = green * 100

def HearingAids
    (aids costEach totalCost insurancePercent covered personal : Nat) : Prop :=
  aids = 2 ∧ costEach = 2500 ∧ totalCost = aids * costEach ∧ insurancePercent = 80 ∧
  covered * 100 = totalCost * insurancePercent ∧ personal + covered = totalCost

end LemmaWeave.Problems.GSM8K.Sprint0919A18
