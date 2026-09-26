import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0925A17

structure Scholarships where wendy kelly nina total : ℕ
  hWendy : wendy = 20000
  hKelly : kelly = 2 * wendy
  hNina : nina + 8000 = kelly
  hTotal : total = nina + kelly + wendy
theorem scholarship_kelly (m : Scholarships) : m.kelly = 40000 := by cases m; omega
theorem scholarship_nina (m : Scholarships) : m.nina = 32000 := by cases m; omega
theorem scholarship_solution (m : Scholarships) : m.total = 92000 := by cases m; omega

structure BeefAverage where friday total average : ℕ
  hFriday : friday = 2 * 210
  hTotal : total = 210 + friday + 150
  hAverage : 3 * average = total
theorem beef_friday (m : BeefAverage) : m.friday = 420 := by cases m; omega
theorem beef_total (m : BeefAverage) : m.total = 780 := by cases m; omega
theorem beef_solution (m : BeefAverage) : m.average = 260 := by cases m; omega

structure Sledding where tallTotal smallEach smallTotal total : ℕ
  hTall : tallTotal = 2 * 4
  hSmallEach : 2 * smallEach = 4
  hSmallTotal : smallTotal = 3 * smallEach
  hTotal : total = tallTotal + smallTotal
theorem sled_tall (m : Sledding) : m.tallTotal = 8 := by cases m; omega
theorem sled_small_each (m : Sledding) : m.smallEach = 2 := by cases m; omega
theorem sled_small_total (m : Sledding) : m.smallTotal = 6 := by cases m; omega
theorem sled_solution (m : Sledding) : m.total = 14 := by cases m; omega
theorem sled_ambiguity : 14 ≠ 12 := by norm_num

structure Lemonade where bea dawn difference : ℕ
  hBea : bea = 25 * 10
  hDawn : dawn = 28 * 8
  hDifference : dawn + difference = bea
theorem lemonade_bea (m : Lemonade) : m.bea = 250 := by cases m; omega
theorem lemonade_dawn (m : Lemonade) : m.dawn = 224 := by cases m; omega
theorem lemonade_solution (m : Lemonade) : m.difference = 26 := by cases m; omega

structure Reading where books bookCost magazineCost total : ℕ
  hBooks : books = 9 + 7
  hBookCost : bookCost = 11 * books
  hMagazineCost : magazineCost = 1 * 3
  hTotal : total = bookCost + magazineCost
theorem reading_books (m : Reading) : m.books = 16 := by cases m; omega
theorem reading_book_cost (m : Reading) : m.bookCost = 176 := by cases m; omega
theorem reading_magazine_cost (m : Reading) : m.magazineCost = 3 := by cases m; omega
theorem reading_solution (m : Reading) : m.total = 179 := by cases m; omega

structure Pencils where sabrina justin : ℕ
  hTotal : sabrina + justin = 50
  hJustin : justin = 2 * sabrina + 8
theorem pencils_justin (m : Pencils) : m.justin = 36 := by cases m; omega
theorem pencils_solution (m : Pencils) : m.sabrina = 14 := by cases m; omega

structure Brownies where faculty afterFaculty carl afterCarl left : ℕ
  hFaculty : 2 * faculty = 20
  hAfterFaculty : afterFaculty + faculty = 20
  hCarl : 2 * carl = afterFaculty
  hAfterCarl : afterCarl + carl = afterFaculty
  hLeft : left + 2 = afterCarl
theorem brownies_faculty (m : Brownies) : m.faculty = 10 := by cases m; omega
theorem brownies_after_faculty (m : Brownies) : m.afterFaculty = 10 := by cases m; omega
theorem brownies_carl (m : Brownies) : m.carl = 5 := by cases m; omega
theorem brownies_after_carl (m : Brownies) : m.afterCarl = 5 := by cases m; omega
theorem brownies_solution (m : Brownies) : m.left = 3 := by cases m; omega

structure Rope where firstHalf secondHalf finalPiece : ℕ
  hFirst : 2 * firstHalf = 100
  hSecond : 2 * secondHalf = firstHalf
  hFinal : 5 * finalPiece = secondHalf
theorem rope_first (m : Rope) : m.firstHalf = 50 := by cases m; omega
theorem rope_second (m : Rope) : m.secondHalf = 25 := by cases m; omega
theorem rope_solution (m : Rope) : m.finalPiece = 5 := by cases m; omega

structure Crackers where friday saturday sunday total : ℕ
  hFriday : friday = 40
  hSaturday : saturday + 10 = 2 * friday
  hSunday : 2 * sunday = saturday
  hTotal : total = friday + saturday + sunday
theorem crackers_saturday (m : Crackers) : m.saturday = 70 := by cases m; omega
theorem crackers_sunday (m : Crackers) : m.sunday = 35 := by cases m; omega
theorem crackers_solution (m : Crackers) : m.total = 145 := by cases m; omega
theorem crackers_literal_countermodel : 40 + 70 + 0 = 110 ∧ 0 = 0 / 2 := by norm_num

structure Ages where karen carla ty frankFuture : ℕ
  hKaren : karen = 2
  hCarla : carla = karen + 2
  hTy : ty = 2 * carla + 4
  hFrank : frankFuture = 3 * ty
theorem ages_carla (m : Ages) : m.carla = 4 := by cases m; omega
theorem ages_ty (m : Ages) : m.ty = 12 := by cases m; omega
theorem ages_solution (m : Ages) : m.frankFuture = 36 := by cases m; omega

structure Brochures where capacity boxes : ℕ
  hCapacity : 5 * capacity = 5000
  hBoxes : 1000 * boxes = 5000
theorem brochures_capacity (m : Brochures) : m.capacity = 1000 := by cases m; omega
theorem brochures_solution (m : Brochures) : m.boxes = 5 := by cases m; omega

structure Bank where spent balance bills withdrawal remainder : ℕ
  hSpent : spent = 7 * 8
  hBalance : balance + spent = 100
  hWithdrawal : withdrawal = 5 * bills
  hDecompose : withdrawal + remainder = balance
  hRemainder : remainder < 5
theorem bank_spent (m : Bank) : m.spent = 56 := by cases m; omega
theorem bank_balance (m : Bank) : m.balance = 44 := by cases m; omega
theorem bank_withdrawal (m : Bank) : m.withdrawal = 40 := by cases m; omega
theorem bank_solution (m : Bank) : m.remainder = 4 := by cases m; omega

structure Tennis where lily frodo brian : ℕ
  hLily : lily = 3
  hFrodo : frodo = lily + 8
  hBrian : brian = 2 * frodo
theorem tennis_frodo (m : Tennis) : m.frodo = 11 := by cases m; omega
theorem tennis_solution (m : Tennis) : m.brian = 22 := by cases m; omega

structure Ducks where khaki cayuga muscovy : ℕ
  hCayuga : cayuga = 2 * khaki + 3
  hMuscovy : muscovy = cayuga + 4
  hTotal : khaki + cayuga + muscovy = 90
theorem ducks_khaki (m : Ducks) : m.khaki = 16 := by cases m; omega
theorem ducks_cayuga (m : Ducks) : m.cayuga = 35 := by cases m; omega
theorem ducks_solution (m : Ducks) : m.muscovy = 39 := by cases m; omega

structure Tickets where gifted ratioParts finley : ℕ
  hGifted : 4 * gifted = 3 * 400
  hRatio : ratioParts = 4 + 11
  hFinley : 15 * finley = 11 * gifted
theorem tickets_gifted (m : Tickets) : m.gifted = 300 := by cases m; omega
theorem tickets_ratio (m : Tickets) : m.ratioParts = 15 := by cases m; omega
theorem tickets_solution (m : Tickets) : m.finley = 220 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0925A17
