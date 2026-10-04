import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A02P2

structure TipsModel where
  friday : ℕ
  saturday : ℕ
  sunday : ℕ
  customers : ℕ
  tips : ℕ
  hFriday : friday = 28
  hSaturday : saturday = 3 * friday
  hSunday : sunday = 36
  hCustomers : customers = friday + saturday + sunday
  hTips : tips = 2 * customers

theorem tips_saturday (m : TipsModel) : m.saturday = 84 := by
  omega
theorem tips_customers (m : TipsModel) : m.customers = 148 := by
  have h := tips_saturday m
  omega
theorem tips_total (m : TipsModel) : m.tips = 296 := by
  have h := tips_customers m
  omega
structure HouseAreaModel where
  bedroomArea : ℕ
  bedroomsArea : ℕ
  bathroomArea : ℕ
  bathroomsArea : ℕ
  kitchenArea : ℕ
  livingArea : ℕ
  hBedroom : bedroomArea = 11 * 11
  hBedrooms : bedroomsArea = 4 * bedroomArea
  hBathroom : bathroomArea = 6 * 8
  hBathrooms : bathroomsArea = 2 * bathroomArea
  hEqual : kitchenArea = livingArea
  hHouse : bedroomsArea + bathroomsArea + kitchenArea + livingArea = 1110

theorem area_bedrooms (m : HouseAreaModel) : m.bedroomsArea = 484 := by
  cases m <;> norm_num at *

theorem area_bathrooms (m : HouseAreaModel) : m.bathroomsArea = 96 := by
  cases m <;> norm_num at *

theorem area_kitchen (m : HouseAreaModel) : m.kitchenArea = 265 := by
  have h1 := area_bedrooms m
  have h2 := area_bathrooms m
  omega
structure MealsModel where
  breakfastCents : ℕ
  lunchCents : ℕ
  differenceCents : ℕ
  hBreakfast : breakfastCents = 200 + 400
  hLunch : lunchCents = 300 + 525 + 75
  hDifference : breakfastCents + differenceCents = lunchCents

theorem meals_breakfast (m : MealsModel) : m.breakfastCents = 600 := by
  cases m <;> norm_num at *

theorem meals_lunch (m : MealsModel) : m.lunchCents = 900 := by
  cases m <;> norm_num at *

theorem meals_difference (m : MealsModel) : m.differenceCents = 300 := by
  have h1 := meals_breakfast m
  have h2 := meals_lunch m
  omega
structure LemonadeModel where
  stanleyPerHour : ℕ
  carlPerHour : ℕ
  hours : ℕ
  stanleyTotal : ℕ
  carlTotal : ℕ
  difference : ℕ
  hStanleyRate : stanleyPerHour = 4
  hCarlRate : carlPerHour = 7
  hHours : hours = 3
  hStanley : stanleyTotal = stanleyPerHour * hours
  hCarl : carlTotal = carlPerHour * hours
  hDifference : stanleyTotal + difference = carlTotal

theorem lemonade_stanley (m : LemonadeModel) : m.stanleyTotal = 12 := by
  cases m <;> norm_num at *

theorem lemonade_carl (m : LemonadeModel) : m.carlTotal = 21 := by
  cases m <;> norm_num at *

theorem lemonade_difference (m : LemonadeModel) : m.difference = 9 := by
  have h1 := lemonade_stanley m
  have h2 := lemonade_carl m
  omega
structure StatuesModel where
  jade : ℕ
  giraffeCount : ℕ
  elephantCount : ℕ
  giraffeRevenue : ℕ
  elephantRevenue : ℕ
  difference : ℕ
  hJade : jade = 1920
  hGiraffes : 120 * giraffeCount = jade
  hElephants : 240 * elephantCount = jade
  hGiraffeRevenue : giraffeRevenue = 150 * giraffeCount
  hElephantRevenue : elephantRevenue = 350 * elephantCount
  hDifference : giraffeRevenue + difference = elephantRevenue

theorem statues_giraffes (m : StatuesModel) : m.giraffeCount = 16 := by
  omega
theorem statues_elephants (m : StatuesModel) : m.elephantCount = 8 := by
  omega
theorem statues_giraffe_revenue (m : StatuesModel) : m.giraffeRevenue = 2400 := by
  have h := statues_giraffes m
  omega
theorem statues_elephant_revenue (m : StatuesModel) : m.elephantRevenue = 2800 := by
  have h := statues_elephants m
  omega
theorem statues_difference (m : StatuesModel) : m.difference = 400 := by
  have h1 := statues_giraffe_revenue m
  have h2 := statues_elephant_revenue m
  omega
end LemmaWeave.Problems.GSM8K.Sprint1001A02P2
