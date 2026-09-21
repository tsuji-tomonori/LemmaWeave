import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0922A04

structure ArvinRun where
  d1 d2 d3 d4 d5 : ℕ
  h1 : d1 = 2
  h2 : d2 = d1 + 1
  h3 : d3 = d2 + 1
  h4 : d4 = d3 + 1
  h5 : d5 = d4 + 1
theorem arvin_day_two (m : ArvinRun) : m.d2 = 3 := by omega
theorem arvin_day_three (m : ArvinRun) : m.d3 = 4 := by rw [m.h3, arvin_day_two m]; norm_num
theorem arvin_day_four (m : ArvinRun) : m.d4 = 5 := by rw [m.h4, arvin_day_three m]; norm_num
theorem arvin_solution (m : ArvinRun) : m.d5 = 6 := by rw [m.h5, arvin_day_four m]; norm_num

structure CarlaWater where
  water soda : ℕ
  hTotal : water + soda = 54
  hSoda : soda + 6 = 3 * water
theorem carla_total_equation (m : CarlaWater) : m.water + m.soda = 54 := m.hTotal
theorem carla_soda_equation (m : CarlaWater) : m.soda + 6 = 3 * m.water := m.hSoda
theorem carla_solution (m : CarlaWater) : m.water = 15 := by
  have h1 := carla_total_equation m
  have h2 := carla_soda_equation m
  omega

structure PaperPlates where
  owned buy : ℕ
  hOwned : owned = 21 + 28
  hBuy : buy + owned = 84
theorem plates_owned (m : PaperPlates) : m.owned = 49 := by rw [m.hOwned]; norm_num
theorem plates_solution (m : PaperPlates) : m.buy = 35 := by
  have h := m.hBuy
  rw [plates_owned m] at h
  omega

structure Accidents where
  seconds big collisions disjointTotal overlapTotal : ℕ
  hSeconds : seconds = 4 * 60
  hBig : 20 * big = seconds
  hCollisions : 10 * collisions = seconds
  hDisjoint : disjointTotal = big + collisions
  hOverlap : overlapTotal = collisions
theorem accidents_seconds (m : Accidents) : m.seconds = 240 := by rw [m.hSeconds]; norm_num
theorem accidents_big (m : Accidents) : m.big = 12 := by
  have h := m.hBig; rw [accidents_seconds m] at h; omega
theorem accidents_collisions (m : Accidents) : m.collisions = 24 := by
  have h := m.hCollisions; rw [accidents_seconds m] at h; omega
theorem accidents_disjoint (m : Accidents) : m.disjointTotal = 36 := by
  rw [m.hDisjoint, accidents_big m, accidents_collisions m]; norm_num
theorem accidents_overlap (m : Accidents) : m.overlapTotal = 24 := by
  rw [m.hOverlap, accidents_collisions m]
theorem accidents_nonunique (m : Accidents) : m.disjointTotal ≠ m.overlapTotal := by
  rw [accidents_disjoint m, accidents_overlap m]; norm_num

structure Countries where
  joseph patrick zack : ℕ
  hJoseph : 2 * joseph = 6
  hPatrick : patrick = 3 * joseph
  hZack : zack = 2 * patrick
theorem countries_joseph (m : Countries) : m.joseph = 3 := by omega
theorem countries_patrick (m : Countries) : m.patrick = 9 := by
  rw [m.hPatrick, countries_joseph m]; norm_num
theorem countries_solution (m : Countries) : m.zack = 18 := by
  rw [m.hZack, countries_patrick m]; norm_num

structure Perfume where
  christianEarned sueEarned saved needed : ℕ
  hChristian : christianEarned = 4 * 5
  hSue : sueEarned = 6 * 2
  hSaved : saved = 5 + christianEarned + 7 + sueEarned
  hNeeded : needed + saved = 50
theorem perfume_christian_earned (m : Perfume) : m.christianEarned = 20 := by rw [m.hChristian]; norm_num
theorem perfume_sue_earned (m : Perfume) : m.sueEarned = 12 := by rw [m.hSue]; norm_num
theorem perfume_saved (m : Perfume) : m.saved = 44 := by
  rw [m.hSaved, perfume_christian_earned m, perfume_sue_earned m]; norm_num
theorem perfume_solution (m : Perfume) : m.needed = 6 := by
  have h := m.hNeeded; rw [perfume_saved m] at h; omega

structure Cupcakes where
  dora bettyHours betty difference : ℕ
  hDora : dora = 8 * 5
  hHours : bettyHours + 2 = 5
  hBetty : betty = 10 * bettyHours
  hDifference : difference + betty = dora
theorem cupcakes_dora (m : Cupcakes) : m.dora = 40 := by rw [m.hDora]; norm_num
theorem cupcakes_betty_hours (m : Cupcakes) : m.bettyHours = 3 := by omega
theorem cupcakes_betty (m : Cupcakes) : m.betty = 30 := by
  rw [m.hBetty, cupcakes_betty_hours m]; norm_num
theorem cupcakes_solution (m : Cupcakes) : m.difference = 10 := by
  have h := m.hDifference
  rw [cupcakes_dora m, cupcakes_betty m] at h
  omega

structure Clerks where
  perClerk clerks : ℕ
  hCapacity : perClerk = 25 * 8
  hTotal : clerks * perClerk = 2400
theorem clerks_capacity (m : Clerks) : m.perClerk = 200 := by rw [m.hCapacity]; norm_num
theorem clerks_solution (m : Clerks) : m.clerks = 12 := by
  have h := m.hTotal; rw [clerks_capacity m] at h; omega

structure RescueDogs where
  afterArrival afterFirst remaining : ℕ
  hArrival : afterArrival = 200 + 100
  hFirst : afterFirst + 40 = afterArrival
  hRemaining : remaining + 60 = afterFirst
theorem dogs_after_arrival (m : RescueDogs) : m.afterArrival = 300 := by rw [m.hArrival]; norm_num
theorem dogs_after_first (m : RescueDogs) : m.afterFirst = 260 := by
  have h := m.hFirst; rw [dogs_after_arrival m] at h; omega
theorem dogs_solution (m : RescueDogs) : m.remaining = 200 := by
  have h := m.hRemaining; rw [dogs_after_first m] at h; omega

structure Figurines where
  basswood aspenRate aspen butternut total : ℕ
  hBasswood : basswood = 15 * 3
  hAspenRate : aspenRate = 2 * 3
  hAspen : aspen = 20 * aspenRate
  hButternut : butternut = 20 * 4
  hTotal : total = basswood + aspen + butternut
theorem figurines_basswood (m : Figurines) : m.basswood = 45 := by rw [m.hBasswood]; norm_num
theorem figurines_aspen_rate (m : Figurines) : m.aspenRate = 6 := by rw [m.hAspenRate]; norm_num
theorem figurines_aspen (m : Figurines) : m.aspen = 120 := by
  rw [m.hAspen, figurines_aspen_rate m]; norm_num
theorem figurines_butternut (m : Figurines) : m.butternut = 80 := by rw [m.hButternut]; norm_num
theorem figurines_solution (m : Figurines) : m.total = 245 := by
  rw [m.hTotal, figurines_basswood m, figurines_aspen m, figurines_butternut m]; norm_num

structure Phones where
  profit costEach profitEach price : ℕ
  hProfit : 3 * profit = 3000
  hCostEach : 200 * costEach = 3000
  hProfitEach : 200 * profitEach = profit
  hPrice : price = costEach + profitEach
theorem phones_profit (m : Phones) : m.profit = 1000 := by omega
theorem phones_cost_each (m : Phones) : m.costEach = 15 := by omega
theorem phones_profit_each (m : Phones) : m.profitEach = 5 := by
  have h := m.hProfitEach; rw [phones_profit m] at h; omega
theorem phones_solution (m : Phones) : m.price = 20 := by
  rw [m.hPrice, phones_cost_each m, phones_profit_each m]; norm_num

structure Parents where
  total children parents : ℕ
  hTotal : total = 3 * 25
  hChildren : children = 14 + 11
  hParents : parents + children = total
theorem parents_total (m : Parents) : m.total = 75 := by rw [m.hTotal]; norm_num
theorem parents_children (m : Parents) : m.children = 25 := by rw [m.hChildren]; norm_num
theorem parents_solution (m : Parents) : m.parents = 50 := by
  have h := m.hParents
  rw [parents_total m, parents_children m] at h
  omega

structure Driving where
  speed hours : ℕ
  hSpeed : 3 * speed = 120
  hHours : speed * hours = 200
theorem driving_speed (m : Driving) : m.speed = 40 := by omega
theorem driving_solution (m : Driving) : m.hours = 5 := by
  have h := m.hHours; rw [driving_speed m] at h; omega

structure UsedCar where
  original : ℕ
  hPercent : 40 * original = 100 * 15000
theorem used_car_equation (m : UsedCar) : 40 * m.original = 100 * 15000 := m.hPercent
theorem used_car_solution (m : UsedCar) : m.original = 37500 := by
  have h := used_car_equation m
  omega

structure HomeRuns where
  dave : ℕ
  hComparison : 2 * dave = 755 + 175
theorem home_runs_equation (m : HomeRuns) : 2 * m.dave = 930 := by
  rw [m.hComparison]; norm_num
theorem home_runs_solution (m : HomeRuns) : m.dave = 465 := by
  have h := home_runs_equation m
  omega

end LemmaWeave.Problems.GSM8K.Sprint0922A04
