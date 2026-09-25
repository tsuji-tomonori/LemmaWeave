import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0922A01

structure Books where
  katie : ℕ
  gary : ℕ
  total : ℕ
  hKatie : 2 * katie = 6
  hGary : gary = 5 * (6 + katie)
  hTotal : total = 6 + katie + gary
theorem books_katie (m : Books) : m.katie = 3 := by have h := m.hKatie; omega
theorem books_gary (m : Books) : m.gary = 45 := by
  calc m.gary = 5 * (6 + m.katie) := m.hGary
    _ = 5 * (6 + 3) := by rw [books_katie m]
    _ = 45 := by norm_num
theorem books_solution (m : Books) : m.total = 54 := by
  calc m.total = 6 + m.katie + m.gary := m.hTotal
    _ = 6 + 3 + 45 := by rw [books_katie m, books_gary m]
    _ = 54 := by norm_num

structure PigProfit where
  firstFood : ℕ
  secondFood : ℕ
  totalFood : ℕ
  revenue : ℕ
  profit : ℕ
  hFirst : firstFood = 3 * 12 * 10
  hSecond : secondFood = 3 * 16 * 10
  hFood : totalFood = firstFood + secondFood
  hRevenue : revenue = 6 * 300
  hProfit : profit = revenue - totalFood
theorem pigs_first_food (m : PigProfit) : m.firstFood = 360 := by rw [m.hFirst]; norm_num
theorem pigs_second_food (m : PigProfit) : m.secondFood = 480 := by rw [m.hSecond]; norm_num
theorem pigs_total_food (m : PigProfit) : m.totalFood = 840 := by
  calc m.totalFood = m.firstFood + m.secondFood := m.hFood
    _ = 360 + 480 := by rw [pigs_first_food m, pigs_second_food m]
    _ = 840 := by norm_num
theorem pigs_revenue (m : PigProfit) : m.revenue = 1800 := by rw [m.hRevenue]; norm_num
theorem pigs_solution (m : PigProfit) : m.profit = 960 := by
  calc m.profit = m.revenue - m.totalFood := m.hProfit
    _ = 1800 - 840 := by rw [pigs_revenue m, pigs_total_food m]
    _ = 960 := by norm_num

structure Leaves where
  total : ℕ
  brown : ℕ
  green : ℕ
  yellow : ℕ
  hTotal : total = 12 + 13
  hBrown : 100 * brown = 20 * total
  hGreen : 100 * green = 20 * total
  hYellow : yellow = total - brown - green
theorem leaves_total (m : Leaves) : m.total = 25 := by rw [m.hTotal]; norm_num
theorem leaves_brown (m : Leaves) : m.brown = 5 := by
  have h := m.hBrown; rw [leaves_total m] at h; omega
theorem leaves_green (m : Leaves) : m.green = 5 := by
  have h := m.hGreen; rw [leaves_total m] at h; omega
theorem leaves_solution (m : Leaves) : m.yellow = 15 := by
  calc m.yellow = m.total - m.brown - m.green := m.hYellow
    _ = 25 - 5 - 5 := by rw [leaves_total m, leaves_brown m, leaves_green m]
    _ = 15 := by norm_num

structure Ducks where
  adelaide : ℕ
  ephraim : ℕ
  kolton : ℕ
  total : ℕ
  average : ℕ
  hAdelaide : adelaide = 30
  hTwice : adelaide = 2 * ephraim
  hFewer : kolton = ephraim + 45
  hTotal : total = adelaide + ephraim + kolton
  hAverage : 3 * average = total
theorem ducks_ephraim (m : Ducks) : m.ephraim = 15 := by
  have ha := m.hAdelaide; have ht := m.hTwice; omega
theorem ducks_kolton (m : Ducks) : m.kolton = 60 := by
  calc m.kolton = m.ephraim + 45 := m.hFewer
    _ = 15 + 45 := by rw [ducks_ephraim m]
    _ = 60 := by norm_num
theorem ducks_total (m : Ducks) : m.total = 105 := by
  calc m.total = m.adelaide + m.ephraim + m.kolton := m.hTotal
    _ = 30 + 15 + 60 := by rw [m.hAdelaide, ducks_ephraim m, ducks_kolton m]
    _ = 105 := by norm_num
theorem ducks_solution (m : Ducks) : m.average = 35 := by
  have h := m.hAverage; rw [ducks_total m] at h; omega

structure Weight where
  mel : ℕ
  hBrenda : 3 * mel + 10 = 220
theorem weight_difference (m : Weight) : 3 * m.mel = 210 := by have h := m.hBrenda; omega
theorem weight_solution (m : Weight) : m.mel = 70 := by have h := m.hBrenda; omega

structure Rabbits where
  firstBorn : ℕ
  firstAdopted : ℕ
  firstHome : ℕ
  secondHome : ℕ
  offspring : ℕ
  total : ℕ
  hFirstBorn : firstBorn = 10 * 10
  hFirstAdopted : 2 * firstAdopted = firstBorn
  hFirstHome : firstHome = firstBorn - firstAdopted + 5
  hSecondHome : secondHome = 60 - 4
  hOffspring : offspring = firstHome + secondHome
  hTotal : total = offspring + 10
theorem rabbits_first_born (m : Rabbits) : m.firstBorn = 100 := by rw [m.hFirstBorn]; norm_num
theorem rabbits_first_adopted (m : Rabbits) : m.firstAdopted = 50 := by
  have h := m.hFirstAdopted; rw [rabbits_first_born m] at h; omega
theorem rabbits_first_home (m : Rabbits) : m.firstHome = 55 := by
  calc m.firstHome = m.firstBorn - m.firstAdopted + 5 := m.hFirstHome
    _ = 100 - 50 + 5 := by rw [rabbits_first_born m, rabbits_first_adopted m]
    _ = 55 := by norm_num
theorem rabbits_second_home (m : Rabbits) : m.secondHome = 56 := by rw [m.hSecondHome]; norm_num
theorem rabbits_offspring (m : Rabbits) : m.offspring = 111 := by
  calc m.offspring = m.firstHome + m.secondHome := m.hOffspring
    _ = 55 + 56 := by rw [rabbits_first_home m, rabbits_second_home m]
    _ = 111 := by norm_num
theorem rabbits_solution (m : Rabbits) : m.total = 121 := by
  calc m.total = m.offspring + 10 := m.hTotal
    _ = 111 + 10 := by rw [rabbits_offspring m]
    _ = 121 := by norm_num

structure Followers where
  susy2 : ℕ
  susy3 : ℕ
  susyTotal : ℕ
  sarah2 : ℕ
  sarah3 : ℕ
  sarahTotal : ℕ
  maximum : ℕ
  hSusy2 : susy2 = 40 / 2
  hSusy3 : susy3 = susy2 / 2
  hSusyTotal : susyTotal = 100 + 40 + susy2 + susy3
  hSarah2 : sarah2 = 90 / 3
  hSarah3 : sarah3 = sarah2 / 3
  hSarahTotal : sarahTotal = 50 + 90 + sarah2 + sarah3
  hMax : maximum = max susyTotal sarahTotal
theorem followers_susy (m : Followers) : m.susyTotal = 170 := by
  rw [m.hSusyTotal, m.hSusy2, m.hSusy3, m.hSusy2]; norm_num
theorem followers_sarah (m : Followers) : m.sarahTotal = 180 := by
  rw [m.hSarahTotal, m.hSarah2, m.hSarah3, m.hSarah2]; norm_num
theorem followers_solution (m : Followers) : m.maximum = 180 := by
  rw [m.hMax, followers_susy m, followers_sarah m]; norm_num

structure Bathwater where
  dailyBuckets : ℕ
  dailyOunces : ℕ
  weeklyOunces : ℕ
  hBuckets : dailyBuckets = 14 - 3
  hDaily : dailyOunces = dailyBuckets * 120
  hWeekly : weeklyOunces = 7 * dailyOunces
theorem bath_buckets (m : Bathwater) : m.dailyBuckets = 11 := by rw [m.hBuckets]; norm_num
theorem bath_daily (m : Bathwater) : m.dailyOunces = 1320 := by
  calc m.dailyOunces = m.dailyBuckets * 120 := m.hDaily
    _ = 11 * 120 := by rw [bath_buckets m]
    _ = 1320 := by norm_num
theorem bath_solution (m : Bathwater) : m.weeklyOunces = 9240 := by
  calc m.weeklyOunces = 7 * m.dailyOunces := m.hWeekly
    _ = 7 * 1320 := by rw [bath_daily m]
    _ = 9240 := by norm_num

structure Streaming where
  monthly : ℕ
  annual : ℕ
  hMonthly : 2 * monthly = 14
  hAnnual : annual = 12 * monthly
theorem streaming_monthly (m : Streaming) : m.monthly = 7 := by have h := m.hMonthly; omega
theorem streaming_solution (m : Streaming) : m.annual = 84 := by
  calc m.annual = 12 * m.monthly := m.hAnnual
    _ = 12 * 7 := by rw [streaming_monthly m]
    _ = 84 := by norm_num

structure UtensilAmbiguity where
  pensA : ℕ
  pencilsA : ℕ
  pensB : ℕ
  pencilsB : ℕ
  hTotalA : pensA + pencilsA = 108
  hPencilsA : pencilsA = 5 * pensA + 12
  hTotalB : pensB + pencilsB = 108
  hPensB : pensB = 5 * pencilsB + 12
theorem utensils_reference_pens (m : UtensilAmbiguity) : m.pensA = 16 := by
  have ht := m.hTotalA; have hp := m.hPencilsA; omega
theorem utensils_reference_pencils (m : UtensilAmbiguity) : m.pencilsA = 92 := by
  have ht := m.hTotalA; rw [utensils_reference_pens m] at ht; omega
theorem utensils_reverse_pencils (m : UtensilAmbiguity) : m.pencilsB = 16 := by
  have ht := m.hTotalB; have hp := m.hPensB; omega
theorem utensils_reverse_pens (m : UtensilAmbiguity) : m.pensB = 92 := by
  have ht := m.hTotalB; rw [utensils_reverse_pencils m] at ht; omega
theorem utensils_nonunique (m : UtensilAmbiguity) : m.pensA ≠ m.pensB := by
  rw [utensils_reference_pens m, utensils_reverse_pens m]; norm_num

structure Pots where
  perShelf : ℕ
  shelves : ℕ
  hPerShelf : perShelf = 5 * 3
  hShelves : shelves * perShelf = 60
theorem pots_per_shelf (m : Pots) : m.perShelf = 15 := by rw [m.hPerShelf]; norm_num
theorem pots_solution (m : Pots) : m.shelves = 4 := by
  have h := m.hShelves; rw [pots_per_shelf m] at h; omega

structure Fence where
  rightCost : ℕ
  leftCost : ℕ
  backCost : ℕ
  total : ℕ
  hRight : rightCost = 9 * 3
  hLeft : 3 * leftCost = 2 * (9 * 3)
  hBack : 2 * backCost = 18 * 3
  hTotal : total = rightCost + leftCost + backCost
theorem fence_right (m : Fence) : m.rightCost = 27 := by rw [m.hRight]; norm_num
theorem fence_left (m : Fence) : m.leftCost = 18 := by have h := m.hLeft; omega
theorem fence_back (m : Fence) : m.backCost = 27 := by have h := m.hBack; omega
theorem fence_solution (m : Fence) : m.total = 72 := by
  calc m.total = m.rightCost + m.leftCost + m.backCost := m.hTotal
    _ = 27 + 18 + 27 := by rw [fence_right m, fence_left m, fence_back m]
    _ = 72 := by norm_num

structure Tires where
  cars : ℕ
  bought : ℕ
  halfLeft : ℕ
  noneLeft : ℕ
  noneCustomers : ℕ
  hCars : cars = 4 + 6
  hBought : bought = cars * 4
  hHalfLeft : halfLeft = 2 * 2
  hNoneLeft : noneLeft = 20 - halfLeft
  hNone : 4 * noneCustomers = noneLeft
theorem tires_cars (m : Tires) : m.cars = 10 := by rw [m.hCars]; norm_num
theorem tires_bought (m : Tires) : m.bought = 40 := by
  calc m.bought = m.cars * 4 := m.hBought
    _ = 10 * 4 := by rw [tires_cars m]
    _ = 40 := by norm_num
theorem tires_half_left (m : Tires) : m.halfLeft = 4 := by rw [m.hHalfLeft]; norm_num
theorem tires_none_left (m : Tires) : m.noneLeft = 16 := by
  calc m.noneLeft = 20 - m.halfLeft := m.hNoneLeft
    _ = 20 - 4 := by rw [tires_half_left m]
    _ = 16 := by norm_num
theorem tires_solution (m : Tires) : m.noneCustomers = 4 := by
  have h := m.hNone; rw [tires_none_left m] at h; omega

structure GumShare where
  total : ℕ
  each : ℕ
  hTotal : total = 54 + 45 + 0
  hEach : 3 * each = total
theorem gum_total (m : GumShare) : m.total = 99 := by rw [m.hTotal]; norm_num
theorem gum_solution (m : GumShare) : m.each = 33 := by
  have h := m.hEach; rw [gum_total m] at h; omega

structure PlaygroundAnimals where
  allSmallCreatures : ℕ
  literalRemaining : ℕ
  biologicalInsects : ℕ
  biologicalRemaining : ℕ
  hAll : allSmallCreatures = 3 + 12 + 8
  hLiteral : literalRemaining = allSmallCreatures - 2
  hBiological : biologicalInsects = 12 + 8
  hBiologicalRemaining : biologicalRemaining = biologicalInsects - 2
theorem playground_all (m : PlaygroundAnimals) : m.allSmallCreatures = 23 := by rw [m.hAll]; norm_num
theorem playground_literal (m : PlaygroundAnimals) : m.literalRemaining = 21 := by
  calc m.literalRemaining = m.allSmallCreatures - 2 := m.hLiteral
    _ = 23 - 2 := by rw [playground_all m]
    _ = 21 := by norm_num
theorem playground_biological (m : PlaygroundAnimals) : m.biologicalRemaining = 18 := by
  rw [m.hBiologicalRemaining, m.hBiological]; norm_num
theorem playground_nonunique (m : PlaygroundAnimals) :
    m.literalRemaining ≠ m.biologicalRemaining := by
  rw [playground_literal m, playground_biological m]; norm_num

end LemmaWeave.Problems.GSM8K.Sprint0922A01
