import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A02P3

structure BreadModel where
  total : ℕ
  day1Eaten : ℕ
  afterDay1 : ℕ
  day2Eaten : ℕ
  afterDay2 : ℕ
  day3Eaten : ℕ
  afterDay3 : ℕ
  hTotal : total = 200
  hDay1Fraction : 4 * day1Eaten = total
  hAfter1 : afterDay1 + day1Eaten = total
  hDay2Fraction : 5 * day2Eaten = 2 * afterDay1
  hAfter2 : afterDay2 + day2Eaten = afterDay1
  hDay3Fraction : 2 * day3Eaten = afterDay2
  hAfter3 : afterDay3 + day3Eaten = afterDay2

theorem bread_after_day1 (m : BreadModel) : m.afterDay1 = 150 := by
  cases m <;> simp_all at * <;> omega

theorem bread_after_day2 (m : BreadModel) : m.afterDay2 = 90 := by
  have h := bread_after_day1 m
  cases m <;> simp_all at * <;> omega

theorem bread_after_day3 (m : BreadModel) : m.afterDay3 = 45 := by
  have h := bread_after_day2 m
  cases m <;> simp_all at * <;> omega

structure HouseSaleModel where
  originalPrice : ℕ
  greyProfit : ℕ
  brownPurchase : ℕ
  brownLoss : ℕ
  brownSale : ℕ
  hOriginal : originalPrice = 100000
  hProfitRate : 10 * greyProfit = originalPrice
  hPurchase : brownPurchase = originalPrice + greyProfit
  hLossRate : 10 * brownLoss = brownPurchase
  hSale : brownSale + brownLoss = brownPurchase

theorem house_profit (m : HouseSaleModel) : m.greyProfit = 10000 := by
  cases m <;> simp_all at * <;> omega

theorem house_purchase (m : HouseSaleModel) : m.brownPurchase = 110000 := by
  have h := house_profit m
  cases m <;> simp_all at * <;> omega

theorem house_loss (m : HouseSaleModel) : m.brownLoss = 11000 := by
  have h := house_purchase m
  cases m <;> simp_all at * <;> omega

theorem house_sale (m : HouseSaleModel) : m.brownSale = 99000 := by
  have h1 := house_purchase m
  have h2 := house_loss m
  cases m <;> simp_all at * <;> omega

structure PopcornModel where
  firstPercent : ℕ
  secondPercent : ℕ
  thirdPercent : ℕ
  averagePercent : ℕ
  hFirst : 75 * firstPercent = 100 * 60
  hSecond : 50 * secondPercent = 100 * 42
  hThird : 100 * thirdPercent = 100 * 82
  hAverage : 3 * averagePercent = firstPercent + secondPercent + thirdPercent

theorem popcorn_first (m : PopcornModel) : m.firstPercent = 80 := by
  cases m <;> simp_all at * <;> omega

theorem popcorn_second (m : PopcornModel) : m.secondPercent = 84 := by
  cases m <;> simp_all at * <;> omega

theorem popcorn_third (m : PopcornModel) : m.thirdPercent = 82 := by
  cases m <;> simp_all at * <;> omega

theorem popcorn_weighted_rate_not_82 : 100 * (60 + 42 + 82) ≠ 82 * (75 + 50 + 100) := by
  norm_num

theorem popcorn_average (m : PopcornModel) : m.averagePercent = 82 := by
  have h1 := popcorn_first m
  have h2 := popcorn_second m
  have h3 := popcorn_third m
  have hw := popcorn_weighted_rate_not_82
  cases m <;> simp_all at * <;> omega

structure WillModel where
  estate : ℕ
  shelby : ℕ
  remainder : ℕ
  eachOther : ℕ
  hEstate : estate = 124600
  hShelby : 2 * shelby = estate
  hRemainder : shelby + remainder = estate
  hOthers : 10 * eachOther = remainder

theorem will_shelby (m : WillModel) : m.shelby = 62300 := by
  cases m <;> simp_all at * <;> omega

theorem will_remainder (m : WillModel) : m.remainder = 62300 := by
  have h := will_shelby m
  cases m <;> simp_all at * <;> omega

theorem will_each_other (m : WillModel) : m.eachOther = 6230 := by
  have h := will_remainder m
  cases m <;> simp_all at * <;> omega

structure NovelModel where
  pages : ℕ
  saturday : ℕ
  sunday : ℕ
  remaining : ℕ
  hPages : pages = 93
  hSaturday : saturday = 30
  hSunday : sunday = 20
  hPartition : saturday + sunday + remaining = pages

theorem novel_after_saturday (m : NovelModel) : m.pages - m.saturday = 63 := by
  cases m <;> simp_all at * <;> omega

theorem novel_remaining (m : NovelModel) : m.remaining = 43 := by
  cases m <;> simp_all at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A02P3
