import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0925A12

structure PhoneApps where installed deleted : ℕ
  hInstalled : installed = 2 * 35
  hDeleted : installed = 50 + deleted
theorem phone_installed (m : PhoneApps) : m.installed = 70 := by cases m; omega
theorem phone_solution (m : PhoneApps) : m.deleted = 20 := by cases m; omega

structure WeeklySalary where hours salary : ℕ
  hHours : 5 * hours = 4 * 40
  hSalary : salary = 15 * hours
theorem salary_hours (m : WeeklySalary) : m.hours = 32 := by cases m; omega
theorem salary_solution (m : WeeklySalary) : m.salary = 480 := by cases m; omega

structure CanadaTrip where driving total : ℕ
  hDriving : 60 * driving = 360
  hTotal : total = driving + 1
theorem trip_driving (m : CanadaTrip) : m.driving = 6 := by cases m; omega
theorem trip_solution (m : CanadaTrip) : m.total = 7 := by cases m; omega

structure Dinner where meals appetizers subtotal tip total : ℕ
  hMeals : meals = 4 * 12
  hApps : appetizers = 2 * 6
  hSubtotal : subtotal = meals + appetizers
  hTip : 5 * tip = subtotal
  hTotal : total = subtotal + tip + 5
theorem dinner_meals (m : Dinner) : m.meals = 48 := by cases m; omega
theorem dinner_apps (m : Dinner) : m.appetizers = 12 := by cases m; omega
theorem dinner_subtotal (m : Dinner) : m.subtotal = 60 := by cases m; omega
theorem dinner_tip (m : Dinner) : m.tip = 12 := by cases m; omega
theorem dinner_solution (m : Dinner) : m.total = 77 := by cases m; omega

structure LibraryLoans where first borrowed remaining : ℕ
  hFirst : first = 5 * 2
  hBorrowed : borrowed = first + 20
  hRemaining : remaining + borrowed = 100
theorem loans_first (m : LibraryLoans) : m.first = 10 := by cases m; omega
theorem loans_total (m : LibraryLoans) : m.borrowed = 30 := by cases m; omega
theorem loans_solution (m : LibraryLoans) : m.remaining = 70 := by cases m; omega

structure PackingTape where large medium small boxes labels total : ℕ
  hLarge : large = 2 * 4
  hMedium : medium = 8 * 2
  hSmall : small = 5 * 1
  hBoxes : boxes = 2 + 8 + 5
  hLabels : labels = boxes * 1
  hTotal : total = large + medium + small + labels
theorem tape_large (m : PackingTape) : m.large = 8 := by cases m; omega
theorem tape_medium (m : PackingTape) : m.medium = 16 := by cases m; omega
theorem tape_small (m : PackingTape) : m.small = 5 := by cases m; omega
theorem tape_boxes (m : PackingTape) : m.boxes = 15 := by cases m; omega
theorem tape_labels (m : PackingTape) : m.labels = 15 := by cases m; omega
theorem tape_solution (m : PackingTape) : m.total = 44 := by cases m; omega

structure ApplePrice where total perKg : ℕ
  hHalf : 2 * total = 12
  hPerKg : total = 3 * perKg
theorem apples_total (m : ApplePrice) : m.total = 6 := by cases m; omega
theorem apples_solution (m : ApplePrice) : m.perKg = 2 := by cases m; omega

structure BirthdayParty where clown rate hours bounce other total : ℕ
  hClown : clown = 100 * 4
  hRate : rate = 3 * 100
  hHours : 2 * hours = 4
  hBounce : bounce = rate * hours
  hOther : other = 1000
  hTotal : total = clown + bounce + other
theorem party_clown (m : BirthdayParty) : m.clown = 400 := by cases m; omega
theorem party_rate (m : BirthdayParty) : m.rate = 300 := by cases m; omega
theorem party_hours (m : BirthdayParty) : m.hours = 2 := by cases m; omega
theorem party_bounce (m : BirthdayParty) : m.bounce = 600 := by cases m; omega
theorem party_solution (m : BirthdayParty) : m.total = 2000 := by cases m; omega

structure OfficeSupplies where pencils pencilCost folderCost total : ℕ
  hPencils : pencils = 2 * 12
  hPencilCost : pencilCost = pencils * 50
  hFolderCost : folderCost = 20 * 90
  hTotal : total = pencilCost + folderCost
theorem supplies_pencils (m : OfficeSupplies) : m.pencils = 24 := by cases m; omega
theorem supplies_pencil_cost (m : OfficeSupplies) : m.pencilCost = 1200 := by cases m; omega
theorem supplies_folder_cost (m : OfficeSupplies) : m.folderCost = 1800 := by cases m; omega
theorem supplies_solution (m : OfficeSupplies) : m.total = 3000 := by cases m; omega

structure OrangeProfit where total unit profit : ℕ
  hTotal : total = 1250
  hUnit : total = 25 * unit
  hProfit : unit + profit = 60
theorem oranges_total (m : OrangeProfit) : m.total = 1250 := by cases m; omega
theorem oranges_unit (m : OrangeProfit) : m.unit = 50 := by cases m; omega
theorem oranges_solution (m : OrangeProfit) : m.profit = 10 := by cases m; omega

structure DiscountPurchase where socks charge excess discount paid : ℕ
  hSocks : socks = 2 * 2
  hCharge : charge = 74 + socks + 42
  hExcess : charge = 100 + excess
  hDiscount : 10 * excess = 100 * discount
  hPaid : paid + discount = charge
theorem discount_socks (m : DiscountPurchase) : m.socks = 4 := by cases m; omega
theorem discount_charge (m : DiscountPurchase) : m.charge = 120 := by cases m; omega
theorem discount_excess (m : DiscountPurchase) : m.excess = 20 := by cases m; omega
theorem discount_value (m : DiscountPurchase) : m.discount = 2 := by cases m; omega
theorem discount_solution (m : DiscountPurchase) : m.paid = 118 := by cases m; omega

structure Ages where future martha : ℕ
  hFuture : future = 10 + 6
  hMartha : martha = 2 * future
theorem age_future (m : Ages) : m.future = 16 := by cases m; omega
theorem age_solution (m : Ages) : m.martha = 32 := by cases m; omega

structure VideoMinutes where long daily weekly : ℕ
  hLong : long = 6 * 2
  hDaily : daily = 2 + 2 + long
  hWeekly : weekly = 7 * daily
theorem videos_long (m : VideoMinutes) : m.long = 12 := by cases m; omega
theorem videos_daily (m : VideoMinutes) : m.daily = 16 := by cases m; omega
theorem videos_solution (m : VideoMinutes) : m.weekly = 112 := by cases m; omega

structure IslandCounts where humans sheep total : ℕ
  hHumans : 2 * humans = 100
  hSheep : 2 * sheep = humans
  hTotal : total = humans + sheep
theorem island_humans (m : IslandCounts) : m.humans = 50 := by cases m; omega
theorem island_sheep (m : IslandCounts) : m.sheep = 25 := by cases m; omega
theorem island_solution (m : IslandCounts) : m.total = 75 := by cases m; omega

theorem pizza_present_total : 24 * 77 = 1848 := by norm_num
theorem pizza_strict_target : 25 * 75 = 1875 := by norm_num
theorem pizza_27_not_enough : 1848 + 27 = 1875 := by norm_num
theorem pizza_solution : 1875 < 1848 + 28 ∧ ∀ g : ℕ, 1875 < 1848 + g → 28 ≤ g := by omega

end LemmaWeave.Problems.GSM8K.Sprint0925A12
