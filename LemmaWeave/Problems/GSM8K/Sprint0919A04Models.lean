namespace LemmaWeave.Problems.GSM8K.Sprint0919A04

def TreePlanting
    (firstHalf secondHalf chopped replacementFactor toPlant : Nat) : Prop :=
  firstHalf = 200 ∧ secondHalf = 300 ∧ chopped = firstHalf + secondHalf ∧
  replacementFactor = 3 ∧ toPlant = chopped * replacementFactor

def CutterSides
    (triangles triangleSides triangleTotal squares squareSides squareTotal
      hexagons hexagonSides hexagonTotal total : Nat) : Prop :=
  triangles = 6 ∧ triangleSides = 3 ∧ triangleTotal = triangles * triangleSides ∧
  squares = 4 ∧ squareSides = 4 ∧ squareTotal = squares * squareSides ∧
  hexagons = 2 ∧ hexagonSides = 6 ∧ hexagonTotal = hexagons * hexagonSides ∧
  total = triangleTotal + squareTotal + hexagonTotal

def EqualGiftSpending
    (dolls dollPrice youngerSpent legoPrice legoSets : Nat) : Prop :=
  dolls = 4 ∧ dollPrice = 15 ∧ youngerSpent = dolls * dollPrice ∧
  legoPrice = 20 ∧ legoSets * legoPrice = youngerSpent

/-- The personal names in the source conflict; only the stated cake quantities are modeled. -/
def FrostingCans
    (cakesPerDay days baked eaten remaining cansPerCake cans : Nat) : Prop :=
  cakesPerDay = 10 ∧ days = 5 ∧ baked = cakesPerDay * days ∧ eaten = 12 ∧
  remaining + eaten = baked ∧ cansPerCake = 2 ∧ cans = remaining * cansPerCake

def ClassFunding
    (students fullPayment halfStudents halfPayment halfTotal fullStudents
      fullTotal total : Nat) : Prop :=
  students = 25 ∧ fullPayment = 50 ∧ halfStudents = 4 ∧
  halfPayment * 2 = fullPayment ∧ halfTotal = halfStudents * halfPayment ∧
  fullStudents + halfStudents = students ∧ fullTotal = fullStudents * fullPayment ∧
  total = halfTotal + fullTotal

end LemmaWeave.Problems.GSM8K.Sprint0919A04
