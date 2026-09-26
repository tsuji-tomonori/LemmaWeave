import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0922A20

structure MemoryCards where
  days : ℕ
  photos : ℕ
  cards : ℕ
  cost : ℕ
  hDays : days = 3 * 365
  hPhotos : photos = days * 10
  hCards : cards * 50 = photos
  hCost : cost = cards * 60
theorem memory_cards_days (m : MemoryCards) : m.days = 1095 := by rw [m.hDays] <;> norm_num
theorem memory_cards_photos (m : MemoryCards) : m.photos = 10950 := by rw [m.hPhotos, memory_cards_days m] <;> norm_num
theorem memory_cards_count (m : MemoryCards) : m.cards = 219 := by
  have h := m.hCards
  rw [memory_cards_photos m] at h
  omega
theorem memory_cards_solution (m : MemoryCards) : m.cost = 13140 := by rw [m.hCost, memory_cards_count m] <;> norm_num

structure GiftShop where
  bracelets : ℕ
  necklaces : ℕ
  total : ℕ
  change : ℕ
  hBracelets : bracelets = 3 * 15
  hNecklaces : necklaces = 2 * 10
  hTotal : total = bracelets + necklaces + 20
  hChange : change + total = 100
theorem gift_shop_bracelets (m : GiftShop) : m.bracelets = 45 := by rw [m.hBracelets] <;> norm_num
theorem gift_shop_necklaces (m : GiftShop) : m.necklaces = 20 := by rw [m.hNecklaces] <;> norm_num
theorem gift_shop_total (m : GiftShop) : m.total = 85 := by rw [m.hTotal, gift_shop_bracelets m, gift_shop_necklaces m]
theorem gift_shop_solution (m : GiftShop) : m.change = 15 := by
  have h := m.hChange
  rw [gift_shop_total m] at h
  omega

structure Buses where
  perBus : ℕ
  fiveBuses : ℕ
  hPerBus : perBus * 9 = 198
  hFive : fiveBuses = perBus * 5
theorem buses_per_bus (m : Buses) : m.perBus = 22 := by
  have h := m.hPerBus
  omega
theorem buses_solution (m : Buses) : m.fiveBuses = 110 := by rw [m.hFive, buses_per_bus m] <;> norm_num

structure Mirrors where
  sarahTall : ℕ
  sarahWide : ℕ
  sarahTotal : ℕ
  ellieTall : ℕ
  ellieWide : ℕ
  ellieTotal : ℕ
  total : ℕ
  hSarahTall : sarahTall = 10 * 3
  hSarahWide : sarahWide = 5 * 5
  hSarahTotal : sarahTotal = sarahTall + sarahWide
  hEllieTall : ellieTall = 6 * 3
  hEllieWide : ellieWide = 3 * 5
  hEllieTotal : ellieTotal = ellieTall + ellieWide
  hTotal : total = sarahTotal + ellieTotal
theorem mirrors_sarah_tall (m : Mirrors) : m.sarahTall = 30 := by rw [m.hSarahTall] <;> norm_num
theorem mirrors_sarah_wide (m : Mirrors) : m.sarahWide = 25 := by rw [m.hSarahWide] <;> norm_num
theorem mirrors_sarah_total (m : Mirrors) : m.sarahTotal = 55 := by rw [m.hSarahTotal, mirrors_sarah_tall m, mirrors_sarah_wide m]
theorem mirrors_ellie_tall (m : Mirrors) : m.ellieTall = 18 := by rw [m.hEllieTall] <;> norm_num
theorem mirrors_ellie_wide (m : Mirrors) : m.ellieWide = 15 := by rw [m.hEllieWide] <;> norm_num
theorem mirrors_ellie_total (m : Mirrors) : m.ellieTotal = 33 := by rw [m.hEllieTotal, mirrors_ellie_tall m, mirrors_ellie_wide m]
theorem mirrors_solution (m : Mirrors) : m.total = 88 := by rw [m.hTotal, mirrors_sarah_total m, mirrors_ellie_total m]

structure Jumping where
  current : ℕ
  needed : ℕ
  hCurrent : current = 34 + 20 + 0 + 123 + 64 + 23
  hNeeded : current + needed > 324
  hMinimal : ∀ n : ℕ, current + n > 324 → needed ≤ n
theorem jumping_current (m : Jumping) : m.current = 264 := by rw [m.hCurrent]
theorem jumping_tie (m : Jumping) : m.current + 60 = 324 := by rw [jumping_current m]
theorem jumping_solution (m : Jumping) : m.needed = 61 := by
  have hlo := m.hNeeded
  rw [jumping_current m] at hlo
  have h61 : m.current + 61 > 324 := by rw [jumping_current m] <;> norm_num
  have hhi := m.hMinimal 61 h61
  omega

structure Clovers where
  fourLeaf : ℕ
  purple : ℕ
  hFourLeaf : fourLeaf * 100 = 500 * 20
  hPurple : purple * 4 = fourLeaf
theorem clovers_four_leaf (m : Clovers) : m.fourLeaf = 100 := by
  have h := m.hFourLeaf
  omega
theorem clovers_solution (m : Clovers) : m.purple = 25 := by
  have h := m.hPurple
  rw [clovers_four_leaf m] at h
  omega

structure Cookies where
  correct : ℕ
  used : ℕ
  sarah : ℕ
  hCorrect : correct = 13 * 10
  hUsed : used + 8 = 150
  hSarah : sarah + correct = used
theorem cookies_correct (m : Cookies) : m.correct = 130 := by rw [m.hCorrect] <;> norm_num
theorem cookies_used (m : Cookies) : m.used = 142 := by
  have h := m.hUsed
  omega
theorem cookies_solution (m : Cookies) : m.sarah = 12 := by
  have h := m.hSarah
  rw [cookies_correct m, cookies_used m] at h
  omega

structure Box where
  longInches : ℕ
  longFeet : ℕ
  shortInches : ℕ
  shortFeet : ℕ
  volume : ℕ
  hLongInches : longInches + 2 = 26
  hLongFeet : longFeet * 12 = longInches
  hShortInches : shortInches + 2 = 14
  hShortFeet : shortFeet * 12 = shortInches
  hVolume : volume = longFeet * longFeet * shortFeet
theorem box_long_inches (m : Box) : m.longInches = 24 := by
  have h := m.hLongInches
  omega
theorem box_long_feet (m : Box) : m.longFeet = 2 := by
  have h := m.hLongFeet
  rw [box_long_inches m] at h
  omega
theorem box_short_inches (m : Box) : m.shortInches = 12 := by
  have h := m.hShortInches
  omega
theorem box_short_feet (m : Box) : m.shortFeet = 1 := by
  have h := m.hShortFeet
  rw [box_short_inches m] at h
  omega
theorem box_solution (m : Box) : m.volume = 4 := by rw [m.hVolume, box_long_feet m, box_short_feet m] <;> norm_num

structure Sheets where
  tommy : ℕ
  jimmyNew : ℕ
  difference : ℕ
  hTommy : tommy = 32 + 10
  hJimmyNew : jimmyNew = 32 + 40
  hDifference : difference + tommy = jimmyNew
theorem sheets_tommy (m : Sheets) : m.tommy = 42 := by rw [m.hTommy]
theorem sheets_jimmy_new (m : Sheets) : m.jimmyNew = 72 := by rw [m.hJimmyNew]
theorem sheets_solution (m : Sheets) : m.difference = 30 := by
  have h := m.hDifference
  rw [sheets_tommy m, sheets_jimmy_new m] at h
  omega

structure Book where
  remaining : ℕ
  halfHours : ℕ
  hours : ℕ
  hRemaining : remaining + 2 = 8
  hHalfHours : halfHours = remaining * 3
  hHours : hours * 2 = halfHours
theorem book_remaining (m : Book) : m.remaining = 6 := by
  have h := m.hRemaining
  omega
theorem book_half_hours (m : Book) : m.halfHours = 18 := by rw [m.hHalfHours, book_remaining m] <;> norm_num
theorem book_solution (m : Book) : m.hours = 9 := by
  have h := m.hHours
  rw [book_half_hours m] at h
  omega

structure Fence where
  perimeter : ℕ
  openings : ℕ
  fencing : ℕ
  hPerimeter : perimeter = 2 * 225 + 2 * 125
  hOpenings : openings = 3 + 10
  hFencing : fencing + openings = perimeter
theorem fence_perimeter (m : Fence) : m.perimeter = 700 := by rw [m.hPerimeter] <;> norm_num
theorem fence_openings (m : Fence) : m.openings = 13 := by rw [m.hOpenings]
theorem fence_solution (m : Fence) : m.fencing = 687 := by
  have h := m.hFencing
  rw [fence_perimeter m, fence_openings m] at h
  omega

structure Budget where
  food : ℕ
  supplies : ℕ
  wages : ℕ
  hFood : food * 3 = 3000
  hSupplies : supplies * 4 = 3000
  hWages : wages + food + supplies = 3000
theorem budget_food (m : Budget) : m.food = 1000 := by
  have h := m.hFood
  omega
theorem budget_supplies (m : Budget) : m.supplies = 750 := by
  have h := m.hSupplies
  omega
theorem budget_solution (m : Budget) : m.wages = 1250 := by
  have h := m.hWages
  rw [budget_food m, budget_supplies m] at h
  omega

structure PrivacyTrees where
  feet : ℕ
  trees : ℕ
  cost : ℕ
  hFeet : feet = 25 * 3
  hTrees : trees * 3 = feet * 2
  hCost : cost = trees * 8
theorem privacy_trees_feet (m : PrivacyTrees) : m.feet = 75 := by rw [m.hFeet] <;> norm_num
theorem privacy_trees_count (m : PrivacyTrees) : m.trees = 50 := by
  have h := m.hTrees
  rw [privacy_trees_feet m] at h
  omega
theorem privacy_trees_solution (m : PrivacyTrees) : m.cost = 400 := by rw [m.hCost, privacy_trees_count m] <;> norm_num

structure Rent where
  purity : ℕ
  sheila : ℕ
  total : ℕ
  hPurity : purity * 3 = 1800
  hSheila : sheila = purity * 5
  hTotal : total = purity + sheila + 1800
theorem rent_purity (m : Rent) : m.purity = 600 := by
  have h := m.hPurity
  omega
theorem rent_sheila (m : Rent) : m.sheila = 3000 := by rw [m.hSheila, rent_purity m] <;> norm_num
theorem rent_solution (m : Rent) : m.total = 5400 := by rw [m.hTotal, rent_purity m, rent_sheila m] <;> norm_num

structure Blueberries where
  perPie : ℕ
  total : ℕ
  hPerPie : perPie = 200 * 2
  hTotal : total = perPie * 6
theorem blueberries_per_pie (m : Blueberries) : m.perPie = 400 := by rw [m.hPerPie] <;> norm_num
theorem blueberries_solution (m : Blueberries) : m.total = 2400 := by rw [m.hTotal, blueberries_per_pie m] <;> norm_num

end LemmaWeave.Problems.GSM8K.Sprint0922A20
