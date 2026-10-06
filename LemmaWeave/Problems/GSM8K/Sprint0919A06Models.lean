namespace LemmaWeave.Problems.GSM8K.Sprint0919A06

def FurnitureLegs
    (chairs chairLegs damaged remainingChairs chairLegTotal tables tableLegs
      tableLegTotal totalLegs : Nat) : Prop :=
  chairs = 80 ∧ chairLegs = 5 ∧ damaged * 100 = chairs * 40 ∧
  remainingChairs + damaged = chairs ∧ chairLegTotal = remainingChairs * chairLegs ∧
  tables = 20 ∧ tableLegs = 3 ∧ tableLegTotal = tables * tableLegs ∧
  totalLegs = chairLegTotal + tableLegTotal

def RandyMoney
    (initial gift received gave rest : Nat) : Prop :=
  initial = 3000 ∧ gift = 200 ∧ received = initial + gift ∧ gave = 1200 ∧
  rest + gave = received

def HikingPace
    (distance hours pace : Nat) : Prop :=
  distance = 24 ∧ hours = 6 ∧ distance = pace * hours

def ParkingCapacity
    (length width area usablePercent usableArea perCar cars : Nat) : Prop :=
  length = 400 ∧ width = 500 ∧ area = length * width ∧
  usablePercent = 80 ∧ usableArea * 100 = area * usablePercent ∧
  perCar = 10 ∧ usableArea = cars * perCar

def MilkContainers
    (schoolDaysPerWeek perDay weekly weeks total : Nat) : Prop :=
  schoolDaysPerWeek = 5 ∧ perDay = 2 ∧ weekly = schoolDaysPerWeek * perDay ∧
  weeks = 3 ∧ total = weeks * weekly

end LemmaWeave.Problems.GSM8K.Sprint0919A06
