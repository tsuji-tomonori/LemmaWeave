import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A15

structure StudentLateness where
  charlize classmates classmateEach classmatesTotal total : ℕ
  hCharlize : charlize = 20
  hClassmates : classmates = 4
  hEach : classmateEach = charlize + 10
  hClassmatesTotal : classmatesTotal = classmates * classmateEach
  hTotal : total = charlize + classmatesTotal
theorem lateness_each (m : StudentLateness) : m.classmateEach = 30 := by cases m; omega
theorem lateness_classmates (m : StudentLateness) : m.classmatesTotal = 120 := by cases m; omega
theorem lateness_solution (m : StudentLateness) : m.total = 140 := by cases m; omega

structure BridesmaidDresses where
  dresses hoursEach totalHours hoursPerWeek weeks : ℕ
  hDresses : dresses = 5
  hHoursEach : hoursEach = 12
  hTotal : totalHours = dresses * hoursEach
  hWeekly : hoursPerWeek = 4
  hWeeks : totalHours = hoursPerWeek * weeks
theorem dresses_hours (m : BridesmaidDresses) : m.totalHours = 60 := by cases m; omega
theorem dresses_solution (m : BridesmaidDresses) : m.weeks = 15 := by cases m; omega

/-- Money is represented in cents. Bridge and Bridget name the same child. -/
structure SharedMoney where
  total bridgetExtra sarah bridget : ℕ
  hTotal : total = 300
  hExtra : bridgetExtra = 50
  hBridget : bridget = sarah + bridgetExtra
  hSum : total = sarah + bridget
theorem shared_bridget (m : SharedMoney) : m.bridget = 175 := by cases m; omega
theorem shared_solution (m : SharedMoney) : m.sarah = 125 := by cases m; omega

structure AmusementMoney where
  start food rides games spent remaining : ℕ
  hStart : start = 75
  hFood : food = 30
  hRides : rides = 13
  hGames : games = 23
  hSpent : spent = food + rides + games
  hRemaining : start = spent + remaining
theorem amusement_spent (m : AmusementMoney) : m.spent = 66 := by cases m; omega
theorem amusement_solution (m : AmusementMoney) : m.remaining = 9 := by cases m; omega

structure RectangleLine where
  width area length rectangles totalLength : ℕ
  hWidth : width = 42
  hArea : area = 1638
  hRectangle : area = width * length
  hRectangles : rectangles = 10
  hTotal : totalLength = rectangles * length
theorem rectangle_length (m : RectangleLine) : m.length = 39 := by cases m; omega
theorem rectangle_solution (m : RectangleLine) : m.totalLength = 390 := by cases m; omega

structure CamperWeeks where
  threeWeeks twoWeeksAgo difference lastWeek total : ℕ
  hThreeWeeks : threeWeeks = 30
  hTwoWeeks : twoWeeksAgo = 40
  hDifference : difference = 10
  hRelation : twoWeeksAgo = threeWeeks + difference
  hTotal : total = 150
  hSum : total = threeWeeks + twoWeeksAgo + lastWeek
theorem campers_three_weeks (m : CamperWeeks) : m.threeWeeks = 30 := by cases m; omega
theorem campers_solution (m : CamperWeeks) : m.lastWeek = 80 := by cases m; omega

structure SockPrice where
  start shirt afterShirt final socks : ℕ
  hStart : start = 100
  hShirt : shirt = 24
  hAfter : start = shirt + afterShirt
  hFinal : final = 65
  hSocks : afterShirt = socks + final
theorem socks_after_shirt (m : SockPrice) : m.afterShirt = 76 := by cases m; omega
theorem socks_solution (m : SockPrice) : m.socks = 11 := by cases m; omega

structure AnimalVideos where
  cats dogs firstTwo gorillas total : ℕ
  hCats : cats = 4
  hDogs : dogs = 2 * cats
  hFirst : firstTwo = cats + dogs
  hGorillas : gorillas = 2 * firstTwo
  hTotal : total = firstTwo + gorillas
theorem videos_dogs (m : AnimalVideos) : m.dogs = 8 := by cases m; omega
theorem videos_first_two (m : AnimalVideos) : m.firstTwo = 12 := by cases m; omega
theorem videos_gorillas (m : AnimalVideos) : m.gorillas = 24 := by cases m; omega
theorem videos_solution (m : AnimalVideos) : m.total = 36 := by cases m; omega

/-- soldPerDay answers the literal sales-rate question; producedPerDay also includes the storefront payment. -/
structure CupcakeGoal where
  soldGoal payment days totalProduced soldPerDay producedPerDay : ℕ
  hSoldGoal : soldGoal = 96
  hPayment : payment = 24
  hDays : days = 2
  hTotalProduced : totalProduced = soldGoal + payment
  hSoldRate : soldGoal = days * soldPerDay
  hProducedRate : totalProduced = days * producedPerDay
theorem cupcakes_sold_solution (m : CupcakeGoal) : m.soldPerDay = 48 := by cases m; omega
theorem cupcakes_total_produced (m : CupcakeGoal) : m.totalProduced = 120 := by cases m; omega
theorem cupcakes_produced_solution (m : CupcakeGoal) : m.producedPerDay = 60 := by cases m; omega
theorem cupcakes_distinction (m : CupcakeGoal) : m.soldPerDay ≠ m.producedPerDay := by cases m; omega

/-- Money is represented in dollars; only the stated dye-supply costs are deducted. -/
structure SalonDay where
  haircuts haircutEach haircutRevenue permRevenue dyeJobs dyeEach dyeRevenue
    dyeCostEach dyeCost tips net : ℕ
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
theorem salon_haircuts (m : SalonDay) : m.haircutRevenue = 120 := by cases m; omega
theorem salon_dye_revenue (m : SalonDay) : m.dyeRevenue = 120 := by cases m; omega
theorem salon_dye_cost (m : SalonDay) : m.dyeCost = 20 := by cases m; omega
theorem salon_solution (m : SalonDay) : m.net = 310 := by cases m; omega

structure PrepSchool where
  semester semesters annual years total : ℕ
  hSemester : semester = 20000
  hSemesters : semesters = 2
  hAnnual : annual = semester * semesters
  hYears : years = 13
  hTotal : total = annual * years
theorem school_annual (m : PrepSchool) : m.annual = 40000 := by cases m; omega
theorem school_solution (m : PrepSchool) : m.total = 520000 := by cases m; omega

structure ParkSnakes where
  boas pythons total rattlesnakes : ℕ
  hBoas : boas = 40
  hPythons : pythons = 3 * boas
  hTotal : total = 200
  hSum : total = boas + pythons + rattlesnakes
theorem snakes_pythons (m : ParkSnakes) : m.pythons = 120 := by cases m; omega
theorem snakes_solution (m : ParkSnakes) : m.rattlesnakes = 40 := by cases m; omega

structure SiblingAges where
  halimaRatio beckhamRatio gurmeetRatio scale total halima beckham difference : ℕ
  hHalimaRatio : halimaRatio = 4
  hBeckhamRatio : beckhamRatio = 3
  hGurmeetRatio : gurmeetRatio = 7
  hTotal : total = 126
  hRatioTotal : total = (halimaRatio + beckhamRatio + gurmeetRatio) * scale
  hHalima : halima = halimaRatio * scale
  hBeckham : beckham = beckhamRatio * scale
  hDifference : halima = beckham + difference
theorem ages_scale (m : SiblingAges) : m.scale = 9 := by cases m; omega
theorem ages_halima (m : SiblingAges) : m.halima = 36 := by cases m; omega
theorem ages_beckham (m : SiblingAges) : m.beckham = 27 := by cases m; omega
theorem ages_solution (m : SiblingAges) : m.difference = 9 := by cases m; omega

structure CardDiscount where
  price discount each cards total : ℕ
  hPrice : price = 12
  hDiscount : discount = 2
  hEach : price = discount + each
  hCards : cards = 10
  hTotal : total = cards * each
theorem cards_each (m : CardDiscount) : m.each = 10 := by cases m; omega
theorem cards_solution (m : CardDiscount) : m.total = 100 := by cases m; omega

structure CurrencyTotal where
  dollars euros dollarsPerEuro converted total : ℕ
  hDollars : dollars = 45
  hEuros : euros = 36
  hRate : dollarsPerEuro = 2
  hConverted : converted = euros * dollarsPerEuro
  hTotal : total = dollars + converted
theorem currency_converted (m : CurrencyTotal) : m.converted = 72 := by cases m; omega
theorem currency_solution (m : CurrencyTotal) : m.total = 117 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0927A15
