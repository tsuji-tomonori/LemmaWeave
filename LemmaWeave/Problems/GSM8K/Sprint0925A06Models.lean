import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0925A06

-- The source omits the number of trees.  The dataset answer is valid only
-- after adding the explicit condition that eight trees were planted.
structure AppleTrees where
  eaten plantedApples trees : ℕ
  hBought : eaten + plantedApples = 6
  hTrees : trees = 2 * plantedApples
theorem apples_planted_if_eight (m : AppleTrees) (h : m.trees = 8) :
    m.plantedApples = 4 := by cases m; omega
theorem apples_solution_if_eight (m : AppleTrees) (h : m.trees = 8) :
    m.eaten = 2 := by cases m; omega
theorem apples_not_determined :
    ∃ m₁ m₂ : AppleTrees, m₁.eaten = 1 ∧ m₂.eaten = 2 := by
  refine ⟨⟨1, 5, 10, by decide, by decide⟩,
    ⟨2, 4, 8, by decide, by decide⟩, rfl, rfl⟩

structure RaspberrySyrup where
  juiceCups reducedCups finalCups : ℕ
  hJuice : juiceCups = 6 * 4
  hReduced : 12 * reducedCups = juiceCups
  hFinal : finalCups = reducedCups + 1
theorem syrup_juice_cups (m : RaspberrySyrup) : m.juiceCups = 24 := by cases m; omega
theorem syrup_reduced (m : RaspberrySyrup) : m.reducedCups = 2 := by cases m; omega
theorem syrup_solution (m : RaspberrySyrup) : m.finalCups = 3 := by cases m; omega

structure FriendsByWeek where
  total girls boys : ℕ
  hTotal : total = 2 * 7
  hGirls : girls = 3
  hSplit : boys + girls = total
theorem week_friends_total (m : FriendsByWeek) : m.total = 14 := by cases m; omega
theorem week_friends_solution (m : FriendsByWeek) : m.boys = 11 := by cases m; omega

-- Pay is modeled per dog, matching the dataset reading.
structure DogWalking where
  longDogs longHours longPay remainingHours shortDogs shortPay daily weekly : ℕ
  hLongDogs : longDogs = 6
  hLongHours : 3 * longHours = longDogs
  hLongPay : longPay = 20 * longDogs
  hRemaining : remainingHours + longHours = 4
  hShortDogs : shortDogs = 6 * remainingHours
  hShortPay : shortPay = 15 * shortDogs
  hDaily : daily = longPay + shortPay
  hWeekly : weekly = 5 * daily
theorem dogs_long_hours (m : DogWalking) : m.longHours = 2 := by cases m; omega
theorem dogs_long_pay (m : DogWalking) : m.longPay = 120 := by cases m; omega
theorem dogs_short_count (m : DogWalking) : m.shortDogs = 12 := by cases m; omega
theorem dogs_daily (m : DogWalking) : m.daily = 300 := by cases m; omega
theorem dogs_solution (m : DogWalking) : m.weekly = 1500 := by cases m; omega

structure ShoePolish where
  total polished remaining : ℕ
  hTotal : total = 10 * 2
  hPolished : 100 * polished = 45 * total
  hRemaining : remaining + polished = total
theorem polish_total (m : ShoePolish) : m.total = 20 := by cases m; omega
theorem polish_done (m : ShoePolish) : m.polished = 9 := by cases m; omega
theorem polish_solution (m : ShoePolish) : m.remaining = 11 := by cases m; omega

structure RopeGiving where
  allan afterAllan jack left : ℕ
  hAllan : 4 * allan = 20
  hAfterAllan : afterAllan + allan = 20
  hJack : 3 * jack = 2 * afterAllan
  hLeft : left + jack = afterAllan
theorem rope_allan (m : RopeGiving) : m.allan = 5 := by cases m; omega
theorem rope_after_allan (m : RopeGiving) : m.afterAllan = 15 := by cases m; omega
theorem rope_jack (m : RopeGiving) : m.jack = 10 := by cases m; omega
theorem rope_solution (m : RopeGiving) : m.left = 5 := by cases m; omega

structure PancakeBreakfast where
  girls eachGirl girlsTotal son total : ℕ
  hGirls : girls = 1 + 3
  hEachGirl : 2 * eachGirl = 3 * 4
  hGirlsTotal : girlsTotal = 4 * eachGirl
  hSon : son = 3 * 4
  hTotal : total = girlsTotal + son
theorem pancakes_girls (m : PancakeBreakfast) : m.girls = 4 := by cases m; omega
theorem pancakes_each_girl (m : PancakeBreakfast) : m.eachGirl = 6 := by cases m; omega
theorem pancakes_girls_total (m : PancakeBreakfast) : m.girlsTotal = 24 := by cases m; omega
theorem pancakes_son (m : PancakeBreakfast) : m.son = 12 := by cases m; omega
theorem pancakes_solution (m : PancakeBreakfast) : m.total = 36 := by cases m; omega

structure DiscountShoes where
  discount paid saved : ℕ
  hDiscount : 100 * discount = 30 * 120
  hPaid : paid + discount = 120
  hSaved : saved + paid = 130
theorem shoes_discount (m : DiscountShoes) : m.discount = 36 := by cases m; omega
theorem shoes_paid (m : DiscountShoes) : m.paid = 84 := by cases m; omega
theorem shoes_solution (m : DiscountShoes) : m.saved = 46 := by cases m; omega

structure Orchestra where
  percussion brass strings woodwinds maestro total : ℕ
  hPercussion : percussion = 1
  hBrass : brass = 4 + 2 + 1
  hStrings : strings = 3 + 1 + 1
  hWoodwinds : woodwinds = 3 + 4
  hMaestro : maestro = 1
  hTotal : total = percussion + brass + strings + woodwinds + maestro
theorem orchestra_brass (m : Orchestra) : m.brass = 7 := by cases m; omega
theorem orchestra_strings (m : Orchestra) : m.strings = 5 := by cases m; omega
theorem orchestra_woodwinds (m : Orchestra) : m.woodwinds = 7 := by cases m; omega
theorem orchestra_solution (m : Orchestra) : m.total = 21 := by cases m; omega

structure DanceStudios where
  first second third total : ℕ
  hFirst : first = 110
  hSecond : second = 135
  hTotal : total = 376
  hSplit : first + second + third = total
theorem dance_first_two (m : DanceStudios) : m.first + m.second = 245 := by cases m; omega
theorem dance_solution (m : DanceStudios) : m.third = 131 := by cases m; omega

structure BankTransfers where
  mother sister transferred before after : ℕ
  hMother : mother = 60
  hSister : 2 * sister = mother
  hTransferred : transferred = mother + sister
  hAfter : after = 100
  hBefore : before = after + transferred
theorem bank_sister (m : BankTransfers) : m.sister = 30 := by cases m; omega
theorem bank_transferred (m : BankTransfers) : m.transferred = 90 := by cases m; omega
theorem bank_solution (m : BankTransfers) : m.before = 190 := by cases m; omega

structure FarmWork where
  total tips wages hours : ℕ
  hTotal : total = 240
  hTips : tips = 50
  hWages : wages + tips = total
  hHours : wages = 10 * hours
theorem farm_wages (m : FarmWork) : m.wages = 190 := by cases m; omega
theorem farm_solution (m : FarmWork) : m.hours = 19 := by cases m; omega

-- The source says 312 total; the reference prose has one isolated 315 typo.
structure CarColors where
  green red purple : ℕ
  hGreen : green = 4 * red
  hRed : red = purple + 6
  hTotal : green + red + purple = 312
theorem cars_red (m : CarColors) : m.red = 53 := by cases m; omega
theorem cars_green (m : CarColors) : m.green = 212 := by cases m; omega
theorem cars_solution (m : CarColors) : m.purple = 47 := by cases m; omega

structure MarbleRatio where
  unit brittany alex transfer finalAlex : ℕ
  hUnit : 15 * unit = 600
  hBrittany : brittany = 3 * unit
  hAlex : alex = 5 * unit
  hTransfer : 2 * transfer = brittany
  hFinal : finalAlex = alex + transfer
theorem ratio_unit (m : MarbleRatio) : m.unit = 40 := by cases m; omega
theorem ratio_brittany (m : MarbleRatio) : m.brittany = 120 := by cases m; omega
theorem ratio_alex (m : MarbleRatio) : m.alex = 200 := by cases m; omega
theorem ratio_transfer (m : MarbleRatio) : m.transfer = 60 := by cases m; omega
theorem ratio_solution (m : MarbleRatio) : m.finalAlex = 260 := by cases m; omega

-- All monetary values are cents.
structure BookDiscount where
  firstTwo discount discountedFirstTwo otherTwo subtotal more : ℕ
  hFirstTwo : firstTwo = 1300 + 1500
  hDiscount : 100 * discount = 25 * firstTwo
  hDiscounted : discountedFirstTwo + discount = firstTwo
  hOtherTwo : otherTwo = 1000 + 1000
  hSubtotal : subtotal = discountedFirstTwo + otherTwo
  hMore : subtotal + more = 5000
theorem books_first_two (m : BookDiscount) : m.firstTwo = 2800 := by cases m; omega
theorem books_discount (m : BookDiscount) : m.discount = 700 := by cases m; omega
theorem books_subtotal (m : BookDiscount) : m.subtotal = 4100 := by cases m; omega
theorem books_solution (m : BookDiscount) : m.more = 900 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0925A06
