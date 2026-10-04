import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1001A13RecoveryP1

structure FeatherModel where
  feathersPerPound : ℕ
  totalFeathers : ℕ
  pounds : ℕ
  poundsPerPillow : ℕ
  pillows : ℕ
  hPerPound : feathersPerPound = 300
  hTotal : totalFeathers = 3600
  hPounds : feathersPerPound * pounds = totalFeathers
  hPerPillow : poundsPerPillow = 2
  hPillows : poundsPerPillow * pillows = pounds

theorem feather_pounds (m : FeatherModel) : m.pounds = 12 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem feather_pillows (m : FeatherModel) : m.pillows = 6 := by
  have h := feather_pounds m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure CandleModel where
  total : ℕ
  yellow : ℕ
  red : ℕ
  blue : ℕ
  colored : ℕ
  hTotal : total = 79
  hYellow : yellow = 27
  hRed : red = 14
  hColored : colored = yellow + red
  hPartition : colored + blue = total

theorem colored_candles (m : CandleModel) : m.colored = 41 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem blue_candles (m : CandleModel) : m.blue = 38 := by
  have h := colored_candles m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure ChocolateModel where
  bars : ℕ
  purchaseEach : ℕ
  packagingEach : ℕ
  revenue : ℕ
  purchase : ℕ
  packaging : ℕ
  profit : ℕ
  hBars : bars = 5
  hPurchaseEach : purchaseEach = 5
  hPackagingEach : packagingEach = 2
  hRevenue : revenue = 90
  hPurchase : purchase = bars * purchaseEach
  hPackaging : packaging = bars * packagingEach
  hProfit : profit + purchase + packaging = revenue

theorem chocolate_purchase (m : ChocolateModel) : m.purchase = 25 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem chocolate_packaging (m : ChocolateModel) : m.packaging = 10 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem chocolate_profit (m : ChocolateModel) : m.profit = 55 := by
  have h1 := chocolate_purchase m
  have h2 := chocolate_packaging m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure BucketModel where
  litersPerJug : ℕ
  jugsPerBucket : ℕ
  buckets : ℕ
  oneBucket : ℕ
  total : ℕ
  hLiters : litersPerJug = 5
  hJugs : jugsPerBucket = 4
  hBuckets : buckets = 2
  hOne : oneBucket = jugsPerBucket * litersPerJug
  hTotal : total = buckets * oneBucket

theorem one_bucket_water (m : BucketModel) : m.oneBucket = 20 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem bucket_water (m : BucketModel) : m.total = 40 := by
  have h := one_bucket_water m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure GroceryModel where
  spamCount : ℕ
  spamPrice : ℕ
  peanutCount : ℕ
  peanutPrice : ℕ
  breadCount : ℕ
  breadPrice : ℕ
  spam : ℕ
  peanut : ℕ
  bread : ℕ
  total : ℕ
  hSpamCount : spamCount = 12
  hSpamPrice : spamPrice = 3
  hPeanutCount : peanutCount = 3
  hPeanutPrice : peanutPrice = 5
  hBreadCount : breadCount = 4
  hBreadPrice : breadPrice = 2
  hSpam : spam = spamCount * spamPrice
  hPeanut : peanut = peanutCount * peanutPrice
  hBread : bread = breadCount * breadPrice
  hTotal : total = spam + peanut + bread

theorem spam_cost (m : GroceryModel) : m.spam = 36 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem peanut_cost (m : GroceryModel) : m.peanut = 15 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem bread_cost (m : GroceryModel) : m.bread = 8 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem grocery_total (m : GroceryModel) : m.total = 59 := by
  have h1 := spam_cost m
  have h2 := peanut_cost m
  have h3 := bread_cost m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A13RecoveryP1
