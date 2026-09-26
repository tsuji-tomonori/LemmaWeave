import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A07
structure IslandTurtles where
  happy : ℕ
  lonely : ℕ
  excess : ℕ
  twiceLonely : ℕ
  hHappy : happy = 60
  hExcess : excess = 10
  hRelation : happy = twiceLonely + excess
  hTwice : twiceLonely = 2 * lonely
theorem turtles_twice_lonely (m : IslandTurtles) : m.twiceLonely = 50 := by cases m; omega
theorem turtles_lonely (m : IslandTurtles) : m.lonely = 25 := by cases m; omega
theorem turtles_solution (m : IslandTurtles) : m.lonely = 25 := turtles_lonely m
structure Potatoes where
  potatoesPerSession : ℕ
  sessionMinutes : ℕ
  totalPotatoes : ℕ
  sessions : ℕ
  totalMinutes : ℕ
  minutesPerHour : ℕ
  hours : ℕ
  hPerSession : potatoesPerSession = 3
  hSessionMinutes : sessionMinutes = 20
  hTotalPotatoes : totalPotatoes = 27
  hSessions : totalPotatoes = sessions * potatoesPerSession
  hTotalMinutes : totalMinutes = sessions * sessionMinutes
  hMinutesPerHour : minutesPerHour = 60
  hHours : totalMinutes = hours * minutesPerHour
theorem potatoes_sessions (m : Potatoes) : m.sessions = 9 := by cases m; omega
theorem potatoes_minutes (m : Potatoes) : m.totalMinutes = 180 := by cases m; omega
theorem potatoes_hours (m : Potatoes) : m.hours = 3 := by cases m; omega
theorem potatoes_solution (m : Potatoes) : m.hours = 3 := potatoes_hours m
structure Cows where
  total : ℕ
  half : ℕ
  extraBlack : ℕ
  black : ℕ
  notBlack : ℕ
  hTotal : total = 18
  hHalf : total = 2 * half
  hExtra : extraBlack = 5
  hBlack : black = half + extraBlack
  hPartition : total = black + notBlack
theorem cows_half (m : Cows) : m.half = 9 := by cases m; omega
theorem cows_black (m : Cows) : m.black = 14 := by cases m; omega
theorem cows_solution (m : Cows) : m.notBlack = 4 := by cases m; omega
structure Racecar where
  repairPrice : ℕ
  discountPercent : ℕ
  discount : ℕ
  repairPaid : ℕ
  prize : ℕ
  keptPercent : ℕ
  keptPrize : ℕ
  netMade : ℕ
  hRepair : repairPrice = 20000
  hDiscountPercent : discountPercent = 20
  hDiscount : 100 * discount = discountPercent * repairPrice
  hPaid : repairPrice = discount + repairPaid
  hPrize : prize = 70000
  hKeptPercent : keptPercent = 90
  hKept : 100 * keptPrize = keptPercent * prize
  hNet : keptPrize = repairPaid + netMade
theorem racecar_discount (m : Racecar) : m.discount = 4000 := by cases m; omega
theorem racecar_paid (m : Racecar) : m.repairPaid = 16000 := by cases m; omega
theorem racecar_kept (m : Racecar) : m.keptPrize = 63000 := by cases m; omega
theorem racecar_solution (m : Racecar) : m.netMade = 47000 := by cases m; omega
structure StairClimb where
  flights : ℕ
  feetPerFlight : ℕ
  totalFeet : ℕ
  inchesPerFoot : ℕ
  totalInches : ℕ
  inchesPerStep : ℕ
  steps : ℕ
  hFlights : flights = 9
  hFeetPerFlight : feetPerFlight = 10
  hFeet : totalFeet = flights * feetPerFlight
  hInchesPerFoot : inchesPerFoot = 12
  hInches : totalInches = totalFeet * inchesPerFoot
  hInchesPerStep : inchesPerStep = 18
  hSteps : totalInches = steps * inchesPerStep
theorem stairs_feet (m : StairClimb) : m.totalFeet = 90 := by cases m; omega
theorem stairs_inches (m : StairClimb) : m.totalInches = 1080 := by cases m; omega
theorem stairs_steps (m : StairClimb) : m.steps = 60 := by cases m; omega
theorem stairs_solution (m : StairClimb) : m.steps = 60 := stairs_steps m
structure SiblingMoney where
  madeline : ℕ
  brother : ℕ
  total : ℕ
  hMadeline : madeline = 48
  hHalf : madeline = 2 * brother
  hTotal : total = madeline + brother
theorem money_brother (m : SiblingMoney) : m.brother = 24 := by cases m; omega
theorem money_solution (m : SiblingMoney) : m.total = 72 := by cases m; omega
structure Donations where
  carwash : ℕ
  carwashDonation : ℕ
  bakeSale : ℕ
  bakeDonation : ℕ
  mowing : ℕ
  mowingDonation : ℕ
  total : ℕ
  hCarwash : carwash = 100
  hCarwashDonation : 100 * carwashDonation = 90 * carwash
  hBakeSale : bakeSale = 80
  hBakeDonation : 100 * bakeDonation = 75 * bakeSale
  hMowing : mowing = 50
  hMowingDonation : mowingDonation = mowing
  hTotal : total = carwashDonation + bakeDonation + mowingDonation
theorem donations_carwash (m : Donations) : m.carwashDonation = 90 := by cases m; omega
theorem donations_bake (m : Donations) : m.bakeDonation = 60 := by cases m; omega
theorem donations_mowing (m : Donations) : m.mowingDonation = 50 := by cases m; omega
theorem donations_solution (m : Donations) : m.total = 200 := by cases m; omega
structure EggYolks where
  eggs : ℕ
  doubleYolkEggs : ℕ
  singleYolkEggs : ℕ
  yolks : ℕ
  hEggs : eggs = 12
  hDouble : doubleYolkEggs = 5
  hPartition : eggs = singleYolkEggs + doubleYolkEggs
  hYolks : yolks = singleYolkEggs + 2 * doubleYolkEggs
theorem eggs_single (m : EggYolks) : m.singleYolkEggs = 7 := by cases m; omega
theorem eggs_double_yolks (m : EggYolks) : 2 * m.doubleYolkEggs = 10 := by cases m; omega
theorem eggs_solution (m : EggYolks) : m.yolks = 17 := by cases m; omega
structure KartWins where
  chloeRatio : ℕ
  maxRatio : ℕ
  chloeWins : ℕ
  maxWins : ℕ
  hChloeRatio : chloeRatio = 8
  hMaxRatio : maxRatio = 3
  hChloeWins : chloeWins = 24
  hRatio : maxRatio * chloeWins = chloeRatio * maxWins
theorem kart_ratio_products (m : KartWins) : 3 * m.chloeWins = 72 := by cases m; omega
theorem kart_solution (m : KartWins) : m.maxWins = 9 := by cases m; omega
structure Earnings where
  spentPercent : ℕ
  leftPercent : ℕ
  leftDollars : ℕ
  earnings : ℕ
  hSpent : spentPercent = 10
  hPercent : spentPercent + leftPercent = 100
  hLeft : leftDollars = 405
  hAmount : leftPercent * earnings = 100 * leftDollars
theorem earnings_left_percent (m : Earnings) : m.leftPercent = 90 := by cases m; omega
theorem earnings_solution (m : Earnings) : m.earnings = 450 := by cases m; omega
structure ChickenEggs where
  chickens : ℕ
  eggsPerChickenPerDay : ℕ
  dailyEggs : ℕ
  days : ℕ
  totalEggs : ℕ
  hChickens : chickens = 4
  hRate : eggsPerChickenPerDay = 3
  hDaily : dailyEggs = chickens * eggsPerChickenPerDay
  hDays : days = 3
  hTotal : totalEggs = dailyEggs * days
theorem chickens_daily (m : ChickenEggs) : m.dailyEggs = 12 := by cases m; omega
theorem chickens_solution (m : ChickenEggs) : m.totalEggs = 36 := by cases m; omega
structure YardLengths where
  derrick : ℕ
  alex : ℕ
  brianne : ℕ
  hBrianne : brianne = 30
  hBrianneRatio : brianne = 6 * alex
  hDerrickRatio : derrick = 2 * alex
theorem yards_alex (m : YardLengths) : m.alex = 5 := by cases m; omega
theorem yards_brianne_check (m : YardLengths) : m.brianne = 30 := by cases m; omega
theorem yards_solution (m : YardLengths) : m.derrick = 10 := by cases m; omega
structure MathQuestions where
  bill : ℕ
  ryan : ℕ
  frank : ℕ
  types : ℕ
  perType : ℕ
  hBill : bill = 20
  hRyan : ryan = 2 * bill
  hFrank : frank = 3 * ryan
  hTypes : types = 4
  hEqual : frank = types * perType
theorem questions_ryan (m : MathQuestions) : m.ryan = 40 := by cases m; omega
theorem questions_frank (m : MathQuestions) : m.frank = 120 := by cases m; omega
theorem questions_per_type (m : MathQuestions) : m.perType = 30 := by cases m; omega
theorem questions_solution (m : MathQuestions) : m.perType = 30 := questions_per_type m
structure SwimLaps where
  yvonne : ℕ
  sister : ℕ
  joel : ℕ
  minutes : ℕ
  hYvonne : yvonne = 10
  hMinutes : minutes = 5
  hHalf : yvonne = 2 * sister
  hJoel : joel = 3 * sister
theorem laps_sister (m : SwimLaps) : m.sister = 5 := by cases m; omega
theorem laps_joel (m : SwimLaps) : m.joel = 15 := by cases m; omega
theorem laps_solution (m : SwimLaps) : m.joel = 15 := laps_joel m
structure JourneyPortions where
  journeyMiles : ℕ
  totalPortions : ℕ
  milesPerPortion : ℕ
  speedMph : ℕ
  timeTenthsHour : ℕ
  tenthsPerHour : ℕ
  distanceMiles : ℕ
  portionsCovered : ℕ
  hJourney : journeyMiles = 35
  hTotalPortions : totalPortions = 5
  hPortion : journeyMiles = totalPortions * milesPerPortion
  hSpeed : speedMph = 40
  hTime : timeTenthsHour = 7
  hTenthsPerHour : tenthsPerHour = 10
  hDistance : tenthsPerHour * distanceMiles = speedMph * timeTenthsHour
  hCovered : distanceMiles = portionsCovered * milesPerPortion
theorem journey_portion_miles (m : JourneyPortions) : m.milesPerPortion = 7 := by cases m; omega
theorem journey_distance (m : JourneyPortions) : m.distanceMiles = 28 := by cases m; omega
theorem journey_solution (m : JourneyPortions) : m.portionsCovered = 4 := by cases m; omega
end LemmaWeave.Problems.GSM8K.Sprint0927A07
