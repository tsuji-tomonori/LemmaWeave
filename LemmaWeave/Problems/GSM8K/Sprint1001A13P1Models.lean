import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A13P1

structure ChapterModel where
  first total : ℕ
  hTotal : total = 95
  hArithmeticSum : total = 5 * first + 30

theorem chapter_sum_equation (m : ChapterModel) : 5 * m.first + 30 = 95 := by
  cases m <;> omega

theorem chapter_first (m : ChapterModel) : m.first = 13 := by
  have h := chapter_sum_equation m
  cases m <;> omega

structure BoxerModel where
  initial more beforeFirstLoss wins losses difference : ℕ
  hInitial : initial = 10
  hMore : more = 5
  hBefore : beforeFirstLoss = initial + more
  hWins : wins = 2 * beforeFirstLoss
  hLosses : losses = 2
  hDifference : difference + losses = wins

theorem boxer_before_first_loss (m : BoxerModel) : m.beforeFirstLoss = 15 := by
  cases m <;> omega

theorem boxer_wins (m : BoxerModel) : m.wins = 30 := by
  have h := boxer_before_first_loss m
  cases m <;> omega

theorem boxer_difference (m : BoxerModel) : m.difference = 28 := by
  have h := boxer_wins m
  cases m <;> omega

structure EggHuntModel where
  baskets eggsPerBasket totalEggs kids friends shonda otherAdults people each : ℕ
  hBaskets : baskets = 15
  hEggsPerBasket : eggsPerBasket = 12
  hEggs : totalEggs = 15 * 12
  hKids : kids = 2
  hFriends : friends = 10
  hShonda : shonda = 1
  hOtherAdults : otherAdults = 7
  hPeople : people = kids + friends + shonda + otherAdults
  hEqual : 20 * each = totalEggs

theorem egg_total (m : EggHuntModel) : m.totalEggs = 180 := by
  cases m <;> omega

theorem egg_people (m : EggHuntModel) : m.people = 20 := by
  cases m <;> omega

theorem egg_each (m : EggHuntModel) : m.each = 9 := by
  have h1 := egg_total m
  have h2 := egg_people m
  cases m <;> omega

structure InsectModel where
  boys girls total groups each : ℕ
  hBoys : boys = 200
  hGirls : girls = 300
  hTotal : total = boys + girls
  hGroups : groups = 4
  hEqual : 4 * each = total

theorem insect_total (m : InsectModel) : m.total = 500 := by
  cases m <;> omega

theorem insect_each (m : InsectModel) : m.each = 125 := by
  have h := insect_total m
  cases m <;> omega

structure VarsityModel where
  students girls boys joined notJoined : ℕ
  hStudents : students = 150
  hGirls : 5 * girls = 3 * students
  hPartition : girls + boys = students
  hJoined : 3 * joined = boys
  hNotJoined : joined + notJoined = boys

theorem varsity_boys (m : VarsityModel) : m.boys = 60 := by
  cases m <;> omega

theorem varsity_joined (m : VarsityModel) : m.joined = 20 := by
  have h := varsity_boys m
  cases m <;> omega

theorem varsity_not_joined (m : VarsityModel) : m.notJoined = 40 := by
  have h1 := varsity_boys m
  have h2 := varsity_joined m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A13P1
