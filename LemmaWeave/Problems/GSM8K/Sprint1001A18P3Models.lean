import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A18P3

structure ContributionModel where
  classTotal fund remaining students each : ℕ
  hClassTotal : classTotal = 90
  hFund : fund = 14
  hRemaining : classTotal = fund + remaining
  hStudents : students = 19
  hEach : remaining = students * each

theorem student_remaining_total (m : ContributionModel) : m.remaining = 76 := by
  cases m <;> omega

theorem student_contribution (m : ContributionModel) : m.each = 4 := by
  have h := student_remaining_total m
  cases m <;> omega

structure NutsModel where
  priceCents couponCents discountedCents ounces servingOunces servings perServingCents : ℕ
  hPrice : priceCents = 2500
  hCoupon : couponCents = 500
  hDiscount : priceCents = couponCents + discountedCents
  hOunces : ounces = 40
  hServingOunces : servingOunces = 1
  hServings : ounces = servings * servingOunces
  hPerServing : discountedCents = servings * perServingCents

theorem nuts_discounted_price (m : NutsModel) : m.discountedCents = 2000 := by
  cases m <;> omega

theorem nuts_serving_count (m : NutsModel) : m.servings = 40 := by
  cases m <;> omega

theorem nuts_cost_per_serving (m : NutsModel) : m.perServingCents = 50 := by
  have h1 := nuts_discounted_price m
  have h2 := nuts_serving_count m
  cases m <;> omega

structure PaintModel where
  shortLength longLength height wallArea coats coatedArea rate hours : ℕ
  hShort : shortLength = 12
  hLong : longLength = 16
  hHeight : height = 10
  hWallArea : wallArea = 2 * shortLength * height + 2 * longLength * height
  hCoats : coats = 3
  hCoatedArea : coatedArea = wallArea * coats
  hRate : rate = 40
  hHours : coatedArea = rate * hours

theorem kitchen_wall_area (m : PaintModel) : m.wallArea = 560 := by
  cases m <;> omega

theorem kitchen_coated_area (m : PaintModel) : m.coatedArea = 1680 := by
  have h := kitchen_wall_area m
  cases m <;> omega

theorem kitchen_paint_hours (m : PaintModel) : m.hours = 42 := by
  have h := kitchen_coated_area m
  cases m <;> omega

structure IceCreamModel where
  boxCostCents barsPerBox friends barsEach barsNeeded boxes totalCostCents perPersonCents : ℕ
  hBoxCost : boxCostCents = 750
  hBarsPerBox : barsPerBox = 3
  hFriends : friends = 6
  hBarsEach : barsEach = 2
  hNeeded : barsNeeded = friends * barsEach
  hBoxes : barsNeeded = boxes * barsPerBox
  hTotal : totalCostCents = boxes * boxCostCents
  hPerPerson : totalCostCents = friends * perPersonCents

theorem ice_cream_bars_needed (m : IceCreamModel) : m.barsNeeded = 12 := by
  cases m <;> omega

theorem ice_cream_boxes (m : IceCreamModel) : m.boxes = 4 := by
  have h := ice_cream_bars_needed m
  cases m <;> omega

theorem ice_cream_total_cost (m : IceCreamModel) : m.totalCostCents = 3000 := by
  have h := ice_cream_boxes m
  cases m <;> omega

theorem ice_cream_per_person (m : IceCreamModel) : m.perPersonCents = 500 := by
  have h := ice_cream_total_cost m
  cases m <;> omega

structure CometModel where
  minutesPerHour shoppingHours shopping setup snackMultiplier snacks watching total roundedPercent : ℕ
  hMinutesPerHour : minutesPerHour = 60
  hShoppingHours : shoppingHours = 2
  hShopping : shopping = shoppingHours * minutesPerHour
  hSetup : setup = 30
  hSnackMultiplier : snackMultiplier = 3
  hSnacks : snacks = snackMultiplier * setup
  hWatching : watching = 20
  hTotal : total = shopping + setup + snacks + watching
  hRoundLower : 260 * (2 * roundedPercent - 1) ≤ 200 * watching
  hRoundUpper : 200 * watching < 260 * (2 * roundedPercent + 1)

theorem comet_shopping_minutes (m : CometModel) : m.shopping = 120 := by
  cases m <;> omega

theorem comet_snack_minutes (m : CometModel) : m.snacks = 90 := by
  cases m <;> omega

theorem comet_total_minutes (m : CometModel) : m.total = 260 := by
  have h1 := comet_shopping_minutes m
  have h2 := comet_snack_minutes m
  cases m <;> omega

theorem comet_watching_nearest_percent (m : CometModel) : m.roundedPercent = 8 := by
  have h := comet_total_minutes m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A18P3
