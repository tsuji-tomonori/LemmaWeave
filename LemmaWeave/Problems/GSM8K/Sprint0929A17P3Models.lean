import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A17P3

structure CornPerKidModel where
  dinnerCost : ℕ
  earnings : ℕ
  rows : ℕ
  earsPerRow : ℕ
  ears : ℕ
  seedsPerEar : ℕ
  seeds : ℕ
  seedsPerBag : ℕ
  bags : ℕ
  hDinner : dinnerCost = 36
  hHalfSpent : earnings = 2 * dinnerCost
  hPay : 2 * earnings = 3 * rows
  hEarsPerRow : earsPerRow = 70
  hEars : ears = rows * earsPerRow
  hSeedsPerEar : seedsPerEar = 2
  hSeeds : seeds = ears * seedsPerEar
  hBagSize : seedsPerBag = 48
  hBags : seeds = bags * seedsPerBag

theorem corn_earnings (m : CornPerKidModel) : m.earnings = 72 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  norm_num at *

theorem corn_rows (m : CornPerKidModel) : m.rows = 48 := by
  have hEarn := corn_earnings m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  norm_num at * <;> omega

theorem corn_ears (m : CornPerKidModel) : m.ears = 3360 := by
  have hRows := corn_rows m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  norm_num at *

theorem corn_seeds (m : CornPerKidModel) : m.seeds = 6720 := by
  have hEars := corn_ears m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  norm_num at *

theorem corn_solution (m : CornPerKidModel) : m.bags = 140 := by
  have hSeeds := corn_seeds m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  norm_num at * <;> omega

structure AgesModel where
  femNow : ℕ
  multiplier : ℕ
  mattNow : ℕ
  years : ℕ
  femFuture : ℕ
  mattFuture : ℕ
  totalFuture : ℕ
  hFem : femNow = 11
  hMultiplier : multiplier = 4
  hMatt : mattNow = multiplier * femNow
  hYears : years = 2
  hFemFuture : femFuture = femNow + years
  hMattFuture : mattFuture = mattNow + years
  hTotal : totalFuture = femFuture + mattFuture

theorem ages_matt_now (m : AgesModel) : m.mattNow = 44 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  norm_num at *

theorem ages_future_values (m : AgesModel) : m.femFuture = 13 ∧ m.mattFuture = 46 := by
  have hMatt := ages_matt_now m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  omega

theorem ages_solution (m : AgesModel) : m.totalFuture = 59 := by
  have hFuture := ages_future_values m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  omega

structure TripModel where
  vans : ℕ
  studentsPerVan : ℕ
  vanStudents : ℕ
  minibuses : ℕ
  studentsPerMinibus : ℕ
  minibusStudents : ℕ
  totalStudents : ℕ
  hVans : vans = 6
  hPerVan : studentsPerVan = 10
  hVanStudents : vanStudents = vans * studentsPerVan
  hMinibuses : minibuses = 4
  hPerMinibus : studentsPerMinibus = 24
  hMinibusStudents : minibusStudents = minibuses * studentsPerMinibus
  hTotal : totalStudents = vanStudents + minibusStudents

theorem trip_van_students (m : TripModel) : m.vanStudents = 60 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  norm_num at *

theorem trip_minibus_students (m : TripModel) : m.minibusStudents = 96 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  norm_num at *

theorem trip_solution (m : TripModel) : m.totalStudents = 156 := by
  have hVan := trip_van_students m
  have hMini := trip_minibus_students m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  omega

structure PlantsModel where
  roseBought : ℕ
  roseGift : ℕ
  selfRoses : ℕ
  rosePrice : ℕ
  roseCost : ℕ
  aloeCount : ℕ
  aloePrice : ℕ
  aloeCost : ℕ
  selfTotal : ℕ
  hRoseBought : roseBought = 6
  hRoseGift : roseGift = 2
  hRoseBalance : roseBought = selfRoses + roseGift
  hRosePrice : rosePrice = 75
  hRoseCost : roseCost = selfRoses * rosePrice
  hAloeCount : aloeCount = 2
  hAloePrice : aloePrice = 100
  hAloeCost : aloeCost = aloeCount * aloePrice
  hTotal : selfTotal = roseCost + aloeCost

theorem plants_self_roses (m : PlantsModel) : m.selfRoses = 4 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  omega

theorem plants_rose_cost (m : PlantsModel) : m.roseCost = 300 := by
  have hRoses := plants_self_roses m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  norm_num at *

theorem plants_aloe_cost (m : PlantsModel) : m.aloeCost = 200 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  norm_num at *

theorem plants_solution (m : PlantsModel) : m.selfTotal = 500 := by
  have hRose := plants_rose_cost m
  have hAloe := plants_aloe_cost m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  omega

structure DriveModel where
  speed : ℕ
  firstHours : ℕ
  breakMinutes : ℕ
  secondHours : ℕ
  drivingHours : ℕ
  totalMiles : ℕ
  hSpeed : speed = 60
  hFirst : firstHours = 4
  hBreak : breakMinutes = 30
  hSecond : secondHours = 9
  hDriving : drivingHours = firstHours + secondHours
  hTotal : totalMiles = speed * drivingHours

theorem drive_hours (m : DriveModel) : m.drivingHours = 13 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega

theorem drive_solution (m : DriveModel) : m.totalMiles = 780 := by
  have hHours := drive_hours m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  norm_num at *

end LemmaWeave.Problems.GSM8K.Sprint0929A17P3
