import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A04
structure Balloons where
  oldRed : ℕ
  oldBlue : ℕ
  newRed : ℕ
  newBlue : ℕ
  red : ℕ
  total : ℕ
  percent : ℕ
  hOldRed : oldRed = 2
  hOldBlue : oldBlue = 4
  hNewRed : newRed = 2
  hNewBlue : newBlue = 2
  hRed : red = oldRed + newRed
  hTotal : total = oldRed + oldBlue + newRed + newBlue
  hPercent : red * 100 = percent * total
theorem balloons_red (m : Balloons) : m.red = 4 := by cases m; omega
theorem balloons_total (m : Balloons) : m.total = 10 := by cases m; omega
theorem balloons_solution (m : Balloons) : m.percent = 40 := by cases m; omega
structure HouseSale where
  original : ℕ
  profit : ℕ
  salePrice : ℕ
  commission : ℕ
  receipts : ℕ
  hOriginal : original = 80000
  hProfit : 5 * profit = original
  hSale : salePrice = original + profit
  hCommission : 20 * commission = original
  hReceipts : receipts = salePrice + commission
theorem house_profit (m : HouseSale) : m.profit = 16000 := by cases m; omega
theorem house_sale_price (m : HouseSale) : m.salePrice = 96000 := by cases m; omega
theorem house_commission (m : HouseSale) : m.commission = 4000 := by cases m; omega
theorem house_receipts (m : HouseSale) : m.receipts = 100000 := by cases m; omega
theorem house_solution (m : HouseSale) :
    m.salePrice = 96000 ∧ m.receipts = 100000 ∧ m.salePrice ≠ m.receipts := by
  cases m
  omega
structure MobileData where
  initial : ℕ
  afterVideo : ℕ
  facebook : ℕ
  remaining : ℕ
  hInitial : initial = 500
  hAfterVideo : afterVideo + 300 = initial
  hFacebook : 5 * facebook = 2 * afterVideo
  hRemaining : remaining + facebook = afterVideo
theorem mobile_after_video (m : MobileData) : m.afterVideo = 200 := by cases m; omega
theorem mobile_facebook (m : MobileData) : m.facebook = 80 := by cases m; omega
theorem mobile_solution (m : MobileData) : m.remaining = 120 := by cases m; omega
structure Figures where
  saved : ℕ
  shoeCost : ℕ
  remaining : ℕ
  neededBefore : ℕ
  salesRevenue : ℕ
  figures : ℕ
  priceEach : ℕ
  hSaved : saved = 15
  hShoe : shoeCost = 90
  hRemaining : remaining = 25
  hNeeded : neededBefore = shoeCost + remaining
  hRevenue : salesRevenue + saved = neededBefore
  hFigures : figures = 10
  hEach : salesRevenue = figures * priceEach
theorem figures_needed (m : Figures) : m.neededBefore = 115 := by cases m; omega
theorem figures_revenue (m : Figures) : m.salesRevenue = 100 := by cases m; omega
theorem figures_solution (m : Figures) : m.priceEach = 10 := by cases m; omega
structure Supplies where
  grenadaTotal : ℕ
  kinds : ℕ
  each : ℕ
  guns : ℕ
  tractors : ℕ
  uniforms : ℕ
  total : ℕ
  hGrenada : grenadaTotal = 6000
  hKinds : kinds = 3
  hEqualSplit : grenadaTotal = kinds * each
  hGuns : guns = 3000 + 2 * each
  hTractors : tractors + 400 = 3 * each
  hUniforms : uniforms = 30 * each
  hTotal : total = guns + tractors + uniforms
theorem supplies_each (m : Supplies) : m.each = 2000 := by cases m; omega
theorem supplies_guns (m : Supplies) : m.guns = 7000 := by cases m; omega
theorem supplies_tractors (m : Supplies) : m.tractors = 5600 := by cases m; omega
theorem supplies_uniforms (m : Supplies) : m.uniforms = 60000 := by cases m; omega
theorem supplies_solution (m : Supplies) : m.total = 72600 := by cases m; omega
end LemmaWeave.Problems.GSM8K.Sprint0927A04
