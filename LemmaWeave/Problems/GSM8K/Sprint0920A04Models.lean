namespace LemmaWeave.Problems.GSM8K.Sprint0920A04

def TinCollection
    (goal day1 day2 day3 firstThree remaining remainingDays perDay : Nat) : Prop :=
  day2 = 3 * day1 ∧ day3 + 50 = day2 ∧
  firstThree = day1 + day2 + day3 ∧ remaining + firstThree = goal ∧
  perDay * remainingDays = remaining

def RestaurantPay
    (steak chicken total half tip james : Nat) : Prop :=
  total = steak + chicken ∧ half * 2 = total ∧ tip * 5 = total ∧
  james = half + tip

def PickleSlices (sammy tammy reduction ron : Nat) : Prop :=
  tammy = 2 * sammy ∧ reduction * 5 = tammy ∧ ron + reduction = tammy

def CupcakePacks
    (largeSize largePacks existing target needed smallSize smallPacks : Nat) : Prop :=
  existing = largeSize * largePacks ∧ existing + needed = target ∧
  smallPacks * smallSize = needed

def AppleBasket (initial ricki afterRicki samson left : Nat) : Prop :=
  afterRicki + ricki = initial ∧ samson = 2 * ricki ∧ left + samson = afterRicki

def SchoolDesks
    (classrooms largeRooms regularRooms largeCapacity regularCapacity total : Nat) : Prop :=
  largeRooms * 3 = classrooms ∧ largeRooms + regularRooms = classrooms ∧
  largeCapacity = largeRooms * 30 ∧ regularCapacity = regularRooms * 25 ∧
  total = largeCapacity + regularCapacity

def BedPurchase (frame bed subtotal discount paid : Nat) : Prop :=
  bed = 10 * frame ∧ subtotal = bed + frame ∧ discount * 5 = subtotal ∧
  paid + discount = subtotal

def Tuition
    (units unitPrice semesters semesterCost total : Nat) : Prop :=
  semesterCost = units * unitPrice ∧ total = semesterCost * semesters

def ChurchCapacity
    (chairsPerRow rows chairs peoplePerChair total : Nat) : Prop :=
  chairs = chairsPerRow * rows ∧ total = chairs * peoplePerChair

def SleepHours
    (shortDays shortHours longDays longHours shortTotal longTotal total : Nat) : Prop :=
  shortTotal = shortDays * shortHours ∧ longTotal = longDays * longHours ∧
  total = shortTotal + longTotal

def RideTickets (ferris coaster cars owned needed more : Nat) : Prop :=
  needed = ferris + coaster + cars ∧ more + owned = needed

def PandemicAttendance (home remaining groups present : Nat) : Prop :=
  remaining + home = 100 ∧ present * groups = remaining

def PopsicleSticks (steve sid sam total : Nat) : Prop :=
  sid = 2 * steve ∧ sam = 3 * sid ∧ total = steve + sid + sam

def BalloonGas (balloons litersPer totalLiters tankLiters tanks : Nat) : Prop :=
  totalLiters = balloons * litersPer ∧ tanks * tankLiters = totalLiters

def WalkingDistance (nadia hannah total : Nat) : Prop :=
  hannah * 2 = nadia ∧ total = nadia + hannah

end LemmaWeave.Problems.GSM8K.Sprint0920A04
