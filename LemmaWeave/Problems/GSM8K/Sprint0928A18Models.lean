import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0928A18

structure WheelsModel where
  bicycles : ℕ
  cars : ℕ
  motorcycles : ℕ
  bicycleWheels : ℕ
  carWheels : ℕ
  motorcycleWheels : ℕ
  total : ℕ
  hbicycles : bicycles = 20
  hcars : cars = 10
  hmotorcycles : motorcycles = 5
  hbicycleWheels : bicycleWheels = 2 * bicycles
  hcarWheels : carWheels = 4 * cars
  hmotorcycleWheels : motorcycleWheels = 2 * motorcycles
  htotal : total = bicycleWheels + carWheels + motorcycleWheels

theorem wheels_subtotals (m : WheelsModel) :
    m.bicycleWheels = 40 ∧ m.carWheels = 40 ∧ m.motorcycleWheels = 10 := by omega
theorem wheels_total (m : WheelsModel) : m.total = 90 := by omega
theorem wheels_solution (m : WheelsModel) : m.total = 90 := wheels_total m

structure TreesModel where
  total : ℕ
  pine : ℕ
  nonPine : ℕ
  htotal : total = 350
  hpine : 100 * pine = 70 * total
  hpartition : total = pine + nonPine

theorem trees_pine (m : TreesModel) : m.pine = 245 := by omega
theorem trees_nonpine (m : TreesModel) : m.nonPine = 105 := by omega
theorem trees_solution (m : TreesModel) : m.nonPine = 105 := trees_nonpine m

structure CharityModel where
  revenue : ℕ
  ingredients : ℕ
  remainder : ℕ
  shelterShare : ℕ
  ownDonation : ℕ
  shelterTotal : ℕ
  hrevenue : revenue = 400
  hingredients : ingredients = 100
  hremainder : revenue = ingredients + remainder
  hhalf : remainder = 2 * shelterShare
  hown : ownDonation = 10
  htotal : shelterTotal = shelterShare + ownDonation

theorem charity_remainder (m : CharityModel) : m.remainder = 300 := by omega
theorem charity_share (m : CharityModel) : m.shelterShare = 150 := by omega
theorem charity_total (m : CharityModel) : m.shelterTotal = 160 := by omega
theorem charity_solution (m : CharityModel) : m.shelterTotal = 160 := charity_total m

structure MarketModel where
  eggs : ℕ
  eggPrice : ℕ
  chickens : ℕ
  chickenPrice : ℕ
  eggCost : ℕ
  chickenCost : ℕ
  total : ℕ
  heggs : eggs = 20
  heggPrice : eggPrice = 2
  hchickens : chickens = 6
  hchickenPrice : chickenPrice = 8
  heggCost : eggCost = eggs * eggPrice
  hchickenCost : chickenCost = chickens * chickenPrice
  htotal : total = eggCost + chickenCost

theorem market_costs (m : MarketModel) : m.eggCost = 40 ∧ m.chickenCost = 48 := by omega
theorem market_total (m : MarketModel) : m.total = 88 := by omega
theorem market_solution (m : MarketModel) : m.total = 88 := market_total m

structure StationModel where
  minutes : ℕ
  interval : ℕ
  arrivals : ℕ
  leaving : ℕ
  boarding : ℕ
  perTrain : ℕ
  total : ℕ
  hminutes : minutes = 60
  hinterval : interval = 5
  harrivals : minutes = interval * arrivals
  hleaving : leaving = 200
  hboarding : boarding = 320
  hperTrain : perTrain = leaving + boarding
  htotal : total = arrivals * perTrain

theorem station_per_train (m : StationModel) : m.perTrain = 520 := by omega
theorem station_arrivals (m : StationModel) : m.arrivals = 12 := by omega
theorem station_total (m : StationModel) : m.total = 6240 := by omega
theorem station_solution (m : StationModel) : m.total = 6240 := station_total m

structure GranolaModel where
  pack : ℕ
  days : ℕ
  traded : ℕ
  remaining : ℕ
  sisters : ℕ
  each : ℕ
  hpack : pack = 20
  hdays : days = 7
  htraded : traded = 3
  hremaining : pack = days + traded + remaining
  hsisters : sisters = 2
  hsplit : remaining = sisters * each

theorem granola_remaining (m : GranolaModel) : m.remaining = 10 := by omega
theorem granola_each (m : GranolaModel) : m.each = 5 := by omega
theorem granola_solution (m : GranolaModel) : m.each = 5 := granola_each m

structure PyramidModel where
  level1 : ℕ
  level2 : ℕ
  level3 : ℕ
  top : ℕ
  total : ℕ
  htop : top = 64
  hlevel3 : 5 * top = 4 * level3
  hlevel2 : 5 * level3 = 4 * level2
  hlevel1 : 5 * level2 = 4 * level1
  htotal : total = level1 + level2 + level3 + top

theorem pyramid_levels (m : PyramidModel) :
    m.level3 = 80 ∧ m.level2 = 100 ∧ m.level1 = 125 := by omega
theorem pyramid_total (m : PyramidModel) : m.total = 369 := by omega
theorem pyramid_solution (m : PyramidModel) : m.total = 369 := pyramid_total m

structure TicketsModel where
  capacity : ℕ
  jude : ℕ
  andrea : ℕ
  sandra : ℕ
  sold : ℕ
  remaining : ℕ
  hcapacity : capacity = 100
  hjude : jude = 16
  handrea : andrea = 2 * jude
  hsandra : 2 * (sandra - 4) = jude
  hsandraFloor : 4 ≤ sandra
  hsold : sold = andrea + jude + sandra
  hremaining : capacity = sold + remaining

theorem tickets_sellers (m : TicketsModel) : m.andrea = 32 ∧ m.sandra = 12 := by omega
theorem tickets_sold (m : TicketsModel) : m.sold = 60 := by omega
theorem tickets_remaining (m : TicketsModel) : m.remaining = 40 := by omega
theorem tickets_solution (m : TicketsModel) : m.remaining = 40 := tickets_remaining m

structure BirdseedModel where
  bought : ℕ
  pantry : ℕ
  boxes : ℕ
  gramsPerBox : ℕ
  weeklyParrot : ℕ
  weeklyCockatiel : ℕ
  weekly : ℕ
  totalGrams : ℕ
  weeks : ℕ
  hbought : bought = 3
  hpantry : pantry = 5
  hboxes : boxes = bought + pantry
  hgrams : gramsPerBox = 225
  hparrot : weeklyParrot = 100
  hcockatiel : weeklyCockatiel = 50
  hweekly : weekly = weeklyParrot + weeklyCockatiel
  htotal : totalGrams = boxes * gramsPerBox
  hweeks : totalGrams = weekly * weeks

theorem birdseed_weekly_boxes (m : BirdseedModel) : m.weekly = 150 ∧ m.boxes = 8 := by omega
theorem birdseed_total (m : BirdseedModel) : m.totalGrams = 1800 := by omega
theorem birdseed_weeks (m : BirdseedModel) : m.weeks = 12 := by omega
theorem birdseed_solution (m : BirdseedModel) : m.weeks = 12 := birdseed_weeks m

structure BrothersModel where
  adam : ℕ
  tom : ℕ
  target : ℕ
  years : ℕ
  hadam : adam = 8
  htom : tom = 12
  htarget : target = 44
  hfuture : target = (adam + years) + (tom + years)

theorem brothers_present (m : BrothersModel) : m.adam + m.tom = 20 := by omega
theorem brothers_years (m : BrothersModel) : m.years = 12 := by omega
theorem brothers_solution (m : BrothersModel) : m.years = 12 := brothers_years m

structure MeatModel where
  people : ℕ
  halfPounds : ℕ
  pricePerPound : ℕ
  totalHalfPounds : ℕ
  totalCost : ℕ
  hpeople : people = 6
  hhalfPounds : halfPounds = 1
  hprice : pricePerPound = 15
  htotalHalfPounds : totalHalfPounds = people * halfPounds
  hcost : 2 * totalCost = totalHalfPounds * pricePerPound

theorem meat_quantity (m : MeatModel) : m.totalHalfPounds = 6 := by omega
theorem meat_cost (m : MeatModel) : m.totalCost = 45 := by omega
theorem meat_solution (m : MeatModel) : m.totalCost = 45 := meat_cost m

structure ToyPilesModel where
  smaller : ℕ
  larger : ℕ
  total : ℕ
  htotal : total = 120
  hlarger : larger = 2 * smaller
  hsum : total = smaller + larger

theorem toy_smaller (m : ToyPilesModel) : m.smaller = 40 := by omega
theorem toy_larger (m : ToyPilesModel) : m.larger = 80 := by omega
theorem toy_solution (m : ToyPilesModel) : m.larger = 80 := toy_larger m

structure CateringModel where
  guests : ℕ
  price : ℕ
  subtotal : ℕ
  discount : ℕ
  revenue : ℕ
  hguests : guests = 20
  hprice : price = 25
  hsubtotal : subtotal = guests * price
  hdiscount : 10 * discount = subtotal
  hrevenue : subtotal = discount + revenue

theorem catering_subtotal (m : CateringModel) : m.subtotal = 500 := by omega
theorem catering_discount (m : CateringModel) : m.discount = 50 := by omega
theorem catering_revenue (m : CateringModel) : m.revenue = 450 := by omega
theorem catering_solution (m : CateringModel) : m.revenue = 450 := catering_revenue m

structure DivingModel where
  weekdays : ℕ
  weekendDays : ℕ
  weekdayClassesPerDay : ℕ
  weekendClassesPerDay : ℕ
  classesPerWeek : ℕ
  peoplePerClass : ℕ
  weeks : ℕ
  total : ℕ
  hweekdays : weekdays = 5
  hweekendDays : weekendDays = 2
  hweekdayClasses : weekdayClassesPerDay = 2
  hweekendClasses : weekendClassesPerDay = 4
  hclasses : classesPerWeek = weekdays * weekdayClassesPerDay + weekendDays * weekendClassesPerDay
  hpeople : peoplePerClass = 5
  hweeks : weeks = 3
  htotal : total = classesPerWeek * peoplePerClass * weeks

theorem diving_classes (m : DivingModel) : m.classesPerWeek = 18 := by omega
theorem diving_weekly_people (m : DivingModel) : m.classesPerWeek * m.peoplePerClass = 90 := by omega
theorem diving_total (m : DivingModel) : m.total = 270 := by omega
theorem diving_solution (m : DivingModel) : m.total = 270 := diving_total m

structure AverageAgeModel where
  average : ℕ
  count : ℕ
  total : ℕ
  molly : ℕ
  hakimi : ℕ
  jared : ℕ
  haverage : average = 40
  hcount : count = 3
  htotal : total = average * count
  hmolly : molly = 30
  hjared : jared = hakimi + 10
  hsum : total = molly + hakimi + jared

theorem average_total (m : AverageAgeModel) : m.total = 120 := by omega
theorem average_hakimi (m : AverageAgeModel) : m.hakimi = 40 := by omega
theorem average_solution (m : AverageAgeModel) : m.hakimi = 40 := average_hakimi m

end LemmaWeave.Problems.GSM8K.Sprint0928A18
