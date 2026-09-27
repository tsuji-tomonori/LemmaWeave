import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0927A20

structure BookTournament where
  amanda : ℕ
  kara : ℕ
  patricia : ℕ
  hAmanda : 3 * amanda = 18
  hKara : 2 * kara = amanda
  hPatricia : patricia = 7 * kara

theorem books_amanda (m : BookTournament) : m.amanda = 6 := by cases m <;> omega
theorem books_kara (m : BookTournament) : m.kara = 3 := by cases m <;> omega
theorem books_solution (m : BookTournament) : m.patricia = 21 := by cases m <;> omega

structure KeychainThread where
  clubFriends : ℕ
  totalFriends : ℕ
  threadInches : ℕ
  hClub : 2 * clubFriends = 6
  hTotal : totalFriends = 6 + clubFriends
  hThread : threadInches = 12 * totalFriends

theorem keychains_club (m : KeychainThread) : m.clubFriends = 3 := by cases m <;> omega
theorem keychains_total (m : KeychainThread) : m.totalFriends = 9 := by cases m <;> omega
theorem keychains_solution (m : KeychainThread) : m.threadInches = 108 := by cases m <;> omega

structure WallDivision where
  fourWallRooms : ℕ
  fiveWallRooms : ℕ
  totalWalls : ℕ
  wallsEach : ℕ
  hFour : fourWallRooms = 5 * 4
  hFive : fiveWallRooms = 4 * 5
  hTotal : totalWalls = fourWallRooms + fiveWallRooms
  hEach : 5 * wallsEach = totalWalls

theorem walls_four (m : WallDivision) : m.fourWallRooms = 20 := by cases m <;> omega
theorem walls_total (m : WallDivision) : m.totalWalls = 40 := by cases m <;> omega
theorem walls_solution (m : WallDivision) : m.wallsEach = 8 := by cases m <;> omega

structure Kickball where
  thursday : ℕ
  total : ℕ
  hThursday : thursday + 9 = 37
  hTotal : total = 37 + thursday

theorem kickball_thursday (m : Kickball) : m.thursday = 28 := by cases m <;> omega
theorem kickball_solution (m : Kickball) : m.total = 65 := by cases m <;> omega

structure VegetablePoints where
  totalVegetables : ℕ
  perStudentTwoWeeks : ℕ
  perStudentWeek : ℕ
  hPoints : 2 * totalVegetables = 200
  hStudents : 25 * perStudentTwoWeeks = totalVegetables
  hWeeks : 2 * perStudentWeek = perStudentTwoWeeks

theorem vegetables_total (m : VegetablePoints) : m.totalVegetables = 100 := by cases m <;> omega
theorem vegetables_per_student (m : VegetablePoints) : m.perStudentTwoWeeks = 4 := by cases m <;> omega
theorem vegetables_solution (m : VegetablePoints) : m.perStudentWeek = 2 := by cases m <;> omega

structure TomatoProfit where
  totalKg : ℕ
  sellableKg : ℕ
  revenue : ℕ
  profit : ℕ
  hTotal : totalKg = 3 * 20
  hSellable : sellableKg + 3 = totalKg
  hRevenue : revenue = 6 * sellableKg
  hProfit : profit + 330 = revenue

theorem tomatoes_total (m : TomatoProfit) : m.totalKg = 60 := by cases m <;> omega
theorem tomatoes_sellable (m : TomatoProfit) : m.sellableKg = 57 := by cases m <;> omega
theorem tomatoes_revenue (m : TomatoProfit) : m.revenue = 342 := by cases m <;> omega
theorem tomatoes_solution (m : TomatoProfit) : m.profit = 12 := by cases m <;> omega

structure PizzaSlices where
  total : ℕ
  stephenAte : ℕ
  remaining : ℕ
  peteAte : ℕ
  left : ℕ
  hTotal : total = 2 * 12
  hStephen : 4 * stephenAte = total
  hRemaining : remaining + stephenAte = total
  hPete : 2 * peteAte = remaining
  hLeft : left + peteAte = remaining

theorem pizza_total (m : PizzaSlices) : m.total = 24 := by cases m <;> omega
theorem pizza_after_stephen (m : PizzaSlices) : m.remaining = 18 := by cases m <;> omega
theorem pizza_pete (m : PizzaSlices) : m.peteAte = 9 := by cases m <;> omega
theorem pizza_solution (m : PizzaSlices) : m.left = 9 := by cases m <;> omega

structure Crayons where
  orange : ℕ
  blue : ℕ
  red : ℕ
  total : ℕ
  hOrange : orange = 6 * 8
  hBlue : blue = 7 * 5
  hRed : red = 11
  hTotal : total = orange + blue + red

theorem crayons_orange (m : Crayons) : m.orange = 48 := by cases m <;> omega
theorem crayons_blue (m : Crayons) : m.blue = 35 := by cases m <;> omega
theorem crayons_solution (m : Crayons) : m.total = 94 := by cases m <;> omega

structure CarValue where
  reduction : ℕ
  current : ℕ
  hReduction : 10 * reduction = 3 * 4000
  hCurrent : current + reduction = 4000

theorem car_reduction (m : CarValue) : m.reduction = 1200 := by cases m <;> omega
theorem car_solution (m : CarValue) : m.current = 2800 := by cases m <;> omega

structure MonthlyBill where
  increase : ℕ
  total : ℕ
  hIncrease : 10 * increase = 3 * 60
  hTotal : total = 60 + increase

theorem bill_increase (m : MonthlyBill) : m.increase = 18 := by cases m <;> omega
theorem bill_solution (m : MonthlyBill) : m.total = 78 := by cases m <;> omega

structure LeafProgress where
  forward : ℕ
  backward : ℕ
  net : ℕ
  hForward : forward = 11 * 5
  hBackward : backward = 11 * 2
  hNet : net + backward = forward

theorem leaf_forward (m : LeafProgress) : m.forward = 55 := by cases m <;> omega
theorem leaf_backward (m : LeafProgress) : m.backward = 22 := by cases m <;> omega
theorem leaf_solution (m : LeafProgress) : m.net = 33 := by cases m <;> omega

structure DrivingDistance where
  oneThird : ℕ
  ernesto : ℕ
  total : ℕ
  hThird : 3 * oneThird = 15
  hErnesto : ernesto = oneThird + 7
  hTotal : total = 15 + ernesto

theorem driving_third (m : DrivingDistance) : m.oneThird = 5 := by cases m <;> omega
theorem driving_ernesto (m : DrivingDistance) : m.ernesto = 12 := by cases m <;> omega
theorem driving_solution (m : DrivingDistance) : m.total = 27 := by cases m <;> omega

structure SavingsDoubling where
  february : ℕ
  march : ℕ
  april : ℕ
  may : ℕ
  hFebruary : february = 2 * 10
  hMarch : march = 2 * february
  hApril : april = 2 * march
  hMay : may = 2 * april

theorem savings_february (m : SavingsDoubling) : m.february = 20 := by cases m <;> omega
theorem savings_march (m : SavingsDoubling) : m.march = 40 := by cases m <;> omega
theorem savings_april (m : SavingsDoubling) : m.april = 80 := by cases m <;> omega
theorem savings_solution (m : SavingsDoubling) : m.may = 160 := by cases m <;> omega

structure ClassSizes where
  classA : ℕ
  classB : ℕ
  classC : ℕ
  hB : classB = 20
  hA : classA = 2 * classB
  hC : classC = 3 * classA

theorem classes_a (m : ClassSizes) : m.classA = 40 := by cases m <;> omega
theorem classes_solution (m : ClassSizes) : m.classC = 120 := by cases m <;> omega

structure FarmAnimals where
  current : ℕ
  added : ℕ
  total : ℕ
  hCurrent : current = 2 + 3 + 6
  hAdded : added = 3 + 5 + 2
  hTotal : total = current + added

theorem farm_current (m : FarmAnimals) : m.current = 11 := by cases m <;> omega
theorem farm_added (m : FarmAnimals) : m.added = 10 := by cases m <;> omega
theorem farm_solution (m : FarmAnimals) : m.total = 21 := by cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0927A20
