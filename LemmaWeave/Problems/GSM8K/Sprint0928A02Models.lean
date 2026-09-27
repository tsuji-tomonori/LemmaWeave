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

end LemmaWeave.Problems.GSM8K.Sprint0928A02
