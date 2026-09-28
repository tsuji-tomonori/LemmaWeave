import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0928A10

structure MedSchoolModel where
  researched applied accepted : ℕ
  hResearched : researched = 42
  hApplied : 3 * applied = researched
  hAccepted : 2 * accepted = applied

theorem med_school_applied (m : MedSchoolModel) : m.applied = 14 := by omega
theorem med_school_accepted (m : MedSchoolModel) : m.accepted = 7 := by
  have := med_school_applied m
  omega
theorem med_school_solution (m : MedSchoolModel) : m.accepted = 7 := med_school_accepted m

structure BakerModel where
  cakeCount cakePrice cakeRevenue pieCount piePrice pieRevenue totalRevenue : ℕ
  hCakeCount : cakeCount = 453
  hCakePrice : cakePrice = 12
  hCakeRevenue : cakeRevenue = cakeCount * cakePrice
  hPieCount : pieCount = 126
  hPiePrice : piePrice = 7
  hPieRevenue : pieRevenue = pieCount * piePrice
  hTotal : totalRevenue = cakeRevenue + pieRevenue

theorem baker_cake_revenue (m : BakerModel) : m.cakeRevenue = 5436 := by omega
theorem baker_pie_revenue (m : BakerModel) : m.pieRevenue = 882 := by omega
theorem baker_total (m : BakerModel) : m.totalRevenue = 6318 := by
  have h₁ := baker_cake_revenue m
  have h₂ := baker_pie_revenue m
  omega
theorem baker_solution (m : BakerModel) : m.totalRevenue = 6318 := baker_total m

structure SurveyModel where
  classSize johnson feldstein henderson total : ℕ
  hClassSize : classSize = 30
  hJohnson : 6 * johnson = classSize
  hFeldstein : 3 * feldstein = 2 * classSize
  hHenderson : 5 * henderson = classSize
  hTotal : total = johnson + feldstein + henderson

theorem survey_class_counts (m : SurveyModel) :
    m.johnson = 5 ∧ m.feldstein = 20 ∧ m.henderson = 6 := by omega
theorem survey_total (m : SurveyModel) : m.total = 31 := by
  have h := survey_class_counts m
  omega
theorem survey_solution (m : SurveyModel) : m.total = 31 := survey_total m

structure PracticeModel where
  marvinYesterday marvinToday marvinTotal arvinYesterday arvinToday arvinTotal combined : ℕ
  hMarvinYesterday : marvinYesterday = 40
  hMarvinToday : marvinToday = 3 * marvinYesterday
  hMarvinTotal : marvinTotal = marvinYesterday + marvinToday
  hArvinYesterday : arvinYesterday = 2 * marvinYesterday
  hArvinToday : arvinToday = 2 * marvinToday
  hArvinTotal : arvinTotal = arvinYesterday + arvinToday
  hCombined : combined = marvinTotal + arvinTotal

theorem practice_daily (m : PracticeModel) :
    m.marvinToday = 120 ∧ m.arvinYesterday = 80 ∧ m.arvinToday = 240 := by omega
theorem practice_totals (m : PracticeModel) : m.marvinTotal = 160 ∧ m.arvinTotal = 320 := by
  have h := practice_daily m
  omega
theorem practice_combined (m : PracticeModel) : m.combined = 480 := by
  have h := practice_totals m
  omega
theorem practice_solution (m : PracticeModel) : m.combined = 480 := practice_combined m

structure SurferModel where
  first second third total average : ℕ
  hFirst : first = 1500
  hSecond : second = first + 600
  hThird : 5 * third = 2 * first
  hTotal : total = first + second + third
  hAverage : 3 * average = total

theorem surfer_days (m : SurferModel) : m.second = 2100 ∧ m.third = 600 := by omega
theorem surfer_total (m : SurferModel) : m.total = 4200 := by
  have h := surfer_days m
  omega
theorem surfer_average (m : SurferModel) : m.average = 1400 := by
  have h := surfer_total m
  omega
theorem surfers_solution (m : SurferModel) : m.average = 1400 := surfer_average m

structure FilletModel where
  days fishPerDay totalFish filletsPerFish totalFillets : ℕ
  hDays : days = 30
  hFishPerDay : fishPerDay = 2
  hTotalFish : totalFish = fishPerDay * days
  hFilletsPerFish : filletsPerFish = 2
  hTotalFillets : totalFillets = filletsPerFish * totalFish

theorem fillet_fish (m : FilletModel) : m.totalFish = 60 := by omega
theorem fillet_total (m : FilletModel) : m.totalFillets = 120 := by
  have h := fillet_fish m
  omega
theorem fillets_solution (m : FilletModel) : m.totalFillets = 120 := fillet_total m

structure CakeOrderModel where
  chocolateCount chocolatePrice chocolateCost strawberryCount strawberryPrice strawberryCost total : ℕ
  hChocolateCount : chocolateCount = 3
  hChocolatePrice : chocolatePrice = 12
  hChocolateCost : chocolateCost = chocolateCount * chocolatePrice
  hStrawberryCount : strawberryCount = 6
  hStrawberryPrice : strawberryPrice = 22
  hStrawberryCost : strawberryCost = strawberryCount * strawberryPrice
  hTotal : total = chocolateCost + strawberryCost

theorem cake_order_costs (m : CakeOrderModel) :
    m.chocolateCost = 36 ∧ m.strawberryCost = 132 := by omega
theorem cake_order_total (m : CakeOrderModel) : m.total = 168 := by
  have h := cake_order_costs m
  omega
theorem cake_order_solution (m : CakeOrderModel) : m.total = 168 := cake_order_total m

structure DistanceModel where
  miles yards niklausFeet lionelFeet estherFeet totalFeet : ℕ
  hMiles : miles = 4
  hYards : yards = 975
  hNiklausFeet : niklausFeet = 1287
  hLionelFeet : lionelFeet = 5280 * miles
  hEstherFeet : estherFeet = 3 * yards
  hTotal : totalFeet = lionelFeet + estherFeet + niklausFeet

theorem distance_conversions (m : DistanceModel) :
    m.lionelFeet = 21120 ∧ m.estherFeet = 2925 := by omega
theorem distance_total (m : DistanceModel) : m.totalFeet = 25332 := by
  have h := distance_conversions m
  omega
theorem distance_solution (m : DistanceModel) : m.totalFeet = 25332 := distance_total m

structure SmoreModel where
  crackers crackersPerSmore smores marshmallowsHave marshmallowsNeeded toBuy : ℕ
  hCrackers : crackers = 48
  hCrackersPerSmore : crackersPerSmore = 2
  hSmores : crackersPerSmore * smores = crackers
  hMarshmallowsHave : marshmallowsHave = 6
  hNeeded : marshmallowsNeeded = smores
  hBuy : marshmallowsHave + toBuy = marshmallowsNeeded

theorem smore_count (m : SmoreModel) : m.smores = 24 := by omega
theorem smore_buy (m : SmoreModel) : m.toBuy = 18 := by
  have h := smore_count m
  omega
theorem smores_solution (m : SmoreModel) : m.toBuy = 18 := smore_buy m

structure ParkingModel where
  cars wheelsPerCar carWheels allWheels motorcycleWheels wheelsPerMotorcycle motorcycles : ℕ
  hCars : cars = 19
  hWheelsPerCar : wheelsPerCar = 5
  hCarWheels : carWheels = cars * wheelsPerCar
  hAllWheels : allWheels = 117
  hMotorcycleWheels : carWheels + motorcycleWheels = allWheels
  hWheelsPerMotorcycle : wheelsPerMotorcycle = 2
  hMotorcycles : wheelsPerMotorcycle * motorcycles = motorcycleWheels

theorem parking_car_wheels (m : ParkingModel) : m.carWheels = 95 := by omega
theorem parking_motorcycle_wheels (m : ParkingModel) : m.motorcycleWheels = 22 := by
  have h := parking_car_wheels m
  omega
theorem parking_count (m : ParkingModel) : m.motorcycles = 11 := by
  have h := parking_motorcycle_wheels m
  omega
theorem parking_solution (m : ParkingModel) : m.motorcycles = 11 := parking_count m

structure RideModel where
  ferrisRides ferrisPer ferrisTickets coasterRides coasterPer coasterTickets logRides logPer logTickets total have toBuy : ℕ
  hFerrisRides : ferrisRides = 2
  hFerrisPer : ferrisPer = 2
  hFerrisTickets : ferrisTickets = ferrisRides * ferrisPer
  hCoasterRides : coasterRides = 3
  hCoasterPer : coasterPer = 5
  hCoasterTickets : coasterTickets = coasterRides * coasterPer
  hLogRides : logRides = 7
  hLogPer : logPer = 1
  hLogTickets : logTickets = logRides * logPer
  hTotal : total = ferrisTickets + coasterTickets + logTickets
  hHave : have = 20
  hBuy : have + toBuy = total

theorem ride_costs (m : RideModel) :
    m.ferrisTickets = 4 ∧ m.coasterTickets = 15 ∧ m.logTickets = 7 := by omega
theorem ride_total (m : RideModel) : m.total = 26 := by
  have h := ride_costs m
  omega
theorem ride_buy (m : RideModel) : m.toBuy = 6 := by
  have h := ride_total m
  omega
theorem rides_solution (m : RideModel) : m.toBuy = 6 := ride_buy m

structure RachelModel where
  rate minutes bedtime nextDay total : ℕ
  hRate : rate = 5
  hMinutes : minutes = 12
  hBedtime : bedtime = rate * minutes
  hNextDay : nextDay = 16
  hTotal : total = bedtime + nextDay

theorem rachel_bedtime (m : RachelModel) : m.bedtime = 60 := by omega
theorem rachel_total (m : RachelModel) : m.total = 76 := by
  have h := rachel_bedtime m
  omega
theorem rachel_solution (m : RachelModel) : m.total = 76 := rachel_total m

structure BikeModel where
  rotationsPerBlock targetBlocks targetRotations already additional : ℕ
  hRotationsPerBlock : rotationsPerBlock = 200
  hTargetBlocks : targetBlocks = 8
  hTarget : targetRotations = rotationsPerBlock * targetBlocks
  hAlready : already = 600
  hAdditional : already + additional = targetRotations

theorem bike_target (m : BikeModel) : m.targetRotations = 1600 := by omega
theorem bike_additional (m : BikeModel) : m.additional = 1000 := by
  have h := bike_target m
  omega
theorem bike_solution (m : BikeModel) : m.additional = 1000 := bike_additional m

structure DollModel where
  added original total : ℕ
  hAdded : added = 2
  hIncrease : 4 * added = original
  hTotal : total = original + added

theorem doll_original (m : DollModel) : m.original = 8 := by omega
theorem doll_total (m : DollModel) : m.total = 10 := by
  have h := doll_original m
  omega
theorem dolls_solution (m : DollModel) : m.total = 10 := doll_total m

structure MosquitoModel where
  dropsPerFeed dropsPerLiter lethalLiters lethalDrops mosquitoes : ℕ
  hDropsPerFeed : dropsPerFeed = 20
  hDropsPerLiter : dropsPerLiter = 5000
  hLethalLiters : lethalLiters = 3
  hLethalDrops : lethalDrops = dropsPerLiter * lethalLiters
  hMosquitoes : dropsPerFeed * mosquitoes = lethalDrops

theorem mosquito_lethal_drops (m : MosquitoModel) : m.lethalDrops = 15000 := by omega
theorem mosquito_count (m : MosquitoModel) : m.mosquitoes = 750 := by
  have h := mosquito_lethal_drops m
  omega
theorem mosquito_solution (m : MosquitoModel) : m.mosquitoes = 750 := mosquito_count m

end LemmaWeave.Problems.GSM8K.Sprint0928A10
