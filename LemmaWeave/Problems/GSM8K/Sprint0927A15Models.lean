import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A15

structure StudentLateness where
  charlize : ℕ
  classmates : ℕ
  classmateEach : ℕ
  classmatesTotal : ℕ
  total : ℕ
  hCharlize : charlize = 20
  hClassmates : classmates = 4
  hEach : classmateEach = charlize + 10
  hClassmatesTotal : classmatesTotal = classmates * classmateEach
  hTotal : total = charlize + classmatesTotal
theorem lateness_each (m : StudentLateness) : m.classmateEach = 30 := by
  have hCharlize := m.hCharlize
  have hClassmates := m.hClassmates
  have hEach := m.hEach
  have hClassmatesTotal := m.hClassmatesTotal
  have hTotal := m.hTotal
  simp_all <;> omega
theorem lateness_classmates (m : StudentLateness) : m.classmatesTotal = 120 := by
  have hCharlize := m.hCharlize
  have hClassmates := m.hClassmates
  have hEach := m.hEach
  have hClassmatesTotal := m.hClassmatesTotal
  have hTotal := m.hTotal
  simp_all <;> omega
theorem lateness_solution (m : StudentLateness) : m.total = 140 := by
  have hCharlize := m.hCharlize
  have hClassmates := m.hClassmates
  have hEach := m.hEach
  have hClassmatesTotal := m.hClassmatesTotal
  have hTotal := m.hTotal
  simp_all <;> omega

structure BridesmaidDresses where
  dresses : ℕ
  hoursEach : ℕ
  totalHours : ℕ
  hoursPerWeek : ℕ
  weeks : ℕ
  hDresses : dresses = 5
  hHoursEach : hoursEach = 12
  hTotal : totalHours = dresses * hoursEach
  hWeekly : hoursPerWeek = 4
  hWeeks : totalHours = hoursPerWeek * weeks
theorem dresses_hours (m : BridesmaidDresses) : m.totalHours = 60 := by
  have hoursEach := m.hoursEach
  have hoursPerWeek := m.hoursPerWeek
  have hDresses := m.hDresses
  have hHoursEach := m.hHoursEach
  have hTotal := m.hTotal
  have hWeekly := m.hWeekly
  have hWeeks := m.hWeeks
  simp_all <;> omega
theorem dresses_solution (m : BridesmaidDresses) : m.weeks = 15 := by
  have hoursEach := m.hoursEach
  have hoursPerWeek := m.hoursPerWeek
  have hDresses := m.hDresses
  have hHoursEach := m.hHoursEach
  have hTotal := m.hTotal
  have hWeekly := m.hWeekly
  have hWeeks := m.hWeeks
  simp_all <;> omega

/-- Money is represented in cents. Bridge and Bridget name the same child. -/
structure SharedMoney where
  total : ℕ
  bridgetExtra : ℕ
  sarah : ℕ
  bridget : ℕ
  hTotal : total = 300
  hExtra : bridgetExtra = 50
  hBridget : bridget = sarah + bridgetExtra
  hSum : total = sarah + bridget
theorem shared_bridget (m : SharedMoney) : m.bridget = 175 := by
  have hTotal := m.hTotal
  have hExtra := m.hExtra
  have hBridget := m.hBridget
  have hSum := m.hSum
  simp_all <;> omega
theorem shared_solution (m : SharedMoney) : m.sarah = 125 := by
  have hTotal := m.hTotal
  have hExtra := m.hExtra
  have hBridget := m.hBridget
  have hSum := m.hSum
  simp_all <;> omega

structure AmusementMoney where
  start : ℕ
  food : ℕ
  rides : ℕ
  games : ℕ
  spent : ℕ
  remaining : ℕ
  hStart : start = 75
  hFood : food = 30
  hRides : rides = 13
  hGames : games = 23
  hSpent : spent = food + rides + games
  hRemaining : start = spent + remaining
theorem amusement_spent (m : AmusementMoney) : m.spent = 66 := by
  have hStart := m.hStart
  have hFood := m.hFood
  have hRides := m.hRides
  have hGames := m.hGames
  have hSpent := m.hSpent
  have hRemaining := m.hRemaining
  simp_all <;> omega
theorem amusement_solution (m : AmusementMoney) : m.remaining = 9 := by
  have hStart := m.hStart
  have hFood := m.hFood
  have hRides := m.hRides
  have hGames := m.hGames
  have hSpent := m.hSpent
  have hRemaining := m.hRemaining
  simp_all <;> omega

structure RectangleLine where
  width : ℕ
  area : ℕ
  length : ℕ
  rectangles : ℕ
  totalLength : ℕ
  hWidth : width = 42
  hArea : area = 1638
  hRectangle : area = width * length
  hRectangles : rectangles = 10
  hTotal : totalLength = rectangles * length
theorem rectangle_length (m : RectangleLine) : m.length = 39 := by
  have hWidth := m.hWidth
  have hArea := m.hArea
  have hRectangle := m.hRectangle
  have hRectangles := m.hRectangles
  have hTotal := m.hTotal
  simp_all <;> omega
theorem rectangle_solution (m : RectangleLine) : m.totalLength = 390 := by
  have hWidth := m.hWidth
  have hArea := m.hArea
  have hRectangle := m.hRectangle
  have hRectangles := m.hRectangles
  have hTotal := m.hTotal
  simp_all <;> omega

structure CamperWeeks where
  threeWeeks : ℕ
  twoWeeksAgo : ℕ
  difference : ℕ
  lastWeek : ℕ
  total : ℕ
  hThreeWeeks : threeWeeks = 30
  hTwoWeeks : twoWeeksAgo = 40
  hDifference : difference = 10
  hRelation : twoWeeksAgo = threeWeeks + difference
  hTotal : total = 150
  hSum : total = threeWeeks + twoWeeksAgo + lastWeek
theorem campers_three_weeks (m : CamperWeeks) : m.threeWeeks = 30 := by
  have hThreeWeeks := m.hThreeWeeks
  have hTwoWeeks := m.hTwoWeeks
  have hDifference := m.hDifference
  have hRelation := m.hRelation
  have hTotal := m.hTotal
  have hSum := m.hSum
  simp_all <;> omega
theorem campers_solution (m : CamperWeeks) : m.lastWeek = 80 := by
  have hThreeWeeks := m.hThreeWeeks
  have hTwoWeeks := m.hTwoWeeks
  have hDifference := m.hDifference
  have hRelation := m.hRelation
  have hTotal := m.hTotal
  have hSum := m.hSum
  simp_all <;> omega

structure SockPrice where
  start : ℕ
  shirt : ℕ
  afterShirt : ℕ
  final : ℕ
  socks : ℕ
  hStart : start = 100
  hShirt : shirt = 24
  hAfter : start = shirt + afterShirt
  hFinal : final = 65
  hSocks : afterShirt = socks + final
theorem socks_after_shirt (m : SockPrice) : m.afterShirt = 76 := by
  have hStart := m.hStart
  have hShirt := m.hShirt
  have hAfter := m.hAfter
  have hFinal := m.hFinal
  have hSocks := m.hSocks
  simp_all <;> omega
theorem socks_solution (m : SockPrice) : m.socks = 11 := by
  have hStart := m.hStart
  have hShirt := m.hShirt
  have hAfter := m.hAfter
  have hFinal := m.hFinal
  have hSocks := m.hSocks
  simp_all <;> omega

structure AnimalVideos where
  cats : ℕ
  dogs : ℕ
  firstTwo : ℕ
  gorillas : ℕ
  total : ℕ
  hCats : cats = 4
  hDogs : dogs = 2 * cats
  hFirst : firstTwo = cats + dogs
  hGorillas : gorillas = 2 * firstTwo
  hTotal : total = firstTwo + gorillas
theorem videos_dogs (m : AnimalVideos) : m.dogs = 8 := by
  have hCats := m.hCats
  have hDogs := m.hDogs
  have hFirst := m.hFirst
  have hGorillas := m.hGorillas
  have hTotal := m.hTotal
  simp_all <;> omega
theorem videos_first_two (m : AnimalVideos) : m.firstTwo = 12 := by
  have hCats := m.hCats
  have hDogs := m.hDogs
  have hFirst := m.hFirst
  have hGorillas := m.hGorillas
  have hTotal := m.hTotal
  simp_all <;> omega
theorem videos_gorillas (m : AnimalVideos) : m.gorillas = 24 := by
  have hCats := m.hCats
  have hDogs := m.hDogs
  have hFirst := m.hFirst
  have hGorillas := m.hGorillas
  have hTotal := m.hTotal
  simp_all <;> omega
theorem videos_solution (m : AnimalVideos) : m.total = 36 := by
  have hCats := m.hCats
  have hDogs := m.hDogs
  have hFirst := m.hFirst
  have hGorillas := m.hGorillas
  have hTotal := m.hTotal
  simp_all <;> omega

/-- soldPerDay answers the literal sales-rate question; producedPerDay also includes the storefront payment. -/
structure CupcakeGoal where
  soldGoal : ℕ
  payment : ℕ
  days : ℕ
  totalProduced : ℕ
  soldPerDay : ℕ
  producedPerDay : ℕ
  hSoldGoal : soldGoal = 96
  hPayment : payment = 24
  hDays : days = 2
  hTotalProduced : totalProduced = soldGoal + payment
  hSoldRate : soldGoal = days * soldPerDay
  hProducedRate : totalProduced = days * producedPerDay
theorem cupcakes_sold_solution (m : CupcakeGoal) : m.soldPerDay = 48 := by
  have hSoldGoal := m.hSoldGoal
  have hPayment := m.hPayment
  have hDays := m.hDays
  have hTotalProduced := m.hTotalProduced
  have hSoldRate := m.hSoldRate
  have hProducedRate := m.hProducedRate
  simp_all <;> omega
theorem cupcakes_total_produced (m : CupcakeGoal) : m.totalProduced = 120 := by
  have hSoldGoal := m.hSoldGoal
  have hPayment := m.hPayment
  have hDays := m.hDays
  have hTotalProduced := m.hTotalProduced
  have hSoldRate := m.hSoldRate
  have hProducedRate := m.hProducedRate
  simp_all <;> omega
theorem cupcakes_produced_solution (m : CupcakeGoal) : m.producedPerDay = 60 := by
  have hSoldGoal := m.hSoldGoal
  have hPayment := m.hPayment
  have hDays := m.hDays
  have hTotalProduced := m.hTotalProduced
  have hSoldRate := m.hSoldRate
  have hProducedRate := m.hProducedRate
  simp_all <;> omega
theorem cupcakes_distinction (m : CupcakeGoal) : m.soldPerDay ≠ m.producedPerDay := by
  have hSoldGoal := m.hSoldGoal
  have hPayment := m.hPayment
  have hDays := m.hDays
  have hTotalProduced := m.hTotalProduced
  have hSoldRate := m.hSoldRate
  have hProducedRate := m.hProducedRate
  simp_all <;> omega

/-- Money is represented in dollars; only the stated dye-supply costs are deducted. -/
structure SalonDay where
  haircuts : ℕ
  haircutEach : ℕ
  haircutRevenue : ℕ
  permRevenue : ℕ
  dyeJobs : ℕ
  dyeEach : ℕ
  dyeRevenue : ℕ
  dyeCostEach : ℕ
  dyeCost : ℕ
  tips : ℕ
  net : ℕ
  hHaircuts : haircuts = 4
  hHaircutEach : haircutEach = 30
  hHaircutRevenue : haircutRevenue = haircuts * haircutEach
  hPerm : permRevenue = 40
  hDyeJobs : dyeJobs = 2
  hDyeEach : dyeEach = 60
  hDyeRevenue : dyeRevenue = dyeJobs * dyeEach
  hDyeCostEach : dyeCostEach = 10
  hDyeCost : dyeCost = dyeJobs * dyeCostEach
  hTips : tips = 50
  hNet : haircutRevenue + permRevenue + dyeRevenue + tips = dyeCost + net
theorem salon_haircuts (m : SalonDay) : m.haircutRevenue = 120 := by
  have haircuts := m.haircuts
  have haircutEach := m.haircutEach
  have haircutRevenue := m.haircutRevenue
  have hHaircuts := m.hHaircuts
  have hHaircutEach := m.hHaircutEach
  have hHaircutRevenue := m.hHaircutRevenue
  have hPerm := m.hPerm
  have hDyeJobs := m.hDyeJobs
  have hDyeEach := m.hDyeEach
  have hDyeRevenue := m.hDyeRevenue
  have hDyeCostEach := m.hDyeCostEach
  have hDyeCost := m.hDyeCost
  have hTips := m.hTips
  have hNet := m.hNet
  simp_all <;> omega
theorem salon_dye_revenue (m : SalonDay) : m.dyeRevenue = 120 := by
  have haircuts := m.haircuts
  have haircutEach := m.haircutEach
  have haircutRevenue := m.haircutRevenue
  have hHaircuts := m.hHaircuts
  have hHaircutEach := m.hHaircutEach
  have hHaircutRevenue := m.hHaircutRevenue
  have hPerm := m.hPerm
  have hDyeJobs := m.hDyeJobs
  have hDyeEach := m.hDyeEach
  have hDyeRevenue := m.hDyeRevenue
  have hDyeCostEach := m.hDyeCostEach
  have hDyeCost := m.hDyeCost
  have hTips := m.hTips
  have hNet := m.hNet
  simp_all <;> omega
theorem salon_dye_cost (m : SalonDay) : m.dyeCost = 20 := by
  have haircuts := m.haircuts
  have haircutEach := m.haircutEach
  have haircutRevenue := m.haircutRevenue
  have hHaircuts := m.hHaircuts
  have hHaircutEach := m.hHaircutEach
  have hHaircutRevenue := m.hHaircutRevenue
  have hPerm := m.hPerm
  have hDyeJobs := m.hDyeJobs
  have hDyeEach := m.hDyeEach
  have hDyeRevenue := m.hDyeRevenue
  have hDyeCostEach := m.hDyeCostEach
  have hDyeCost := m.hDyeCost
  have hTips := m.hTips
  have hNet := m.hNet
  simp_all <;> omega
theorem salon_solution (m : SalonDay) : m.net = 310 := by
  have haircuts := m.haircuts
  have haircutEach := m.haircutEach
  have haircutRevenue := m.haircutRevenue
  have hHaircuts := m.hHaircuts
  have hHaircutEach := m.hHaircutEach
  have hHaircutRevenue := m.hHaircutRevenue
  have hPerm := m.hPerm
  have hDyeJobs := m.hDyeJobs
  have hDyeEach := m.hDyeEach
  have hDyeRevenue := m.hDyeRevenue
  have hDyeCostEach := m.hDyeCostEach
  have hDyeCost := m.hDyeCost
  have hTips := m.hTips
  have hNet := m.hNet
  simp_all <;> omega

structure PrepSchool where
  semester : ℕ
  semesters : ℕ
  annual : ℕ
  years : ℕ
  total : ℕ
  hSemester : semester = 20000
  hSemesters : semesters = 2
  hAnnual : annual = semester * semesters
  hYears : years = 13
  hTotal : total = annual * years
theorem school_annual (m : PrepSchool) : m.annual = 40000 := by
  have hSemester := m.hSemester
  have hSemesters := m.hSemesters
  have hAnnual := m.hAnnual
  have hYears := m.hYears
  have hTotal := m.hTotal
  simp_all <;> omega
theorem school_solution (m : PrepSchool) : m.total = 520000 := by
  have hSemester := m.hSemester
  have hSemesters := m.hSemesters
  have hAnnual := m.hAnnual
  have hYears := m.hYears
  have hTotal := m.hTotal
  simp_all <;> omega

structure ParkSnakes where
  boas : ℕ
  pythons : ℕ
  total : ℕ
  rattlesnakes : ℕ
  hBoas : boas = 40
  hPythons : pythons = 3 * boas
  hTotal : total = 200
  hSum : total = boas + pythons + rattlesnakes
theorem snakes_pythons (m : ParkSnakes) : m.pythons = 120 := by
  have hBoas := m.hBoas
  have hPythons := m.hPythons
  have hTotal := m.hTotal
  have hSum := m.hSum
  simp_all <;> omega
theorem snakes_solution (m : ParkSnakes) : m.rattlesnakes = 40 := by
  have hBoas := m.hBoas
  have hPythons := m.hPythons
  have hTotal := m.hTotal
  have hSum := m.hSum
  simp_all <;> omega

structure SiblingAges where
  halimaRatio : ℕ
  beckhamRatio : ℕ
  gurmeetRatio : ℕ
  scale : ℕ
  total : ℕ
  halima : ℕ
  beckham : ℕ
  difference : ℕ
  hHalimaRatio : halimaRatio = 4
  hBeckhamRatio : beckhamRatio = 3
  hGurmeetRatio : gurmeetRatio = 7
  hTotal : total = 126
  hRatioTotal : total = (halimaRatio + beckhamRatio + gurmeetRatio) * scale
  hHalima : halima = halimaRatio * scale
  hBeckham : beckham = beckhamRatio * scale
  hDifference : halima = beckham + difference
theorem ages_scale (m : SiblingAges) : m.scale = 9 := by
  have halimaRatio := m.halimaRatio
  have halima := m.halima
  have hHalimaRatio := m.hHalimaRatio
  have hBeckhamRatio := m.hBeckhamRatio
  have hGurmeetRatio := m.hGurmeetRatio
  have hTotal := m.hTotal
  have hRatioTotal := m.hRatioTotal
  have hHalima := m.hHalima
  have hBeckham := m.hBeckham
  have hDifference := m.hDifference
  simp_all <;> omega
theorem ages_halima (m : SiblingAges) : m.halima = 36 := by
  have halimaRatio := m.halimaRatio
  have halima := m.halima
  have hHalimaRatio := m.hHalimaRatio
  have hBeckhamRatio := m.hBeckhamRatio
  have hGurmeetRatio := m.hGurmeetRatio
  have hTotal := m.hTotal
  have hRatioTotal := m.hRatioTotal
  have hHalima := m.hHalima
  have hBeckham := m.hBeckham
  have hDifference := m.hDifference
  simp_all <;> omega
theorem ages_beckham (m : SiblingAges) : m.beckham = 27 := by
  have halimaRatio := m.halimaRatio
  have halima := m.halima
  have hHalimaRatio := m.hHalimaRatio
  have hBeckhamRatio := m.hBeckhamRatio
  have hGurmeetRatio := m.hGurmeetRatio
  have hTotal := m.hTotal
  have hRatioTotal := m.hRatioTotal
  have hHalima := m.hHalima
  have hBeckham := m.hBeckham
  have hDifference := m.hDifference
  simp_all <;> omega
theorem ages_solution (m : SiblingAges) : m.difference = 9 := by
  have halimaRatio := m.halimaRatio
  have halima := m.halima
  have hHalimaRatio := m.hHalimaRatio
  have hBeckhamRatio := m.hBeckhamRatio
  have hGurmeetRatio := m.hGurmeetRatio
  have hTotal := m.hTotal
  have hRatioTotal := m.hRatioTotal
  have hHalima := m.hHalima
  have hBeckham := m.hBeckham
  have hDifference := m.hDifference
  simp_all <;> omega

structure CardDiscount where
  price : ℕ
  discount : ℕ
  each : ℕ
  cards : ℕ
  total : ℕ
  hPrice : price = 12
  hDiscount : discount = 2
  hEach : price = discount + each
  hCards : cards = 10
  hTotal : total = cards * each
theorem cards_each (m : CardDiscount) : m.each = 10 := by
  have hPrice := m.hPrice
  have hDiscount := m.hDiscount
  have hEach := m.hEach
  have hCards := m.hCards
  have hTotal := m.hTotal
  simp_all <;> omega
theorem cards_solution (m : CardDiscount) : m.total = 100 := by
  have hPrice := m.hPrice
  have hDiscount := m.hDiscount
  have hEach := m.hEach
  have hCards := m.hCards
  have hTotal := m.hTotal
  simp_all <;> omega

structure CurrencyTotal where
  dollars : ℕ
  euros : ℕ
  dollarsPerEuro : ℕ
  converted : ℕ
  total : ℕ
  hDollars : dollars = 45
  hEuros : euros = 36
  hRate : dollarsPerEuro = 2
  hConverted : converted = euros * dollarsPerEuro
  hTotal : total = dollars + converted
theorem currency_converted (m : CurrencyTotal) : m.converted = 72 := by
  have hDollars := m.hDollars
  have hEuros := m.hEuros
  have hRate := m.hRate
  have hConverted := m.hConverted
  have hTotal := m.hTotal
  simp_all <;> omega
theorem currency_solution (m : CurrencyTotal) : m.total = 117 := by
  have hDollars := m.hDollars
  have hEuros := m.hEuros
  have hRate := m.hRate
  have hConverted := m.hConverted
  have hTotal := m.hTotal
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0927A15
