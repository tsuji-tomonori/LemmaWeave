import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A12P3

structure StampModel where
  redCount redPrice whiteCount whitePrice redRevenue whiteRevenue diff dollars : ℕ
  hRedCount : redCount = 30
  hRedPrice : redPrice = 50
  hWhiteCount : whiteCount = 80
  hWhitePrice : whitePrice = 20
  hRedRevenue : redRevenue = 50 * redCount
  hWhiteRevenue : whiteRevenue = 20 * whiteCount
  hDiff : redRevenue + diff = whiteRevenue
  hDollars : 100 * dollars = diff

theorem stamp_red_revenue (m : StampModel) : m.redRevenue = 1500 := by
  cases m <;> omega

theorem stamp_white_revenue (m : StampModel) : m.whiteRevenue = 1600 := by
  cases m <;> omega

theorem stamp_difference_cents (m : StampModel) : m.diff = 100 := by
  have h1 := stamp_red_revenue m
  have h2 := stamp_white_revenue m
  cases m <;> omega

theorem stamp_difference_dollars (m : StampModel) : m.dollars = 1 := by
  have h := stamp_difference_cents m
  cases m <;> omega

structure TheatreModel where
  seats children adults adultPrice childPrice adultRevenue childRevenue totalRevenue : ℕ
  hSeats : seats = 250
  hChildren : children = 188
  hAdults : adults + children = seats
  hAdultPrice : adultPrice = 6
  hChildPrice : childPrice = 4
  hAdultRevenue : adultRevenue = 6 * adults
  hChildRevenue : childRevenue = 4 * children
  hTotal : totalRevenue = adultRevenue + childRevenue

theorem theatre_adults (m : TheatreModel) : m.adults = 62 := by
  cases m <;> omega

theorem theatre_adult_revenue (m : TheatreModel) : m.adultRevenue = 372 := by
  have h := theatre_adults m
  cases m <;> omega

theorem theatre_child_revenue (m : TheatreModel) : m.childRevenue = 752 := by
  cases m <;> omega

theorem theatre_total (m : TheatreModel) : m.totalRevenue = 1124 := by
  have h1 := theatre_adult_revenue m
  have h2 := theatre_child_revenue m
  cases m <;> omega

structure StrawberryModel where
  baskets perBasket friends individual pickers total : ℕ
  hBaskets : baskets = 6
  hPerBasket : perBasket = 50
  hIndividual : individual = 6 * 50
  hFriends : friends = 3
  hPickers : pickers = friends + 1
  hTotal : total = 300 * pickers

theorem strawberry_individual (m : StrawberryModel) : m.individual = 300 := by
  cases m <;> omega

theorem strawberry_pickers (m : StrawberryModel) : m.pickers = 4 := by
  cases m <;> omega

theorem strawberry_total (m : StrawberryModel) : m.total = 1200 := by
  have h1 := strawberry_individual m
  have h2 := strawberry_pickers m
  cases m <;> omega

structure BerryModel where
  blueberries cranberries raspberries total rotten fresh kept sold : ℕ
  hBlueberries : blueberries = 30
  hCranberries : cranberries = 20
  hRaspberries : raspberries = 10
  hTotal : total = blueberries + cranberries + raspberries
  hRotten : 3 * rotten = total
  hFresh : fresh + rotten = total
  hKept : 2 * kept = fresh
  hSold : sold + kept = fresh

theorem berry_total (m : BerryModel) : m.total = 60 := by
  cases m <;> omega

theorem berry_fresh (m : BerryModel) : m.rotten = 20 ∧ m.fresh = 40 := by
  have h := berry_total m
  cases m <;> constructor <;> omega

theorem berry_kept (m : BerryModel) : m.kept = 20 := by
  have h := berry_fresh m
  cases m <;> omega

theorem berry_sold (m : BerryModel) : m.sold = 20 := by
  have h := berry_kept m
  have h2 := berry_fresh m
  cases m <;> omega

structure WatermelonModel where
  total oneCustomers threeCustomers oneMelons threeMelons twoMelons twoCustomers : ℕ
  hTotal : total = 46
  hOneCustomers : oneCustomers = 17
  hThreeCustomers : threeCustomers = 3
  hOneMelons : oneMelons = oneCustomers
  hThreeMelons : threeMelons = 3 * threeCustomers
  hPartition : oneMelons + threeMelons + twoMelons = total
  hTwoCustomers : twoMelons = 2 * twoCustomers

theorem melon_one_and_three (m : WatermelonModel) :
    m.oneMelons = 17 ∧ m.threeMelons = 9 := by
  cases m <;> constructor <;> omega

theorem melon_two_melons (m : WatermelonModel) : m.twoMelons = 20 := by
  have h := melon_one_and_three m
  cases m <;> omega

theorem melon_two_customers (m : WatermelonModel) : m.twoCustomers = 10 := by
  have h := melon_two_melons m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A12P3
