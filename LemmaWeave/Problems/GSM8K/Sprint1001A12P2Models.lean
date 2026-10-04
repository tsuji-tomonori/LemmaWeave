import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A12P2

structure AgeModel where
  agnes : ℕ
  jane : ℕ
  years : ℕ
  hAgnes : agnes = 25
  hJane : jane = 6
  hTwice : agnes + years = 2 * (jane + years)

theorem age_equation (m : AgeModel) : m.agnes + m.years = 2 * (m.jane + m.years) := by
  exact m.hTwice

theorem age_years (m : AgeModel) : m.years = 13 := by
  have h := age_equation m
  omega
structure SwallowModel where
  total : ℕ
  european : ℕ
  american : ℕ
  americanCapacity : ℕ
  europeanCapacity : ℕ
  combined : ℕ
  hTotal : total = 90
  hRatio : american = 2 * european
  hCount : american + european = total
  hAmericanCapacity : americanCapacity = 5
  hEuropeanCapacity : europeanCapacity = 2 * americanCapacity
  hCombined : combined = 5 * american + 10 * european

theorem swallow_european_count (m : SwallowModel) : m.european = 30 := by
  omega
theorem swallow_american_count (m : SwallowModel) : m.american = 60 := by
  have h := swallow_european_count m
  omega
theorem swallow_european_capacity (m : SwallowModel) : m.europeanCapacity = 10 := by
  omega
theorem swallow_combined (m : SwallowModel) : m.combined = 600 := by
  have h1 := swallow_european_count m
  have h2 := swallow_american_count m
  have h3 := swallow_european_capacity m
  omega
structure SocksModel where
  red : ℕ
  blue : ℕ
  black : ℕ
  white : ℕ
  redPairs : ℕ
  bluePairs : ℕ
  blackPairs : ℕ
  whitePairs : ℕ
  total : ℕ
  hRed : red = 6
  hRedPairs : red = 2 * redPairs
  hWhitePairs : white = 2 * whitePairs
  hBluePairs : blue = 2 * bluePairs
  hBlackPairs : black = 2 * blackPairs
  hWhiteRelation : whitePairs = redPairs + 1
  hBlue : blue = 2 * red
  hBlackRelation : bluePairs = blackPairs + 3
  hTotal : total = red + blue + black + white

theorem socks_red_pairs (m : SocksModel) : m.redPairs = 3 := by
  omega
theorem socks_white (m : SocksModel) : m.whitePairs = 4 ∧ m.white = 8 := by
  have h := socks_red_pairs m
  cases m <;> constructor <;> omega

theorem socks_blue (m : SocksModel) : m.blue = 12 ∧ m.bluePairs = 6 := by
  cases m <;> constructor <;> omega

theorem socks_black (m : SocksModel) : m.blackPairs = 3 ∧ m.black = 6 := by
  have h := socks_blue m
  cases m <;> constructor <;> omega

theorem socks_total (m : SocksModel) : m.total = 32 := by
  have h1 := socks_white m
  have h2 := socks_blue m
  have h3 := socks_black m
  omega
structure DiscountShirtsModel where
  quantity : ℕ
  unitPrice : ℕ
  regular : ℕ
  discount : ℕ
  paid : ℕ
  hQuantity : quantity = 2
  hUnitPrice : unitPrice = 50
  hRegular : regular = 2 * 50
  hDiscount : 5 * discount = 2 * regular
  hPaid : paid + discount = regular

theorem shirts_regular (m : DiscountShirtsModel) : m.regular = 100 := by
  omega
theorem shirts_discount (m : DiscountShirtsModel) : m.discount = 40 := by
  have h := shirts_regular m
  omega
theorem shirts_paid (m : DiscountShirtsModel) : m.paid = 60 := by
  have h := shirts_discount m
  omega
structure TaxShirtsModel where
  quantity : ℕ
  unitPrice : ℕ
  subtotal : ℕ
  tax : ℕ
  total : ℕ
  hQuantity : quantity = 3
  hUnitPrice : unitPrice = 20
  hSubtotal : subtotal = 3 * 20
  hTax : 10 * tax = subtotal
  hTotal : total = subtotal + tax

theorem tax_subtotal (m : TaxShirtsModel) : m.subtotal = 60 := by
  omega
theorem tax_amount (m : TaxShirtsModel) : m.tax = 6 := by
  have h := tax_subtotal m
  omega
theorem tax_total (m : TaxShirtsModel) : m.total = 66 := by
  have h := tax_amount m
  omega
end LemmaWeave.Problems.GSM8K.Sprint1001A12P2
