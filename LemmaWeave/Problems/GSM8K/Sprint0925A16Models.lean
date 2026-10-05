import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0925A16

structure GRE where
  known : ℕ
  remaining : ℕ
  perDay : ℕ
  hKnown : 5 * known = 800
  hRemaining : remaining + known = 800
  hPerDay : 40 * perDay = remaining
theorem gre_known (m : GRE) : m.known = 160 := by cases m <;> simp_all <;> omega
theorem gre_remaining (m : GRE) : m.remaining = 640 := by cases m <;> simp_all <;> omega
theorem gre_solution (m : GRE) : m.perDay = 16 := by cases m <;> simp_all <;> omega

structure BarbaraAge where
  current : ℕ
  yearsLater : ℕ
  future : ℕ
  hCurrent : 2 * current = 16
  hYears : yearsLater + 16 = 24
  hFuture : future = current + yearsLater
theorem barbara_current (m : BarbaraAge) : m.current = 8 := by cases m <;> simp_all <;> omega
theorem barbara_years (m : BarbaraAge) : m.yearsLater = 8 := by cases m <;> simp_all <;> omega
theorem barbara_solution (m : BarbaraAge) : m.future = 16 := by cases m <;> simp_all <;> omega

structure Coins where
  oldNickels : ℕ
  foundNickels : ℕ
  totalNickels : ℕ
  dimes : ℕ
  nickelCents : ℕ
  dimeCents : ℕ
  totalCents : ℕ
  hOld : oldNickels = 20
  hFound : foundNickels = 2 * oldNickels
  hTotalNickels : totalNickels = oldNickels + foundNickels
  hDimes : dimes = 3 * oldNickels
  hNickelValue : nickelCents = 5 * totalNickels
  hDimeValue : dimeCents = 10 * dimes
  hTotal : totalCents = nickelCents + dimeCents
theorem coins_found (m : Coins) : m.foundNickels = 40 := by cases m <;> simp_all <;> omega
theorem coins_nickels (m : Coins) : m.totalNickels = 60 := by cases m <;> simp_all <;> omega
theorem coins_dimes (m : Coins) : m.dimes = 60 := by cases m <;> simp_all <;> omega
theorem coins_nickel_value (m : Coins) : m.nickelCents = 300 := by cases m <;> simp_all <;> omega
theorem coins_dime_value (m : Coins) : m.dimeCents = 600 := by cases m <;> simp_all <;> omega
theorem coins_solution (m : Coins) : m.totalCents = 900 := by cases m <;> simp_all <;> omega

structure Running where
  speed : ℕ
  time : ℕ
  hSpeed : 2 * speed = 2000
  hTime : 1000 * time = 10000
theorem running_speed (m : Running) : m.speed = 1000 := by cases m <;> simp_all <;> omega
theorem running_solution (m : Running) : m.time = 10 := by cases m <;> simp_all <;> omega

structure Snowflakes where
  intervals : ℕ
  added : ℕ
  initial : ℕ
  hIntervals : 5 * intervals = 60
  hAdded : added = 4 * intervals
  hInitial : initial + added = 58
theorem snow_intervals (m : Snowflakes) : m.intervals = 12 := by cases m <;> simp_all <;> omega
theorem snow_added (m : Snowflakes) : m.added = 48 := by cases m <;> simp_all <;> omega
theorem snow_solution (m : Snowflakes) : m.initial = 10 := by cases m <;> simp_all <;> omega

structure Barrettes where
  barrettes : ℕ
  scrunchies : ℕ
  bobby : ℕ
  total : ℕ
  hBarrettes : barrettes = 6
  hScrunchies : scrunchies = 2 * barrettes
  hBobby : bobby + 3 = barrettes
  hTotal : total = barrettes + scrunchies + bobby
theorem barrettes_scrunchies (m : Barrettes) : m.scrunchies = 12 := by cases m <;> simp_all <;> omega
theorem barrettes_bobby (m : Barrettes) : m.bobby = 3 := by cases m <;> simp_all <;> omega
theorem barrettes_total (m : Barrettes) : m.total = 21 := by cases m <;> simp_all <;> omega
theorem barrettes_solution (m : Barrettes) :
    27 * m.total ≤ 200 * m.bobby ∧ 200 * m.bobby < 29 * m.total := by
  constructor <;> cases m <;> simp_all <;> omega

structure WaterServings where
  oldServings : ℕ
  newServings : ℕ
  fewer : ℕ
  hOld : 8 * oldServings = 64
  hNew : 16 * newServings = 64
  hFewer : newServings + fewer = oldServings
theorem water_old (m : WaterServings) : m.oldServings = 8 := by cases m <;> simp_all <;> omega
theorem water_new (m : WaterServings) : m.newServings = 4 := by cases m <;> simp_all <;> omega
theorem water_solution (m : WaterServings) : m.fewer = 4 := by cases m <;> simp_all <;> omega

structure FoodBudget where
  beef : ℕ
  spent : ℕ
  left : ℕ
  hBeef : beef = 5 * 3
  hSpent : spent = 12 + beef
  hLeft : left + spent = 80
theorem budget_beef (m : FoodBudget) : m.beef = 15 := by cases m <;> simp_all <;> omega
theorem budget_spent (m : FoodBudget) : m.spent = 27 := by cases m <;> simp_all <;> omega
theorem budget_solution (m : FoodBudget) : m.left = 53 := by cases m <;> simp_all <;> omega

structure BearHunt where
  cubMeat : ℕ
  weekly : ℕ
  daily : ℕ
  rabbits : ℕ
  hCubs : cubMeat = 4 * 35
  hWeekly : weekly = 210 + cubMeat
  hDaily : 7 * daily = weekly
  hRabbits : 5 * rabbits = daily
theorem bear_cubs (m : BearHunt) : m.cubMeat = 140 := by cases m <;> simp_all <;> omega
theorem bear_weekly (m : BearHunt) : m.weekly = 350 := by cases m <;> simp_all <;> omega
theorem bear_daily (m : BearHunt) : m.daily = 50 := by cases m <;> simp_all <;> omega
theorem bear_solution (m : BearHunt) : m.rabbits = 10 := by cases m <;> simp_all <;> omega

structure Pineapples where
  fruitCents : ℕ
  shippingCents : ℕ
  totalCents : ℕ
  eachCents : ℕ
  hFruit : fruitCents = 12 * 125
  hShipping : shippingCents = 2100
  hTotal : totalCents = fruitCents + shippingCents
  hEach : 12 * eachCents = totalCents
theorem pineapple_fruit (m : Pineapples) : m.fruitCents = 1500 := by cases m <;> simp_all <;> omega
theorem pineapple_total (m : Pineapples) : m.totalCents = 3600 := by cases m <;> simp_all <;> omega
theorem pineapple_solution (m : Pineapples) : m.eachCents = 300 := by cases m <;> simp_all <;> omega

structure Jogging where
  musicMiles : ℕ
  remainingMiles : ℕ
  slowMinutes : ℕ
  totalMinutes : ℕ
  hMusic : 60 * musicMiles = 6 * 40
  hRemaining : musicMiles + remainingMiles = 6
  hSlow : 4 * slowMinutes = 60 * remainingMiles
  hTotal : totalMinutes = 40 + slowMinutes
theorem jogging_music (m : Jogging) : m.musicMiles = 4 := by cases m <;> simp_all <;> omega
theorem jogging_remaining (m : Jogging) : m.remainingMiles = 2 := by cases m <;> simp_all <;> omega
theorem jogging_slow (m : Jogging) : m.slowMinutes = 30 := by cases m <;> simp_all <;> omega
theorem jogging_solution (m : Jogging) : m.totalMinutes = 70 := by cases m <;> simp_all <;> omega

structure FishBowl where
  newBetta : ℕ
  totalBetta : ℕ
  newGold : ℕ
  totalGold : ℕ
  allFish : ℕ
  remaining : ℕ
  hNewBetta : 5 * newBetta = 2 * 10
  hTotalBetta : totalBetta = 10 + newBetta
  hNewGold : 3 * newGold = 15
  hTotalGold : totalGold = 15 + newGold
  hAll : allFish = totalBetta + totalGold
  hRemaining : 2 * remaining = allFish
theorem fish_new_betta (m : FishBowl) : m.newBetta = 4 := by cases m <;> simp_all <;> omega
theorem fish_total_betta (m : FishBowl) : m.totalBetta = 14 := by cases m <;> simp_all <;> omega
theorem fish_new_gold (m : FishBowl) : m.newGold = 5 := by cases m <;> simp_all <;> omega
theorem fish_total_gold (m : FishBowl) : m.totalGold = 20 := by cases m <;> simp_all <;> omega
theorem fish_all (m : FishBowl) : m.allFish = 34 := by cases m <;> simp_all <;> omega
theorem fish_solution (m : FishBowl) : m.remaining = 17 := by cases m <;> simp_all <;> omega

structure RainTank where
  collected : ℕ
  total : ℕ
  hCollected : collected = 2 * 90
  hTotal : total = 100 + collected
theorem rain_collected (m : RainTank) : m.collected = 180 := by cases m <;> simp_all <;> omega
theorem rain_solution (m : RainTank) : m.total = 280 := by cases m <;> simp_all <;> omega

structure Exam where
  jen : ℕ
  sammy : ℕ
  mistakes : ℕ
  hJen : jen = 20 + 10
  hSammy : sammy + 2 = jen
  hMistakes : mistakes + sammy = 35
theorem exam_jen (m : Exam) : m.jen = 30 := by cases m <;> simp_all <;> omega
theorem exam_sammy (m : Exam) : m.sammy = 28 := by cases m <;> simp_all <;> omega
theorem exam_solution (m : Exam) : m.mistakes = 7 := by cases m <;> simp_all <;> omega

structure Daisies where
  remainingDaisies : ℕ
  petals : ℕ
  hRemaining : remainingDaisies + 2 = 5
  hPetals : petals = 8 * remainingDaisies
theorem daisies_remaining (m : Daisies) : m.remainingDaisies = 3 := by cases m <;> simp_all <;> omega
theorem daisies_solution (m : Daisies) : m.petals = 24 := by cases m <;> simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0925A16
