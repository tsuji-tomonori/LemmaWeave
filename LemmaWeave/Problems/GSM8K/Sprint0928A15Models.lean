import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0928A15

structure LoanModel where
  monthly : ℕ
  months : ℕ
  principal : ℕ
  interest : ℕ
  total : ℕ
  hmonthly : monthly = 100
  hmonths : months = 12
  hprincipal : principal = monthly * months
  hinterest : 10 * interest = principal
  htotal : total = principal + interest

theorem loan_principal (m : LoanModel) : m.principal = 1200 := by omega
theorem loan_interest (m : LoanModel) : m.interest = 120 := by omega
theorem loan_total (m : LoanModel) : m.total = 1320 := by omega
theorem loan_solution (m : LoanModel) : m.total = 1320 := loan_total m

structure RouteModel where
  firstDistance : ℕ
  firstTime : ℕ
  secondDistance : ℕ
  secondTime : ℕ
  fastestTime : ℕ
  hfirstDistance : firstDistance = 1500
  hfirstTravel : firstDistance = 75 * firstTime
  hsecondDistance : secondDistance = 750
  hsecondTravel : secondDistance = 25 * secondTime
  hfastest : fastestTime = firstTime

theorem route_first_time (m : RouteModel) : m.firstTime = 20 := by omega
theorem route_second_time (m : RouteModel) : m.secondTime = 30 := by omega
theorem route_comparison (m : RouteModel) : m.firstTime < m.secondTime := by omega
theorem route_solution (m : RouteModel) : m.fastestTime = 20 := by omega

structure LightModel where
  bedroomRate : ℕ
  officeRate : ℕ
  livingRate : ℕ
  hours : ℕ
  bedroomEnergy : ℕ
  officeEnergy : ℕ
  livingEnergy : ℕ
  total : ℕ
  hbedroom : bedroomRate = 6
  hoffice : officeRate = 3 * bedroomRate
  hliving : livingRate = 4 * bedroomRate
  hhours : hours = 2
  hbedroomEnergy : bedroomEnergy = bedroomRate * hours
  hofficeEnergy : officeEnergy = officeRate * hours
  hlivingEnergy : livingEnergy = livingRate * hours
  htotal : total = bedroomEnergy + officeEnergy + livingEnergy

theorem light_rates (m : LightModel) : m.officeRate = 18 ∧ m.livingRate = 24 := by omega
theorem light_energies (m : LightModel) :
    m.bedroomEnergy = 12 ∧ m.officeEnergy = 36 ∧ m.livingEnergy = 48 := by omega
theorem light_total (m : LightModel) : m.total = 96 := by omega
theorem light_solution (m : LightModel) : m.total = 96 := light_total m

structure BrushingModel where
  minutesPerBrush : ℕ
  brushesPerDay : ℕ
  days : ℕ
  totalMinutes : ℕ
  totalHours : ℕ
  hminutes : minutesPerBrush = 2
  hbrushes : brushesPerDay = 3
  hdays : days = 30
  htotalMinutes : totalMinutes = minutesPerBrush * brushesPerDay * days
  hhours : totalMinutes = 60 * totalHours

theorem brushing_daily (m : BrushingModel) : m.minutesPerBrush * m.brushesPerDay = 6 := by omega
theorem brushing_minutes (m : BrushingModel) : m.totalMinutes = 180 := by omega
theorem brushing_hours (m : BrushingModel) : m.totalHours = 3 := by omega
theorem brushing_solution (m : BrushingModel) : m.totalHours = 3 := brushing_hours m

structure SalonModel where
  revenue : ℕ
  pricePerClient : ℕ
  clients : ℕ
  fingers : ℕ
  fingersPerPerson : ℕ
  people : ℕ
  nonClients : ℕ
  hrevenue : revenue = 200
  hprice : pricePerClient = 20
  hclients : revenue = pricePerClient * clients
  hfingers : fingers = 210
  hfingersPerPerson : fingersPerPerson = 10
  hpeople : fingers = fingersPerPerson * people
  hnonClients : people = clients + nonClients

theorem salon_clients (m : SalonModel) : m.clients = 10 := by omega
theorem salon_people (m : SalonModel) : m.people = 21 := by omega
theorem salon_nonclients (m : SalonModel) : m.nonClients = 11 := by omega
theorem salon_solution (m : SalonModel) : m.nonClients = 11 := salon_nonclients m

structure PondModel where
  initialFish : ℕ
  initialTadpoles : ℕ
  caughtFish : ℕ
  fishLeft : ℕ
  tadpolesLeft : ℕ
  difference : ℕ
  hinitialFish : initialFish = 50
  hinitialTadpoles : initialTadpoles = 3 * initialFish
  hcaught : caughtFish = 7
  hfishLeft : initialFish = caughtFish + fishLeft
  htadpolesLeft : initialTadpoles = 2 * tadpolesLeft
  hdifference : tadpolesLeft = fishLeft + difference

theorem pond_tadpoles (m : PondModel) : m.initialTadpoles = 150 := by omega
theorem pond_remaining (m : PondModel) : m.fishLeft = 43 ∧ m.tadpolesLeft = 75 := by omega
theorem pond_difference (m : PondModel) : m.difference = 32 := by omega
theorem pond_solution (m : PondModel) : m.difference = 32 := pond_difference m

/-- Paint quantities are measured in eighths of a gallon. One eighth gallon is half a liter. -/
structure PaintModel where
  oneGallon : ℕ
  dexterUsed : ℕ
  jayUsed : ℕ
  literalLeft : ℕ
  twoGallonLeft : ℕ
  literalLiters : ℕ
  twoGallonLiters : ℕ
  hone : oneGallon = 8
  hdexter : dexterUsed = 3
  hjay : jayUsed = 5
  hliteral : oneGallon = dexterUsed + jayUsed + literalLeft
  htwo : 2 * oneGallon = dexterUsed + jayUsed + twoGallonLeft
  hliteralLiters : literalLeft = 2 * literalLiters
  htwoLiters : twoGallonLeft = 2 * twoGallonLiters

theorem paint_used (m : PaintModel) : m.dexterUsed + m.jayUsed = 8 := by omega
theorem paint_literal_left (m : PaintModel) : m.literalLiters = 0 := by omega
theorem paint_two_gallon_left (m : PaintModel) : m.twoGallonLiters = 4 := by omega
theorem paint_readings_disagree (m : PaintModel) : m.literalLiters ≠ m.twoGallonLiters := by omega
theorem paint_solution (m : PaintModel) :
    m.literalLiters = 0 ∧ m.twoGallonLiters = 4 :=
  ⟨paint_literal_left m, paint_two_gallon_left m⟩

structure PizzaModel where
  pizzas : ℕ
  slicesPerPizza : ℕ
  people : ℕ
  totalSlices : ℕ
  each : ℕ
  hpizzas : pizzas = 3
  hslices : slicesPerPizza = 8
  hpeople : people = 6
  htotal : totalSlices = pizzas * slicesPerPizza
  heach : totalSlices = people * each

theorem pizza_total (m : PizzaModel) : m.totalSlices = 24 := by omega
theorem pizza_each (m : PizzaModel) : m.each = 4 := by omega
theorem pizza_solution (m : PizzaModel) : m.each = 4 := pizza_each m

structure LiftModel where
  brotherLift : ℕ
  brotherWeight : ℕ
  felixWeight : ℕ
  conventionalLift : ℕ
  literalLift : ℕ
  hbrotherLift : brotherLift = 600
  hbrotherRatio : brotherLift = 3 * brotherWeight
  hweightRatio : brotherWeight = 2 * felixWeight
  hconventional : 2 * conventionalLift = 3 * felixWeight
  hliteral : 2 * literalLift = 5 * felixWeight

theorem lift_brother_weight (m : LiftModel) : m.brotherWeight = 200 := by omega
theorem lift_felix_weight (m : LiftModel) : m.felixWeight = 100 := by omega
theorem lift_conventional (m : LiftModel) : m.conventionalLift = 150 := by omega
theorem lift_literal (m : LiftModel) : m.literalLift = 250 := by omega
theorem lift_readings_disagree (m : LiftModel) : m.conventionalLift ≠ m.literalLift := by omega
theorem lift_solution (m : LiftModel) :
    m.conventionalLift = 150 ∧ m.literalLift = 250 :=
  ⟨lift_conventional m, lift_literal m⟩

structure SavingsModel where
  june : ℕ
  july : ℕ
  august : ℕ
  books : ℕ
  shoes : ℕ
  saved : ℕ
  spent : ℕ
  left : ℕ
  hjune : june = 27
  hjuly : july = 14
  haugust : august = 21
  hbooks : books = 5
  hshoes : shoes = 17
  hsaved : saved = june + july + august
  hspent : spent = books + shoes
  hleft : saved = spent + left

theorem savings_saved (m : SavingsModel) : m.saved = 62 := by omega
theorem savings_spent (m : SavingsModel) : m.spent = 22 := by omega
theorem savings_left (m : SavingsModel) : m.left = 40 := by omega
theorem savings_solution (m : SavingsModel) : m.left = 40 := savings_left m

structure StairsModel where
  samir : ℕ
  veronica : ℕ
  together : ℕ
  hsamir : samir = 318
  hveronica : 2 * veronica = samir + 36
  htogether : together = samir + veronica

theorem stairs_veronica (m : StairsModel) : m.veronica = 177 := by omega
theorem stairs_together (m : StairsModel) : m.together = 495 := by omega
theorem stairs_solution (m : StairsModel) : m.together = 495 := stairs_together m

structure AgeModel where
  grandmother : ℕ
  mother : ℕ
  cara : ℕ
  hgrandmother : grandmother = 75
  hmother : grandmother = mother + 15
  hcara : mother = cara + 20

theorem age_mother (m : AgeModel) : m.mother = 60 := by omega
theorem age_cara (m : AgeModel) : m.cara = 40 := by omega
theorem age_solution (m : AgeModel) : m.cara = 40 := age_cara m

structure DiscountModel where
  chlorinePrice : ℕ
  soapPrice : ℕ
  chlorineSaving : ℕ
  soapSaving : ℕ
  chlorineCount : ℕ
  soapCount : ℕ
  totalSaving : ℕ
  hchlorinePrice : chlorinePrice = 10
  hsoapPrice : soapPrice = 16
  hchlorineSaving : 5 * chlorineSaving = chlorinePrice
  hsoapSaving : 4 * soapSaving = soapPrice
  hchlorineCount : chlorineCount = 3
  hsoapCount : soapCount = 5
  htotal : totalSaving = chlorineCount * chlorineSaving + soapCount * soapSaving

theorem discount_unit_savings (m : DiscountModel) :
    m.chlorineSaving = 2 ∧ m.soapSaving = 4 := by omega
theorem discount_subtotals (m : DiscountModel) :
    m.chlorineCount * m.chlorineSaving = 6 ∧ m.soapCount * m.soapSaving = 20 := by omega
theorem discount_total (m : DiscountModel) : m.totalSaving = 26 := by omega
theorem discount_solution (m : DiscountModel) : m.totalSaving = 26 := discount_total m

structure WeddingModel where
  invited : ℕ
  yes : ℕ
  no : ℕ
  responded : ℕ
  silent : ℕ
  hinvited : invited = 200
  hyes : 100 * yes = 83 * invited
  hno : 100 * no = 9 * invited
  hresponded : responded = yes + no
  hsilent : invited = responded + silent

theorem wedding_yes_no (m : WeddingModel) : m.yes = 166 ∧ m.no = 18 := by omega
theorem wedding_responded (m : WeddingModel) : m.responded = 184 := by omega
theorem wedding_silent (m : WeddingModel) : m.silent = 16 := by omega
theorem wedding_solution (m : WeddingModel) : m.silent = 16 := wedding_silent m

structure KyleModel where
  dave : ℕ
  initial : ℕ
  spent : ℕ
  left : ℕ
  hdave : dave = 46
  hinitial : initial + 12 = 3 * dave
  hspent : 3 * spent = initial
  hleft : initial = spent + left

theorem kyle_initial (m : KyleModel) : m.initial = 126 := by omega
theorem kyle_spent (m : KyleModel) : m.spent = 42 := by omega
theorem kyle_left (m : KyleModel) : m.left = 84 := by omega
theorem kyle_solution (m : KyleModel) : m.left = 84 := kyle_left m

end LemmaWeave.Problems.GSM8K.Sprint0928A15
