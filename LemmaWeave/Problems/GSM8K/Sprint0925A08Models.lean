import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0925A08

structure RopeCut where total parts unit shorter : ℕ
  hTotal : total = 40
  hParts : parts = 2 + 3
  hUnit : unit * parts = total
  hShorter : shorter = 2 * unit
theorem rope_parts (m : RopeCut) : m.parts = 5 := by cases m; omega
theorem rope_unit (m : RopeCut) : m.unit = 8 := by cases m; omega
theorem rope_solution (m : RopeCut) : m.shorter = 16 := by cases m; omega

structure MovieTickets where adultPrice adults children subtotal discount paidCents paidDollars : ℕ
  hAdultPrice : adultPrice = 425 + 325
  hAdults : adults = 2 * adultPrice
  hChildren : children = 4 * 425
  hSubtotal : subtotal = adults + children
  hDiscount : discount = 200
  hPaid : paidCents = subtotal - discount
  hDollars : paidCents = 100 * paidDollars
theorem movies_adult_price (m : MovieTickets) : m.adultPrice = 750 := by cases m; omega
theorem movies_adults (m : MovieTickets) : m.adults = 1500 := by cases m; omega
theorem movies_children (m : MovieTickets) : m.children = 1700 := by cases m; omega
theorem movies_subtotal (m : MovieTickets) : m.subtotal = 3200 := by cases m; omega
theorem movies_solution (m : MovieTickets) : m.paidDollars = 30 := by cases m; omega

structure Sandbox where area bags cost : ℕ
  hArea : area = 3 * 3
  hBags : area = 3 * bags
  hCost : cost = 4 * bags
theorem sandbox_area (m : Sandbox) : m.area = 9 := by cases m; omega
theorem sandbox_bags (m : Sandbox) : m.bags = 3 := by cases m; omega
theorem sandbox_solution (m : Sandbox) : m.cost = 12 := by cases m; omega

structure Bandages where start used remaining : ℕ
  hStart : start = 2 * 12 - 8
  hUsed : used = 2 + 3
  hRemaining : remaining = start - used
theorem bandages_start (m : Bandages) : m.start = 16 := by cases m; omega
theorem bandages_used (m : Bandages) : m.used = 5 := by cases m; omega
theorem bandages_solution (m : Bandages) : m.remaining = 11 := by cases m; omega

structure Factory where employeePay payroll shirts revenue profit : ℕ
  hEmployeePay : employeePay = 20 * 5 + 8 * 12
  hPayroll : payroll = 20 * employeePay
  hShirts : shirts = 20 * 20
  hRevenue : revenue = 35 * shirts
  hProfit : profit + payroll + 1000 = revenue
theorem factory_employee_pay (m : Factory) : m.employeePay = 196 := by cases m; omega
theorem factory_payroll (m : Factory) : m.payroll = 3920 := by cases m; omega
theorem factory_shirts (m : Factory) : m.shirts = 400 := by cases m; omega
theorem factory_revenue (m : Factory) : m.revenue = 14000 := by cases m; omega
theorem factory_solution (m : Factory) : m.profit = 9080 := by cases m; omega

structure HarryBook where half pages : ℕ
  hHalf : 2 * half = 400
  hPages : pages + 20 = half
theorem book_half (m : HarryBook) : m.half = 200 := by cases m; omega
theorem book_solution (m : HarryBook) : m.pages = 180 := by cases m; omega

structure DogFood where dailyHalfUnits weeklyHalfUnits remainingHalfUnits remainingPounds : ℕ
  hDaily : dailyHalfUnits = 2
  hWeekly : weeklyHalfUnits = dailyHalfUnits * 3 * 7
  hRemaining : remainingHalfUnits + weeklyHalfUnits = 30 * 2
  hPounds : remainingHalfUnits = 2 * remainingPounds
theorem dog_food_daily_half_units (m : DogFood) : m.dailyHalfUnits = 2 := by cases m; omega
theorem dog_food_weekly_half_units (m : DogFood) : m.weeklyHalfUnits = 42 := by cases m; omega
theorem dog_food_remaining_half_units (m : DogFood) : m.remainingHalfUnits = 18 := by cases m; omega
theorem dog_food_solution (m : DogFood) : m.remainingPounds = 9 := by cases m; omega

structure GiftPrice where saved mother brother raised short price : ℕ
  hSaved : saved = 1200
  hMother : 5 * mother = 3 * saved
  hBrother : brother = 2 * mother
  hRaised : raised = saved + mother + brother
  hShort : short = 400
  hPrice : price = raised + short
theorem gift_mother (m : GiftPrice) : m.mother = 720 := by cases m; omega
theorem gift_brother (m : GiftPrice) : m.brother = 1440 := by cases m; omega
theorem gift_raised (m : GiftPrice) : m.raised = 3360 := by cases m; omega
theorem gift_solution (m : GiftPrice) : m.price = 3760 := by cases m; omega

structure ChristianAge where brianNow christianNow christianFuture : ℕ
  hBrian : brianNow + 8 = 40
  hChristian : christianNow = 2 * brianNow
  hFuture : christianFuture = christianNow + 8
theorem christian_brian_now (m : ChristianAge) : m.brianNow = 32 := by cases m; omega
theorem christian_now (m : ChristianAge) : m.christianNow = 64 := by cases m; omega
theorem christian_solution (m : ChristianAge) : m.christianFuture = 72 := by cases m; omega

structure Weights where peter tyler sam : ℕ
  hPeter : peter = 65
  hHalf : tyler = 2 * peter
  hMore : tyler = sam + 25
theorem weights_tyler (m : Weights) : m.tyler = 130 := by cases m; omega
theorem weights_solution (m : Weights) : m.sam = 105 := by cases m; omega

structure SamirAge where haniaNow haniaPast samirNow samirFuture : ℕ
  hHaniaNow : haniaNow + 5 = 45
  hHaniaPast : haniaPast + 10 = haniaNow
  hSamir : 2 * samirNow = haniaPast
  hFuture : samirFuture = samirNow + 5
theorem samir_hania_now (m : SamirAge) : m.haniaNow = 40 := by cases m; omega
theorem samir_hania_past (m : SamirAge) : m.haniaPast = 30 := by cases m; omega
theorem samir_now (m : SamirAge) : m.samirNow = 15 := by cases m; omega
theorem samir_solution (m : SamirAge) : m.samirFuture = 20 := by cases m; omega

structure StickerClass where given friendStickers otherStickers otherStudents totalStudents : ℕ
  hGiven : given + 8 = 50
  hFriends : friendStickers = 4 * 5
  hOthers : otherStickers + friendStickers = given
  hOtherStudents : otherStickers = 2 * otherStudents
  hTotalStudents : totalStudents = 1 + 5 + otherStudents
theorem stickers_class_given (m : StickerClass) : m.given = 42 := by cases m; omega
theorem stickers_class_friends (m : StickerClass) : m.friendStickers = 20 := by cases m; omega
theorem stickers_class_others (m : StickerClass) : m.otherStickers = 22 := by cases m; omega
theorem stickers_class_other_students (m : StickerClass) : m.otherStudents = 11 := by cases m; omega
theorem stickers_class_solution (m : StickerClass) : m.totalStudents = 17 := by cases m; omega

structure RestaurantBill where twins desserts subtotal tip finalCents finalDollars : ℕ
  hTwins : twins = 2 * 1350
  hDesserts : desserts = 4 * 600
  hSubtotal : subtotal = 2550 + 3500 + twins + 850 + desserts
  hTip : 5 * tip = subtotal
  hFinal : finalCents = subtotal + tip
  hDollars : finalCents = 100 * finalDollars
theorem restaurant_twins (m : RestaurantBill) : m.twins = 2700 := by cases m; omega
theorem restaurant_desserts (m : RestaurantBill) : m.desserts = 2400 := by cases m; omega
theorem restaurant_subtotal (m : RestaurantBill) : m.subtotal = 12000 := by cases m; omega
theorem restaurant_tip (m : RestaurantBill) : m.tip = 2400 := by cases m; omega
theorem restaurant_solution (m : RestaurantBill) : m.finalDollars = 144 := by cases m; omega

structure DogGroomer where longPerDog shortTotal longTotal minutes hours : ℕ
  hLongPerDog : longPerDog = 2 * 10
  hShortTotal : shortTotal = 6 * 10
  hLongTotal : longTotal = 9 * longPerDog
  hMinutes : minutes = shortTotal + longTotal
  hHours : minutes = 60 * hours
theorem groomer_long_per_dog (m : DogGroomer) : m.longPerDog = 20 := by cases m; omega
theorem groomer_short_total (m : DogGroomer) : m.shortTotal = 60 := by cases m; omega
theorem groomer_long_total (m : DogGroomer) : m.longTotal = 180 := by cases m; omega
theorem groomer_minutes (m : DogGroomer) : m.minutes = 240 := by cases m; omega
theorem groomer_solution (m : DogGroomer) : m.hours = 4 := by cases m; omega

structure CorgiSale where profitEach priceEach total : ℕ
  hProfit : 100 * profitEach = 30 * 1000
  hPrice : priceEach = 1000 + profitEach
  hTotal : total = 2 * priceEach
theorem corgi_profit (m : CorgiSale) : m.profitEach = 300 := by cases m; omega
theorem corgi_price (m : CorgiSale) : m.priceEach = 1300 := by cases m; omega
theorem corgi_solution (m : CorgiSale) : m.total = 2600 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0925A08
