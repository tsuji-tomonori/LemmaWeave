import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0925A14

structure Milk where initial left : ℕ
  hInitial : initial = 3 * 128
  hLeft : left + 13 = initial
theorem milk_initial (m : Milk) : m.initial = 384 := by cases m; omega
theorem milk_solution (m : Milk) : m.left = 371 := by cases m; omega

structure ColoredBalls where green yellow total : ℕ
  hGreen : green = 3 * 6
  hYellow : yellow = 2 * 4
  hTotal : total = 6 + 4 + green + yellow
theorem balls_green (m : ColoredBalls) : m.green = 18 := by cases m; omega
theorem balls_yellow (m : ColoredBalls) : m.yellow = 8 := by cases m; omega
theorem balls_solution (m : ColoredBalls) : m.total = 36 := by cases m; omega

structure TargetPurchase where moisturizers lotions tanya christy total : ℕ
  hMoisturizers : moisturizers = 2 * 50
  hLotions : lotions = 4 * 60
  hTanya : tanya = moisturizers + lotions
  hChristy : christy = 2 * tanya
  hTotal : total = tanya + christy
theorem target_moisturizers (m : TargetPurchase) : m.moisturizers = 100 := by cases m; omega
theorem target_lotions (m : TargetPurchase) : m.lotions = 240 := by cases m; omega
theorem target_tanya (m : TargetPurchase) : m.tanya = 340 := by cases m; omega
theorem target_christy (m : TargetPurchase) : m.christy = 680 := by cases m; omega
theorem target_solution (m : TargetPurchase) : m.total = 1020 := by cases m; omega

structure CombinedMoney where nataly tom total : ℕ
  hNataly : nataly = 3 * 40
  hTom : 4 * tom = nataly
  hTotal : total = tom + 40 + nataly
theorem money_nataly (m : CombinedMoney) : m.nataly = 120 := by cases m; omega
theorem money_tom (m : CombinedMoney) : m.tom = 30 := by cases m; omega
theorem money_solution (m : CombinedMoney) : m.total = 190 := by cases m; omega

structure OldCurrency where pfennigs left : ℕ
  hPfennigs : 6 * pfennigs = 54
  hLeft : left + 2 = pfennigs
theorem currency_pfennigs (m : OldCurrency) : m.pfennigs = 9 := by cases m; omega
theorem currency_solution (m : OldCurrency) : m.left = 7 := by cases m; omega

structure CanStorage where shelf closet : ℕ
  hShelf : shelf = 12 * 4
  hCloset : closet = 10 * shelf
theorem cans_shelf (m : CanStorage) : m.shelf = 48 := by cases m; omega
theorem cans_solution (m : CanStorage) : m.closet = 480 := by cases m; omega

structure ShelterCats where initial afterIntake afterAdoption afterKittens final : ℕ
  hInitial : 2 * initial = 12
  hAfterIntake : afterIntake = initial + 12
  hAfterAdoption : afterAdoption + 3 = afterIntake
  hAfterKittens : afterKittens = afterAdoption + 5
  hFinal : final + 1 = afterKittens
theorem cats_initial (m : ShelterCats) : m.initial = 6 := by cases m; omega
theorem cats_after_intake (m : ShelterCats) : m.afterIntake = 18 := by cases m; omega
theorem cats_after_adoption (m : ShelterCats) : m.afterAdoption = 15 := by cases m; omega
theorem cats_after_kittens (m : ShelterCats) : m.afterKittens = 20 := by cases m; omega
theorem cats_solution (m : ShelterCats) : m.final = 19 := by cases m; omega

structure AmuletProfit where sold revenue fee kept cost profit : ℕ
  hSold : sold = 2 * 25
  hRevenue : revenue = 40 * sold
  hFee : 10 * fee = revenue
  hKept : kept + fee = revenue
  hCost : cost = 30 * sold
  hProfit : profit + cost = kept
theorem amulets_sold (m : AmuletProfit) : m.sold = 50 := by cases m; omega
theorem amulets_revenue (m : AmuletProfit) : m.revenue = 2000 := by cases m; omega
theorem amulets_fee (m : AmuletProfit) : m.fee = 200 := by cases m; omega
theorem amulets_kept (m : AmuletProfit) : m.kept = 1800 := by cases m; omega
theorem amulets_cost (m : AmuletProfit) : m.cost = 1500 := by cases m; omega
theorem amulets_solution (m : AmuletProfit) : m.profit = 300 := by cases m; omega

structure FruitCost where apples pears total : ℕ
  hApples : apples = 14 * 40
  hPears : pears = 14 * 50
  hTotal : total = apples + pears
theorem fruit_apples (m : FruitCost) : m.apples = 560 := by cases m; omega
theorem fruit_pears (m : FruitCost) : m.pears = 700 := by cases m; omega
theorem fruit_solution (m : FruitCost) : m.total = 1260 := by cases m; omega

structure GuestCounts where children seniors total : ℕ
  hChildren : children + 35 = 58
  hSeniors : seniors = 2 * children
  hTotal : total = 58 + children + seniors
theorem guests_children (m : GuestCounts) : m.children = 23 := by cases m; omega
theorem guests_seniors (m : GuestCounts) : m.seniors = 46 := by cases m; omega
theorem guests_solution (m : GuestCounts) : m.total = 127 := by cases m; omega

structure BlockTowers where second third secondFell thirdFell total : ℕ
  hSecond : second = 7 + 5
  hThird : third = second + 7
  hSecondFell : secondFell + 2 = second
  hThirdFell : thirdFell + 3 = third
  hTotal : total = 7 + secondFell + thirdFell
theorem blocks_second (m : BlockTowers) : m.second = 12 := by cases m; omega
theorem blocks_third (m : BlockTowers) : m.third = 19 := by cases m; omega
theorem blocks_second_fell (m : BlockTowers) : m.secondFell = 10 := by cases m; omega
theorem blocks_third_fell (m : BlockTowers) : m.thirdFell = 16 := by cases m; omega
theorem blocks_solution (m : BlockTowers) : m.total = 33 := by cases m; omega

structure CandyClass where students coming pieces : ℕ
  hStudents : 4 * students = 40
  hComing : coming + 3 = students
  hPieces : pieces = 4 * coming
theorem candy_students (m : CandyClass) : m.students = 10 := by cases m; omega
theorem candy_coming (m : CandyClass) : m.coming = 7 := by cases m; omega
theorem candy_solution (m : CandyClass) : m.pieces = 28 := by cases m; omega

structure ComputerBusiness where sale unitProfit gross expenses net : ℕ
  hSale : 10 * sale = 14 * 800
  hUnitProfit : unitProfit + 800 = sale
  hGross : gross = 60 * unitProfit
  hExpenses : expenses = 5000 + 3000
  hNet : net + expenses = gross
theorem computers_sale (m : ComputerBusiness) : m.sale = 1120 := by cases m; omega
theorem computers_unit_profit (m : ComputerBusiness) : m.unitProfit = 320 := by cases m; omega
theorem computers_gross (m : ComputerBusiness) : m.gross = 19200 := by cases m; omega
theorem computers_expenses (m : ComputerBusiness) : m.expenses = 8000 := by cases m; omega
theorem computers_solution (m : ComputerBusiness) : m.net = 11200 := by cases m; omega

structure WeightLoss where old current difference : ℕ
  hOld : 2 * old = 9 * 100
  hCurrent : current + 235 = old
  hDifference : difference + 100 = current
theorem weight_old (m : WeightLoss) : m.old = 450 := by cases m; omega
theorem weight_current (m : WeightLoss) : m.current = 215 := by cases m; omega
theorem weight_solution (m : WeightLoss) : m.difference = 115 := by cases m; omega

structure SprayedAnimals where raccoons squirrels : ℕ
  hSquirrels : squirrels = 6 * raccoons
  hTotal : raccoons + squirrels = 84
theorem animals_squirrels_relation (m : SprayedAnimals) : m.squirrels = 6 * m.raccoons := m.hSquirrels
theorem animals_solution (m : SprayedAnimals) : m.raccoons = 12 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0925A14
