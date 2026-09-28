import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A04

structure WalkingModel where
  jackieTenths : ℕ
  jessieTenths : ℕ
  dailyDifferenceTenths : ℕ
  sixDayDifferenceTenths : ℕ
  answerMiles : ℕ
  hJackie : jackieTenths = 20
  hJessie : jessieTenths = 15
  hDaily : dailyDifferenceTenths + jessieTenths = jackieTenths
  hSixDays : sixDayDifferenceTenths = 6 * dailyDifferenceTenths
  hMiles : sixDayDifferenceTenths = 10 * answerMiles

theorem walking_daily_difference (m : WalkingModel) : m.dailyDifferenceTenths = 5 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega
theorem walking_six_day_difference (m : WalkingModel) : m.sixDayDifferenceTenths = 30 := by
  have hPrev := walking_daily_difference m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega
theorem walking_solution (m : WalkingModel) : m.answerMiles = 3 := by
  have hPrev := walking_six_day_difference m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega

structure GiftsModel where
  teachers : ℕ
  costPerGift : ℕ
  hTeachers : teachers = 3 + 4
  hCost : teachers * costPerGift = 70

theorem gifts_teachers (m : GiftsModel) : m.teachers = 7 := by
  rcases m with ⟨a,b,h1,h2⟩
  omega
theorem gifts_solution (m : GiftsModel) : m.costPerGift = 10 := by
  have hPrev := gifts_teachers m
  rcases m with ⟨a,b,h1,h2⟩
  omega

structure TankModel where
  dailyMl : ℕ
  capacityMl : ℕ
  days : ℕ
  hDaily : dailyMl = 800 + 1700
  hCapacity : capacityMl = 50 * 1000
  hFill : days * dailyMl = capacityMl

theorem tank_daily (m : TankModel) : m.dailyMl = 2500 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem tank_capacity (m : TankModel) : m.capacityMl = 50000 := by
  have hPrev := tank_daily m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem tank_solution (m : TankModel) : m.days = 20 := by
  have hPrev := tank_capacity m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure BottlesModel where
  packed : ℕ
  unpacked : ℕ
  hPacked : packed = 10 * 12
  hTotal : packed + unpacked = 130

theorem bottles_packed (m : BottlesModel) : m.packed = 120 := by
  rcases m with ⟨a,b,h1,h2⟩
  omega
theorem bottles_solution (m : BottlesModel) : m.unpacked = 10 := by
  have hPrev := bottles_packed m
  rcases m with ⟨a,b,h1,h2⟩
  omega

structure BurgersModel where
  halfGuests : ℕ
  doubleGroupBurgers : ℕ
  totalBurgers : ℕ
  batches : ℕ
  minutesPerBatch : ℕ
  totalMinutes : ℕ
  hHalf : 2 * halfGuests = 30
  hDouble : doubleGroupBurgers = 2 * halfGuests
  hTotal : totalBurgers = doubleGroupBurgers + halfGuests
  hBatches : totalBurgers = 5 * batches
  hBatchTime : minutesPerBatch = 2 * 4
  hTime : totalMinutes = batches * minutesPerBatch

theorem burgers_half_guests (m : BurgersModel) : m.halfGuests = 15 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega
theorem burgers_total (m : BurgersModel) : m.totalBurgers = 45 := by
  have hPrev := burgers_half_guests m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega
theorem burgers_batches (m : BurgersModel) : m.batches = 9 := by
  have hPrev := burgers_total m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega
theorem burgers_solution (m : BurgersModel) : m.totalMinutes = 72 := by
  have hPrev := burgers_batches m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega

structure PhonesModel where
  subtotal : ℕ
  discount : ℕ
  paid : ℕ
  hSubtotal : subtotal = 2 * 800
  hDiscount : 100 * discount = 5 * subtotal
  hPaid : paid + discount = subtotal

theorem phones_subtotal (m : PhonesModel) : m.subtotal = 1600 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem phones_discount (m : PhonesModel) : m.discount = 80 := by
  have hPrev := phones_subtotal m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem phones_solution (m : PhonesModel) : m.paid = 1520 := by
  have hPrev := phones_discount m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure BooksModel where
  novels : ℕ
  graphic : ℕ
  comics : ℕ
  comicPercent : ℕ
  hNovels : 100 * novels = 65 * 120
  hGraphic : graphic = 18
  hPartition : novels + graphic + comics = 120
  hPercent : 100 * comics = comicPercent * 120

theorem books_novels (m : BooksModel) : m.novels = 78 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem books_comics (m : BooksModel) : m.comics = 24 := by
  have hPrev := books_novels m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem books_solution (m : BooksModel) : m.comicPercent = 20 := by
  have hPrev := books_comics m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

structure PaintingsModel where
  rate : ℕ
  extraHours : ℕ
  totalHours : ℕ
  hRate : 6 * rate = 12
  hExtra : extraHours * rate = 20
  hTotal : totalHours = 6 + extraHours

theorem paintings_rate (m : PaintingsModel) : m.rate = 2 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem paintings_extra (m : PaintingsModel) : m.extraHours = 10 := by
  have hPrev := paintings_rate m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem paintings_solution (m : PaintingsModel) : m.totalHours = 16 := by
  have hPrev := paintings_extra m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure MatchbooksModel where
  matches : ℕ
  tradedStamps : ℕ
  stampsLeft : ℕ
  hMatches : matches = 5 * 24
  hTrade : matches = 12 * tradedStamps
  hLeft : stampsLeft + tradedStamps = 13

theorem matchbooks_matches (m : MatchbooksModel) : m.matches = 120 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem matchbooks_trade (m : MatchbooksModel) : m.tradedStamps = 10 := by
  have hPrev := matchbooks_matches m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem matchbooks_solution (m : MatchbooksModel) : m.stampsLeft = 3 := by
  have hPrev := matchbooks_trade m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure DragonModel where
  crownJewels : ℕ
  originalJewels : ℕ
  finalJewels : ℕ
  hCrown : crownJewels = 2 * 3
  hThird : originalJewels = 3 * crownJewels
  hFinal : finalJewels = originalJewels + crownJewels

theorem dragon_crown (m : DragonModel) : m.crownJewels = 6 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem dragon_original (m : DragonModel) : m.originalJewels = 18 := by
  have hPrev := dragon_crown m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem dragon_solution (m : DragonModel) : m.finalJewels = 24 := by
  have hPrev := dragon_original m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure OrangesModel where
  del : ℕ
  juan : ℕ
  hDel : del = 2 * 23
  hTotal : del + juan = 107

theorem oranges_del (m : OrangesModel) : m.del = 46 := by
  rcases m with ⟨a,b,h1,h2⟩
  omega
theorem oranges_solution (m : OrangesModel) : m.juan = 61 := by
  have hPrev := oranges_del m
  rcases m with ⟨a,b,h1,h2⟩
  omega

structure SandwichesModel where
  drinksCost : ℕ
  sandwichesCost : ℕ
  eachSandwich : ℕ
  hDrinks : drinksCost = 2 * 4
  hTotal : drinksCost + sandwichesCost = 26
  hEach : sandwichesCost = 3 * eachSandwich

theorem sandwiches_drinks (m : SandwichesModel) : m.drinksCost = 8 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem sandwiches_total (m : SandwichesModel) : m.sandwichesCost = 18 := by
  have hPrev := sandwiches_drinks m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem sandwiches_solution (m : SandwichesModel) : m.eachSandwich = 6 := by
  have hPrev := sandwiches_total m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure TierDiscountModel where
  subtotal : ℕ
  eligible : ℕ
  discount : ℕ
  paid : ℕ
  hSubtotal : subtotal = 7 * 200
  hEligible : eligible + 1000 = subtotal
  hDiscount : 100 * discount = 10 * eligible
  hPaid : paid + discount = subtotal

theorem tier_subtotal (m : TierDiscountModel) : m.subtotal = 1400 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem tier_eligible (m : TierDiscountModel) : m.eligible = 400 := by
  have hPrev := tier_subtotal m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem tier_discount (m : TierDiscountModel) : m.discount = 40 := by
  have hPrev := tier_eligible m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem tier_solution (m : TierDiscountModel) : m.paid = 1360 := by
  have hPrev := tier_discount m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

structure DogCleaningModel where
  shampooMinutes : ℕ
  totalMinutes : ℕ
  hShampoo : shampooMinutes = 3 * 15
  hTotal : totalMinutes = 10 + shampooMinutes

theorem dog_shampoo (m : DogCleaningModel) : m.shampooMinutes = 45 := by
  rcases m with ⟨a,b,h1,h2⟩
  omega
theorem dog_solution (m : DogCleaningModel) : m.totalMinutes = 55 := by
  have hPrev := dog_shampoo m
  rcases m with ⟨a,b,h1,h2⟩
  omega

structure TreesModel where
  cut : ℕ
  remaining : ℕ
  planted : ℕ
  finalTrees : ℕ
  hCut : 100 * cut = 20 * 400
  hRemaining : remaining + cut = 400
  hPlanted : planted = 5 * cut
  hFinal : finalTrees = remaining + planted

theorem trees_cut (m : TreesModel) : m.cut = 80 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem trees_remaining (m : TreesModel) : m.remaining = 320 := by
  have hPrev := trees_cut m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem trees_planted (m : TreesModel) : m.planted = 400 := by
  have hPrev := trees_remaining m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem trees_solution (m : TreesModel) : m.finalTrees = 720 := by
  have hPrev := trees_planted m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

end LemmaWeave.Problems.GSM8K.Sprint0929A04
