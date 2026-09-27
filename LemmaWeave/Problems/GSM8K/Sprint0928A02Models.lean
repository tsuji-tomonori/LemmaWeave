import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0928A02

structure TripModel where
  remainingCents : Nat
  bars : Nat
  hRemaining : remainingCents + 25000 = 48500
  hBars : 125 * bars = remainingCents

theorem trip_remaining (m : TripModel) : m.remainingCents = 23500 := by
  have h := m.hRemaining
  omega

theorem trip_bars (m : TripModel) : m.bars = 188 := by
  have hr := trip_remaining m
  have hb := m.hBars
  omega

theorem trip_solution (m : TripModel) : m.bars = 188 := by
  exact trip_bars m

structure CandiesModel where
  sour : Nat
  good : Nat
  people : Nat
  each : Nat
  hSour : 100 * sour = 40 * 300
  hGood : sour + good = 300
  hPeople : people = 1 + 2
  hShare : people * each = good

theorem candies_sour (m : CandiesModel) : m.sour = 120 := by
  have h := m.hSour
  omega

theorem candies_good (m : CandiesModel) : m.good = 180 := by
  have hs := candies_sour m
  have h := m.hGood
  omega

theorem candies_each (m : CandiesModel) : m.each = 60 := by
  have hg := candies_good m
  have hp := m.hPeople
  have h := m.hShare
  rw [hp, hg] at h
  norm_num at h
  omega

theorem candies_solution (m : CandiesModel) : m.each = 60 := by
  exact candies_each m

structure InventoryModel where
  sold : Nat
  discount : Nat
  salePrice : Nat
  revenue : Nat
  left : Nat
  hSold : 100 * sold = 90 * 2000
  hDiscount : 100 * discount = 80 * 50
  hSalePrice : salePrice + discount = 50
  hRevenue : revenue = sold * salePrice
  hLeft : 15000 + left = revenue

theorem inventory_sold (m : InventoryModel) : m.sold = 1800 := by
  have h := m.hSold
  omega

theorem inventory_sale_price (m : InventoryModel) : m.salePrice = 10 := by
  have hd := m.hDiscount
  have hp := m.hSalePrice
  omega

theorem inventory_revenue (m : InventoryModel) : m.revenue = 18000 := by
  have hs := inventory_sold m
  have hp := inventory_sale_price m
  have h := m.hRevenue
  rw [hs, hp] at h
  norm_num at h ⊢
  exact h

theorem inventory_left (m : InventoryModel) : m.left = 3000 := by
  have hr := inventory_revenue m
  have h := m.hLeft
  omega

theorem inventory_solution (m : InventoryModel) : m.left = 3000 := by
  exact inventory_left m

structure FetchModel where
  yards : Nat
  feet : Nat
  minutes : Nat
  hYards : yards = 6 * 200
  hFeet : feet = yards * 3
  hMinutes : 400 * minutes = feet

theorem fetch_yards (m : FetchModel) : m.yards = 1200 := by
  have h := m.hYards
  omega

theorem fetch_feet (m : FetchModel) : m.feet = 3600 := by
  have hy := fetch_yards m
  have h := m.hFeet
  omega

theorem fetch_minutes (m : FetchModel) : m.minutes = 9 := by
  have hf := fetch_feet m
  have h := m.hMinutes
  omega

theorem fetch_solution (m : FetchModel) : m.minutes = 9 := by
  exact fetch_minutes m

structure DoughnutsModel where
  eaten : Nat
  left : Nat
  hEaten : eaten = 19 * 2
  hLeft : eaten + left = 50

theorem doughnuts_eaten (m : DoughnutsModel) : m.eaten = 38 := by
  have h := m.hEaten
  omega

theorem doughnuts_left (m : DoughnutsModel) : m.left = 12 := by
  have he := doughnuts_eaten m
  have h := m.hLeft
  omega

theorem doughnuts_solution (m : DoughnutsModel) : m.left = 12 := by
  exact doughnuts_left m

structure WeightsModel where
  al : Nat
  ben : Nat
  carl : Nat
  hEdToAl : 146 + 38 = al
  hBenToAl : ben + 25 = al
  hBenToCarl : ben + 16 = carl

theorem weights_al (m : WeightsModel) : m.al = 184 := by
  have h := m.hEdToAl
  omega

theorem weights_ben (m : WeightsModel) : m.ben = 159 := by
  have ha := weights_al m
  have h := m.hBenToAl
  omega

theorem weights_carl (m : WeightsModel) : m.carl = 175 := by
  have hb := weights_ben m
  have h := m.hBenToCarl
  omega

theorem weights_solution (m : WeightsModel) : m.carl = 175 := by
  exact weights_carl m

structure StampsModel where
  nelly : Nat
  total : Nat
  hNelly : nelly = 34 + 44
  hTotal : total = 34 + nelly

theorem stamps_nelly (m : StampsModel) : m.nelly = 78 := by
  have h := m.hNelly
  omega

theorem stamps_total (m : StampsModel) : m.total = 112 := by
  have hn := stamps_nelly m
  have h := m.hTotal
  omega

theorem stamps_solution (m : StampsModel) : m.total = 112 := by
  exact stamps_total m

structure BookModel where
  decrease : Nat
  reduced : Nat
  increase : Nat
  finalPrice : Nat
  hDecrease : 100 * decrease = 15 * 400
  hReduced : reduced + decrease = 400
  hIncrease : 100 * increase = 40 * reduced
  hFinal : finalPrice = reduced + increase

theorem book_reduced (m : BookModel) : m.reduced = 340 := by
  have hd := m.hDecrease
  have hr := m.hReduced
  omega

theorem book_increase (m : BookModel) : m.increase = 136 := by
  have hr := book_reduced m
  have h := m.hIncrease
  omega

theorem book_final (m : BookModel) : m.finalPrice = 476 := by
  have hr := book_reduced m
  have hi := book_increase m
  have h := m.hFinal
  omega

theorem book_solution (m : BookModel) : m.finalPrice = 476 := by
  exact book_final m

structure BasketsModel where
  sandra : Nat
  hector : Nat
  total : Nat
  hSandra : sandra = 3 * 8
  hHector : hector = 2 * sandra
  hTotal : total = 8 + sandra + hector

theorem baskets_sandra (m : BasketsModel) : m.sandra = 24 := by
  have h := m.hSandra
  omega

theorem baskets_hector (m : BasketsModel) : m.hector = 48 := by
  have hs := baskets_sandra m
  have h := m.hHector
  omega

theorem baskets_total (m : BasketsModel) : m.total = 80 := by
  have hs := baskets_sandra m
  have hh := baskets_hector m
  have h := m.hTotal
  omega

theorem baskets_solution (m : BasketsModel) : m.total = 80 := by
  exact baskets_total m

structure ZoeEarningsModel where
  julieEarnings : Nat
  chloeEarnings : Nat
  babysittingTotal : Nat
  poolCleaning : Nat
  hJulieEqualRate : julieEarnings = 3 * 600
  hChloeEqualRate : chloeEarnings = 5 * 600
  hBabysitting : babysittingTotal = 600 + julieEarnings + chloeEarnings
  hTotal : poolCleaning + babysittingTotal = 8000

theorem zoe_equal_rate_babysitting (m : ZoeEarningsModel) :
    m.babysittingTotal = 5400 := by
  have hj := m.hJulieEqualRate
  have hc := m.hChloeEqualRate
  have h := m.hBabysitting
  omega

theorem zoe_equal_rate_pool (m : ZoeEarningsModel) : m.poolCleaning = 2600 := by
  have hb := zoe_equal_rate_babysitting m
  have h := m.hTotal
  omega

theorem zoe_unequal_rate_counterexample :
    (600 : Nat) + 600 + 500 + 6300 = 8000 := by
  norm_num

theorem zoe_solution (m : ZoeEarningsModel) :
    m.poolCleaning = 2600 ∧ (600 : Nat) + 600 + 500 + 6300 = 8000 := by
  constructor
  · exact zoe_equal_rate_pool m
  · exact zoe_unequal_rate_counterexample

end LemmaWeave.Problems.GSM8K.Sprint0928A02
