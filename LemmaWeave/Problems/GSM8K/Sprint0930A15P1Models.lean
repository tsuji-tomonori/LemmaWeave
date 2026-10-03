import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0930A15P1

structure ChaptersModel where
  first : ℕ
  second : ℕ
  third : ℕ
  fourth : ℕ
  fifth : ℕ
  total : ℕ
  hSecond : second = first + 3
  hThird : third = first + 6
  hFourth : fourth = first + 9
  hFifth : fifth = first + 12
  hTotal : total = first + second + third + fourth + fifth
  hPages : total = 95

theorem chapters_progression_total (m : ChaptersModel) : 5 * m.first + 30 = 95 := by
  cases m <;> omega

theorem chapters_first (m : ChaptersModel) : m.first = 13 := by
  have h := chapters_progression_total m
  omega

structure BoxerModel where
  firstWins : ℕ
  addedWins : ℕ
  winsBeforeFirstLoss : ℕ
  finalWins : ℕ
  losses : ℕ
  difference : ℕ
  hFirst : firstWins = 10
  hAdded : addedWins = 5
  hBefore : winsBeforeFirstLoss = firstWins + addedWins
  hDouble : finalWins = 2 * winsBeforeFirstLoss
  hLosses : losses = 2
  hDifference : finalWins = losses + difference

theorem boxer_wins_before_loss (m : BoxerModel) : m.winsBeforeFirstLoss = 15 := by
  cases m <;> omega

theorem boxer_final_wins (m : BoxerModel) : m.finalWins = 30 := by
  have h := boxer_wins_before_loss m
  cases m <;> omega

theorem boxer_difference (m : BoxerModel) : m.difference = 28 := by
  have h := boxer_final_wins m
  cases m <;> omega

structure EggHuntModel where
  baskets : ℕ
  eggsPerBasket : ℕ
  eggs : ℕ
  children : ℕ
  friends : ℕ
  otherAdults : ℕ
  organizer : ℕ
  people : ℕ
  perPerson : ℕ
  hBaskets : baskets = 15
  hPerBasket : eggsPerBasket = 12
  hEggs : eggs = baskets * eggsPerBasket
  hChildren : children = 2
  hFriends : friends = 10
  hAdults : otherAdults = 7
  hOrganizer : organizer = 1
  hPeople : people = children + friends + otherAdults + organizer
  hEqual : eggs = people * perPerson

theorem egg_hunt_total_eggs (m : EggHuntModel) : m.eggs = 180 := by
  cases m <;> omega

theorem egg_hunt_people (m : EggHuntModel) : m.people = 20 := by
  cases m <;> omega

theorem egg_hunt_per_person (m : EggHuntModel) : m.perPerson = 9 := by
  have h1 := egg_hunt_total_eggs m
  have h2 := egg_hunt_people m
  cases m <;> omega

structure InsectsModel where
  boys : ℕ
  girls : ℕ
  total : ℕ
  groups : ℕ
  perGroup : ℕ
  hBoys : boys = 200
  hGirls : girls = 300
  hTotal : total = boys + girls
  hGroups : groups = 4
  hEqual : total = groups * perGroup

theorem insects_total (m : InsectsModel) : m.total = 500 := by
  cases m <;> omega

theorem insects_per_group (m : InsectsModel) : m.perGroup = 125 := by
  have h := insects_total m
  cases m <;> omega

structure VarsityModel where
  students : ℕ
  girls : ℕ
  boys : ℕ
  joined : ℕ
  notJoined : ℕ
  hStudents : students = 150
  hGirlsPercent : 100 * girls = 60 * students
  hPartition : students = girls + boys
  hJoinedFraction : boys = 3 * joined
  hBoysPartition : boys = joined + notJoined

theorem varsity_girls (m : VarsityModel) : m.girls = 90 := by
  cases m <;> omega

theorem varsity_boys (m : VarsityModel) : m.boys = 60 := by
  have h := varsity_girls m
  cases m <;> omega

theorem varsity_joined (m : VarsityModel) : m.joined = 20 := by
  have h := varsity_boys m
  cases m <;> omega

theorem varsity_not_joined (m : VarsityModel) : m.notJoined = 40 := by
  have h1 := varsity_boys m
  have h2 := varsity_joined m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0930A15P1
