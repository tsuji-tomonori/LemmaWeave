import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0913B

def CleaningPay
    (floors roomsPerFloor rooms hoursPerRoom hours hourlyPay totalPay : ℕ) : Prop :=
  floors = 4 ∧ roomsPerFloor = 10 ∧ rooms = floors * roomsPerFloor ∧
  hoursPerRoom = 6 ∧ hours = rooms * hoursPerRoom ∧
  hourlyPay = 15 ∧ totalPay = hourlyPay * hours

def QuestionProduction (first second third total : ℕ) : Prop :=
  first = 13 ∧ second = 2 * first ∧ third = 2 * second ∧
  total = first + second + third

def BookAverage
    (initial remaining spent books average : ℕ) : Prop :=
  initial = 236 ∧ remaining = 14 ∧ spent + remaining = initial ∧
  books = 6 ∧ spent = books * average

def MinkCoats
    (adults babiesPerAdult babies total released remaining skinsPerCoat coats : ℕ) : Prop :=
  adults = 30 ∧ babiesPerAdult = 6 ∧ babies = adults * babiesPerAdult ∧
  total = adults + babies ∧ 2 * released = total ∧ total = released + remaining ∧
  skinsPerCoat = 15 ∧ remaining = skinsPerCoat * coats

def VehicleTires
    (vehicles motorcycleDenominator motorcycles cars spareDenominator spareCars
     ordinaryCars motorcycleTires spareCarTires ordinaryCarTires totalTires : ℕ) : Prop :=
  vehicles = 24 ∧ motorcycleDenominator = 3 ∧
  motorcycleDenominator * motorcycles = vehicles ∧ vehicles = motorcycles + cars ∧
  spareDenominator = 4 ∧ spareDenominator * spareCars = cars ∧
  cars = spareCars + ordinaryCars ∧ motorcycleTires = 2 ∧
  spareCarTires = 5 ∧ ordinaryCarTires = 4 ∧
  totalTires = motorcycles * motorcycleTires + spareCars * spareCarTires +
    ordinaryCars * ordinaryCarTires

def DoughnutSharing
    (dozen samuelDozens cathyDozens doughnuts friends hosts people each : ℕ) : Prop :=
  dozen = 12 ∧ samuelDozens = 2 ∧ cathyDozens = 3 ∧
  doughnuts = (samuelDozens + cathyDozens) * dozen ∧
  friends = 8 ∧ hosts = 2 ∧ people = friends + hosts ∧ doughnuts = people * each

def AttendanceEstimate
    (invited noShowPercent showPercent estimated : ℕ) : Prop :=
  invited = 220 ∧ noShowPercent = 5 ∧ showPercent + noShowPercent = 100 ∧
  100 * estimated = showPercent * invited

def ActualAttendance (invited actual : ℕ) : Prop :=
  invited = 220 ∧ actual ≤ invited

def Roadwork
    (road first second remaining loadsPerMile loads gravelPerLoad totalGravel
     gravelPerPitch totalPitch : ℚ) : Prop :=
  road = 16 ∧ first = 4 ∧ second = 2 * first - 1 ∧
  remaining + first + second = road ∧ loadsPerMile = 3 ∧
  loads = loadsPerMile * remaining ∧ gravelPerLoad = 2 ∧
  totalGravel = loads * gravelPerLoad ∧ totalGravel = gravelPerPitch * totalPitch ∧
  gravelPerPitch = 5

def SalaryAfterTax
    (salary taxPercent tax remaining : ℕ) : Prop :=
  salary = 60000 ∧ taxPercent = 18 ∧ 100 * tax = taxPercent * salary ∧
  salary = tax + remaining

def ChocolateMonth
    (saturdays selfPerSaturday sisterPerSaturday regular extra total : ℕ) : Prop :=
  selfPerSaturday = 2 ∧ sisterPerSaturday = 1 ∧
  regular = saturdays * (selfPerSaturday + sisterPerSaturday) ∧
  extra = 10 ∧ total = regular + extra

end LemmaWeave.Problems.GSM8K.Daily0913B
