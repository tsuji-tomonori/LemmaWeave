import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A20

structure BeanieBabies where
  sydney : ℕ
  total : ℕ
  hSydney : 15 * sydney = 300
  hTotal : total = 300 + sydney

theorem beanie_sydney (m : BeanieBabies) : m.sydney = 20 := by omega
theorem beanie_solution (m : BeanieBabies) : m.total = 320 := by omega

structure SinkWater where
  first : ℕ
  second : ℕ
  finalHour : ℕ
  total : ℕ
  left : ℕ
  hFirst : first = 3 * 2
  hSecond : second = 3 * 2
  hFinalHour : finalHour = 6 * 4
  hTotal : total = first + second + finalHour
  hLeft : 2 * left = total

theorem water_first (m : SinkWater) : m.first = 6 := by omega
theorem water_second (m : SinkWater) : m.second = 6 := by omega
theorem water_final_hour (m : SinkWater) : m.finalHour = 24 := by omega
theorem water_total (m : SinkWater) : m.total = 36 := by omega
theorem water_solution (m : SinkWater) : m.left = 18 := by omega

structure ShirtShop where
  minutes : ℕ
  womenCount : ℕ
  womenRevenue : ℕ
  menCount : ℕ
  menRevenue : ℕ
  daily : ℕ
  weekly : ℕ
  hMinutes : minutes = 12 * 60
  hWomenCount : 30 * womenCount = minutes
  hWomenRevenue : womenRevenue = womenCount * 18
  hMenCount : 40 * menCount = minutes
  hMenRevenue : menRevenue = menCount * 15
  hDaily : daily = womenRevenue + menRevenue
  hWeekly : weekly = daily * 7

theorem shirts_minutes (m : ShirtShop) : m.minutes = 720 := by omega
theorem shirts_women_count (m : ShirtShop) : m.womenCount = 24 := by omega
theorem shirts_women_revenue (m : ShirtShop) : m.womenRevenue = 432 := by omega
theorem shirts_men_count (m : ShirtShop) : m.menCount = 18 := by omega
theorem shirts_men_revenue (m : ShirtShop) : m.menRevenue = 270 := by omega
theorem shirts_daily (m : ShirtShop) : m.daily = 702 := by omega
theorem shirts_solution (m : ShirtShop) : m.weekly = 4914 := by omega

structure TeamParties where
  oneParty : ℕ
  total : ℕ
  hOne : oneParty = 40 * 60
  hTotal : total = oneParty * 8

theorem parties_one (m : TeamParties) : m.oneParty = 2400 := by omega
theorem parties_solution (m : TeamParties) : m.total = 19200 := by omega

structure DentistBill where
  total : ℕ
  fillings : ℕ
  extraction : ℕ
  hTotal : total = 5 * 120
  hFillings : fillings = 2 * 120
  hExtraction : extraction + fillings + 70 = total

theorem dentist_total (m : DentistBill) : m.total = 600 := by omega
theorem dentist_fillings (m : DentistBill) : m.fillings = 240 := by omega
theorem dentist_solution (m : DentistBill) : m.extraction = 290 := by omega

structure ApartmentRent where
  firstYears : ℕ
  lastYears : ℕ
  total : ℕ
  hFirst : firstYears = 300 * 12 * 3
  hLast : lastYears = 350 * 12 * 2
  hTotal : total = firstYears + lastYears

theorem rent_first_years (m : ApartmentRent) : m.firstYears = 10800 := by omega
theorem rent_last_years (m : ApartmentRent) : m.lastYears = 8400 := by omega
theorem rent_solution (m : ApartmentRent) : m.total = 19200 := by omega

/-- February and March are each percentages of the original savings. -/
structure SavingsOriginalPercent where
  spentPercent : ℕ
  aprilAndLeft : ℕ
  initial : ℕ
  hPercent : spentPercent = 20 + 40
  hPool : aprilAndLeft = 1500 + 2900
  hInitial : initial * 40 = aprilAndLeft * 100

theorem savings_spent_percent (m : SavingsOriginalPercent) : m.spentPercent = 60 := by omega
theorem savings_april_and_left (m : SavingsOriginalPercent) : m.aprilAndLeft = 4400 := by omega
theorem savings_solution (m : SavingsOriginalPercent) : m.initial = 11000 := by omega

/-- If March instead spends 40% of the post-February remainder, 48% remains before April. -/
theorem savings_sequential_whole_dollars_impossible :
    ¬ ∃ initial : ℕ, 48 * initial = 100 * 4400 := by omega

theorem pot_people : 7 + 1 = 8 := by norm_num
theorem pot_total : 8 * 5 = 40 := by norm_num
theorem pot_first : 40 * 80 / 100 = 32 := by norm_num
theorem pot_remaining : 40 - 32 = 8 := by norm_num
theorem pot_split_example_third_zero : 8 + 0 = 8 := by norm_num
theorem pot_split_example_third_eight : 0 + 8 = 8 := by norm_num
theorem pot_equal_split (second third : ℕ) (hSplit : second + third = 8)
    (hEqual : second = third) : third = 4 := by omega

structure BicycleStock where
  sold : ℕ
  bought : ℕ
  increase : ℕ
  hSold : sold = 10 + 12 + 9
  hBought : bought = 15 + 8 + 11
  hIncrease : sold + increase = bought

theorem stock_sold (m : BicycleStock) : m.sold = 31 := by omega
theorem stock_bought (m : BicycleStock) : m.bought = 34 := by omega
theorem stock_solution (m : BicycleStock) : m.increase = 3 := by omega

structure SchoolBooks where
  mathCost : ℕ
  scienceCost : ℕ
  otherCost : ℕ
  artEach : ℕ
  hMath : mathCost = 2 * 3
  hScience : scienceCost = 6 * 3
  hOther : otherCost = mathCost + scienceCost
  hArt : otherCost + 3 * artEach = 30

theorem books_math (m : SchoolBooks) : m.mathCost = 6 := by omega
theorem books_science (m : SchoolBooks) : m.scienceCost = 18 := by omega
theorem books_other (m : SchoolBooks) : m.otherCost = 24 := by omega
theorem books_solution (m : SchoolBooks) : m.artEach = 2 := by omega

structure JeromeMoney where
  initial : ℕ
  bianca : ℕ
  left : ℕ
  hInitial : initial = 43 * 2
  hBianca : bianca = 8 * 3
  hLeft : left + 8 + bianca = initial

theorem jerome_initial (m : JeromeMoney) : m.initial = 86 := by omega
theorem jerome_bianca (m : JeromeMoney) : m.bianca = 24 := by omega
theorem jerome_solution (m : JeromeMoney) : m.left = 54 := by omega

structure PetLegs where
  birdLegs : ℕ
  dogLegs : ℕ
  snakeLegs : ℕ
  spiderLegs : ℕ
  total : ℕ
  hBirds : birdLegs = 3 * 2
  hDogs : dogLegs = 5 * 4
  hSnakes : snakeLegs = 4 * 0
  hSpider : spiderLegs = 1 * 8
  hTotal : total = birdLegs + dogLegs + snakeLegs + spiderLegs

theorem pets_birds (m : PetLegs) : m.birdLegs = 6 := by omega
theorem pets_dogs (m : PetLegs) : m.dogLegs = 20 := by omega
theorem pets_snakes (m : PetLegs) : m.snakeLegs = 0 := by omega
theorem pets_spider (m : PetLegs) : m.spiderLegs = 8 := by omega
theorem pets_solution (m : PetLegs) : m.total = 34 := by omega

structure Earnings where
  kayla : ℕ
  saheed : ℕ
  hKayla : kayla + 30 = 84
  hSaheed : saheed = 4 * kayla

theorem earnings_kayla (m : Earnings) : m.kayla = 54 := by omega
theorem earnings_solution (m : Earnings) : m.saheed = 216 := by omega

structure ShortsDiscount where
  regular : ℕ
  discount : ℕ
  sale : ℕ
  saving : ℕ
  hRegular : regular = 3 * 10
  hDiscount : discount * 100 = regular * 10
  hSale : sale + discount = regular
  hSaving : saving = discount

theorem shorts_regular (m : ShortsDiscount) : m.regular = 30 := by omega
theorem shorts_discount (m : ShortsDiscount) : m.discount = 3 := by omega
theorem shorts_sale (m : ShortsDiscount) : m.sale = 27 := by omega
theorem shorts_solution (m : ShortsDiscount) : m.saving = 3 := by omega

structure ParkVisit where
  people : ℕ
  entrance : ℕ
  childrenAttraction : ℕ
  adultsAttraction : ℕ
  total : ℕ
  hPeople : people = 4 + 2 + 1
  hEntrance : entrance = people * 5
  hChildren : childrenAttraction = 4 * 2
  hAdults : adultsAttraction = (2 + 1) * 4
  hTotal : total = entrance + childrenAttraction + adultsAttraction

theorem park_people (m : ParkVisit) : m.people = 7 := by omega
theorem park_entrance (m : ParkVisit) : m.entrance = 35 := by omega
theorem park_children (m : ParkVisit) : m.childrenAttraction = 8 := by omega
theorem park_adults (m : ParkVisit) : m.adultsAttraction = 12 := by omega
theorem park_solution (m : ParkVisit) : m.total = 55 := by omega

end LemmaWeave.Problems.GSM8K.Sprint0923A20
