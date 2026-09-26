import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A11

structure SharedMoney where
  justin : ℕ
  joshua : ℕ
  hTotal : justin + joshua = 40
  hTriple : joshua = 3 * justin

theorem money_justin (m : SharedMoney) : m.justin = 10 := by
  have ht := m.hTotal
  have hr := m.hTriple
  omega
theorem money_solution (m : SharedMoney) : m.joshua = 30 := by
  rw [m.hTriple, money_justin m]

structure MarbleCollection where
    jennyRed : ℕ
    maryRed : ℕ
    anieRed : ℕ
    jennyBlue : ℕ
    maryBlue : ℕ
    anieBlue : ℕ
    totalBlue : ℕ
  hJennyRed : jennyRed = 30
  hMaryRed : maryRed = 2 * jennyRed
  hAnieRed : anieRed = maryRed + 20
  hJennyBlue : jennyBlue = 25
  hAnieBlue : anieBlue = 2 * jennyBlue
  hMaryBlue : maryBlue * 2 = anieBlue
  hTotalBlue : totalBlue = jennyBlue + maryBlue + anieBlue

theorem marbles_mary_red (m : MarbleCollection) : m.maryRed = 60 := by
  rw [m.hMaryRed, m.hJennyRed]
theorem marbles_anie_red (m : MarbleCollection) : m.anieRed = 80 := by
  rw [m.hAnieRed, marbles_mary_red m]
theorem marbles_anie_blue (m : MarbleCollection) : m.anieBlue = 50 := by
  rw [m.hAnieBlue, m.hJennyBlue]
theorem marbles_mary_blue (m : MarbleCollection) : m.maryBlue = 25 := by
  have h := m.hMaryBlue
  rw [marbles_anie_blue m] at h
  omega
theorem marbles_solution (m : MarbleCollection) : m.totalBlue = 100 := by
  rw [m.hTotalBlue, m.hJennyBlue, marbles_mary_blue m, marbles_anie_blue m]

structure AquariumRocks where
  eaten : ℕ
  afterEating : ℕ
  final : ℕ
  hEaten : eaten * 2 = 10
  hAfterEating : afterEating + eaten = 10
  hFinal : final = afterEating + 2

theorem rocks_eaten (m : AquariumRocks) : m.eaten = 5 := by cases m <;> omega
theorem rocks_after_eating (m : AquariumRocks) : m.afterEating = 5 := by
  have h := m.hAfterEating
  rw [rocks_eaten m] at h
  omega
theorem rocks_solution (m : AquariumRocks) : m.final = 7 := by
  rw [m.hFinal, rocks_after_eating m]

structure ClothingPurchase where
  shirts : ℕ
  pants : ℕ
  total : ℕ
  hShirts : shirts = 3 * 20
  hPants : pants = 50
  hTotal : total = shirts + pants

theorem purchase_shirts (m : ClothingPurchase) : m.shirts = 60 := by rw [m.hShirts]
theorem purchase_solution (m : ClothingPurchase) : m.total = 110 := by
  rw [m.hTotal, purchase_shirts m, m.hPants]

structure BenchPress where
  loss : ℕ
  afterInjury : ℕ
  final : ℕ
  hLoss : loss * 5 = 500 * 4
  hAfter : afterInjury + loss = 500
  hFinal : final = 3 * afterInjury

theorem bench_loss (m : BenchPress) : m.loss = 400 := by cases m <;> omega
theorem bench_after_injury (m : BenchPress) : m.afterInjury = 100 := by
  have h := m.hAfter
  rw [bench_loss m] at h
  omega
theorem bench_solution (m : BenchPress) : m.final = 300 := by
  rw [m.hFinal, bench_after_injury m]

structure GuitarStores where
  gcDiscount : ℕ
  gcCost : ℕ
  swDiscount : ℕ
  swCost : ℕ
  savings : ℕ
  hGCDiscount : gcDiscount * 100 = 1000 * 15
  hGCCost : gcCost + gcDiscount = 1000 + 100
  hSWDiscount : swDiscount * 100 = 1000 * 10
  hSWCost : swCost + swDiscount = 1000
  hSavings : savings + swCost = gcCost

theorem guitar_gc_discount (m : GuitarStores) : m.gcDiscount = 150 := by cases m <;> omega
theorem guitar_gc_cost (m : GuitarStores) : m.gcCost = 950 := by
  have h := m.hGCCost
  rw [guitar_gc_discount m] at h
  omega
theorem guitar_sw_discount (m : GuitarStores) : m.swDiscount = 100 := by cases m <;> omega
theorem guitar_sw_cost (m : GuitarStores) : m.swCost = 900 := by
  have h := m.hSWCost
  rw [guitar_sw_discount m] at h
  omega
theorem guitar_solution (m : GuitarStores) : m.savings = 50 := by
  have h := m.hSavings
  rw [guitar_sw_cost m, guitar_gc_cost m] at h
  omega

/-- The prompt fixes mistake counts and Brent's score, but does not fix points lost per mistake. -/
structure GeometryExam where
    perfect madelineMistakes leoMistakes brentMistakes brentScore
      madelineScore : ℕ
      pointsPerMistake : ℕ
  hMadelineMistakes : madelineMistakes = 2
  hLeoMistakes : leoMistakes = 2 * madelineMistakes
  hBrentMistakes : brentMistakes = leoMistakes + 1
  hBrentScore : brentScore = 25
  hBrentScoring : brentScore + brentMistakes * pointsPerMistake = perfect
  hMadelineScoring : madelineScore + madelineMistakes * pointsPerMistake = perfect

theorem geometry_leo_mistakes (m : GeometryExam) : m.leoMistakes = 4 := by
  rw [m.hLeoMistakes, m.hMadelineMistakes]
theorem geometry_brent_mistakes (m : GeometryExam) : m.brentMistakes = 5 := by
  rw [m.hBrentMistakes, geometry_leo_mistakes m]
theorem geometry_reference_solution (m : GeometryExam) (hp : m.pointsPerMistake = 1) :
    m.madelineScore = 28 := by
  have hb := m.hBrentScoring
  have hm := m.hMadelineScoring
  rw [m.hBrentScore, geometry_brent_mistakes m, hp] at hb
  rw [m.hMadelineMistakes, hp] at hm
  omega
theorem geometry_two_point_solution (m : GeometryExam) (hp : m.pointsPerMistake = 2) :
    m.madelineScore = 31 := by
  have hb := m.hBrentScoring
  have hm := m.hMadelineScoring
  rw [m.hBrentScore, geometry_brent_mistakes m, hp] at hb
  rw [m.hMadelineMistakes, hp] at hm
  omega
theorem geometry_two_scoring_readings_differ : (28 : ℕ) ≠ 31 := by norm_num

structure EggShelf where
  total : ℕ
  used : ℕ
  afterUse : ℕ
  final : ℕ
  hTotal : total = 6 * 12
  hUsed : used * 2 = total
  hAfterUse : afterUse + used = total
  hFinal : final + 15 = afterUse

theorem eggs_total (m : EggShelf) : m.total = 72 := by rw [m.hTotal]
theorem eggs_used (m : EggShelf) : m.used = 36 := by
  have h := m.hUsed
  rw [eggs_total m] at h
  omega
theorem eggs_after_use (m : EggShelf) : m.afterUse = 36 := by
  have h := m.hAfterUse
  rw [eggs_total m, eggs_used m] at h
  omega
theorem eggs_solution (m : EggShelf) : m.final = 21 := by
  have h := m.hFinal
  rw [eggs_after_use m] at h
  omega

/-- Day 1 is the stated initial six-fish state; doubling occurs before days 2--7 events. -/
structure FishGrowth where
    day3Before day3Removed day3After day5Before day5Removed day5After
      day7Before : ℕ
      final : ℕ
  hDay3Before : day3Before = 6 * 2 * 2
  hDay3Removed : day3Removed * 3 = day3Before
  hDay3After : day3After + day3Removed = day3Before
  hDay5Before : day5Before = day3After * 2 * 2
  hDay5Removed : day5Removed * 4 = day5Before
  hDay5After : day5After + day5Removed = day5Before
  hDay7Before : day7Before = day5After * 2 * 2
  hFinal : final = day7Before + 15

theorem fish_day3_before (m : FishGrowth) : m.day3Before = 24 := by rw [m.hDay3Before]
theorem fish_day3_removed (m : FishGrowth) : m.day3Removed = 8 := by
  have h := m.hDay3Removed
  rw [fish_day3_before m] at h
  omega
theorem fish_day3_after (m : FishGrowth) : m.day3After = 16 := by
  have h := m.hDay3After
  rw [fish_day3_before m, fish_day3_removed m] at h
  omega
theorem fish_day5_before (m : FishGrowth) : m.day5Before = 64 := by
  rw [m.hDay5Before, fish_day3_after m]
theorem fish_day5_removed (m : FishGrowth) : m.day5Removed = 16 := by
  have h := m.hDay5Removed
  rw [fish_day5_before m] at h
  omega
theorem fish_day5_after (m : FishGrowth) : m.day5After = 48 := by
  have h := m.hDay5After
  rw [fish_day5_before m, fish_day5_removed m] at h
  omega
theorem fish_day7_before (m : FishGrowth) : m.day7Before = 192 := by
  rw [m.hDay7Before, fish_day5_after m]
theorem fish_solution (m : FishGrowth) : m.final = 207 := by
  rw [m.hFinal, fish_day7_before m]

structure CafeteriaMovement where
  inside : ℕ
  outside : ℕ
  ranInside : ℕ
  final : ℕ
  hInside : inside * 3 = 90 * 2
  hOutside : outside + inside = 90
  hRanInside : ranInside * 3 = outside
  hFinal : final + 3 = inside + ranInside

theorem cafeteria_inside (m : CafeteriaMovement) : m.inside = 60 := by cases m <;> omega
theorem cafeteria_outside (m : CafeteriaMovement) : m.outside = 30 := by
  have h := m.hOutside
  rw [cafeteria_inside m] at h
  omega
theorem cafeteria_ran_inside (m : CafeteriaMovement) : m.ranInside = 10 := by
  have h := m.hRanInside
  rw [cafeteria_outside m] at h
  omega
theorem cafeteria_solution (m : CafeteriaMovement) : m.final = 67 := by
  have h := m.hFinal
  rw [cafeteria_inside m, cafeteria_ran_inside m] at h
  omega

structure DiceSides where
  dice : ℕ
  sides : ℕ
  hDice : dice = 4 + 4
  hSides : sides = dice * 6

theorem dice_count (m : DiceSides) : m.dice = 8 := by rw [m.hDice]
theorem dice_solution (m : DiceSides) : m.sides = 48 := by rw [m.hSides, dice_count m]

structure DoveCount where
  eggs : ℕ
  hatched : ℕ
  total : ℕ
  hEggs : eggs = 20 * 3
  hHatched : hatched * 4 = eggs * 3
  hTotal : total = 20 + hatched

theorem doves_eggs (m : DoveCount) : m.eggs = 60 := by rw [m.hEggs]
theorem doves_hatched (m : DoveCount) : m.hatched = 45 := by
  have h := m.hHatched
  rw [doves_eggs m] at h
  omega
theorem doves_solution (m : DoveCount) : m.total = 65 := by rw [m.hTotal, doves_hatched m]

structure TrafficTrip where
  traffic : ℕ
  total : ℕ
  hTraffic : traffic = 2 * 5
  hTotal : total = 5 + traffic

theorem trip_traffic (m : TrafficTrip) : m.traffic = 10 := by rw [m.hTraffic]
theorem trip_solution (m : TrafficTrip) : m.total = 15 := by rw [m.hTotal, trip_traffic m]

structure TradingCards where
  alien : ℕ
  monster : ℕ
  hAlien : alien * 3 = 48
  hMonster : monster = 2 * alien

theorem cards_alien (m : TradingCards) : m.alien = 16 := by cases m <;> omega
theorem cards_solution (m : TradingCards) : m.monster = 32 := by rw [m.hMonster, cards_alien m]

structure ZitClasses where
  swansonTotal : ℕ
  jonesTotal : ℕ
  difference : ℕ
  hSwanson : swansonTotal = 25 * 5
  hJones : jonesTotal = 32 * 6
  hDifference : difference + swansonTotal = jonesTotal

theorem zits_swanson (m : ZitClasses) : m.swansonTotal = 125 := by rw [m.hSwanson]
theorem zits_jones (m : ZitClasses) : m.jonesTotal = 192 := by rw [m.hJones]
theorem zits_solution (m : ZitClasses) : m.difference = 67 := by
  have h := m.hDifference
  rw [zits_swanson m, zits_jones m] at h
  omega

end LemmaWeave.Problems.GSM8K.Sprint0923A11
