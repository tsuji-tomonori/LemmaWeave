import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1001A08P3

structure TestModel where
  firstQuestions : ℕ
  secondQuestions : ℕ
  firstPercent : ℕ
  secondPercent : ℕ
  firstCorrect : ℕ
  secondCorrect : ℕ
  totalCorrect : ℕ
  hFirstQuestions : firstQuestions = 40
  hSecondQuestions : secondQuestions = 40
  hFirstPercent : firstPercent = 90
  hSecondPercent : secondPercent = 95
  hFirstCorrect : 100 * firstCorrect = firstPercent * firstQuestions
  hSecondCorrect : 100 * secondCorrect = secondPercent * secondQuestions
  hTotal : totalCorrect = firstCorrect + secondCorrect

theorem test_first_correct (m : TestModel) : m.firstCorrect = 36 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem test_second_correct (m : TestModel) : m.secondCorrect = 38 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem test_total_correct (m : TestModel) : m.totalCorrect = 74 := by
  have h1 := test_first_correct m
  have h2 := test_second_correct m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure CoasterModel where
  count : ℕ
  average : ℕ
  total : ℕ
  first : ℕ
  second : ℕ
  third : ℕ
  fourth : ℕ
  firstFour : ℕ
  fifth : ℕ
  hCount : count = 5
  hAverage : average = 59
  hTotal : total = count * average
  hFirst : first = 50
  hSecond : second = 62
  hThird : third = 73
  hFourth : fourth = 70
  hFirstFour : firstFour = first + second + third + fourth
  hSplit : firstFour + fifth = total

theorem coaster_total (m : CoasterModel) : m.total = 295 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem coaster_first_four (m : CoasterModel) : m.firstFour = 255 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem coaster_fifth (m : CoasterModel) : m.fifth = 40 := by
  have h1 := coaster_total m
  have h2 := coaster_first_four m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure CarPushModel where
  firstMiles : ℕ
  firstSpeed : ℕ
  firstHalfHours : ℕ
  secondMiles : ℕ
  secondSpeed : ℕ
  secondHalfHours : ℕ
  thirdMiles : ℕ
  thirdSpeed : ℕ
  thirdHalfHours : ℕ
  totalHalfHours : ℕ
  totalHours : ℕ
  hFirstMiles : firstMiles = 3
  hFirstSpeed : firstSpeed = 6
  hFirstTime : firstSpeed * firstHalfHours = 2 * firstMiles
  hSecondMiles : secondMiles = 3
  hSecondSpeed : secondSpeed = 3
  hSecondTime : secondSpeed * secondHalfHours = 2 * secondMiles
  hThirdMiles : thirdMiles = 4
  hThirdSpeed : thirdSpeed = 8
  hThirdTime : thirdSpeed * thirdHalfHours = 2 * thirdMiles
  hTotalHalf : totalHalfHours = firstHalfHours + secondHalfHours + thirdHalfHours
  hTotalHours : totalHalfHours = 2 * totalHours

theorem car_segment_times (m : CarPushModel) :
    m.firstHalfHours = 1 ∧ m.secondHalfHours = 2 ∧ m.thirdHalfHours = 1 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem car_total_half_hours (m : CarPushModel) : m.totalHalfHours = 4 := by
  have h := car_segment_times m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem car_total_hours (m : CarPushModel) : m.totalHours = 2 := by
  have h := m.hTotalHours
  rw [car_total_half_hours m] at h
  omega

structure BootsModel where
  budget : ℕ
  toilet : ℕ
  groceries : ℕ
  spent : ℕ
  left : ℕ
  bootMultiplier : ℕ
  onePair : ℕ
  pairs : ℕ
  twoPairs : ℕ
  shortfall : ℕ
  people : ℕ
  eachAdds : ℕ
  hBudget : budget = 50
  hToilet : toilet = 12
  hGroceries : groceries = 2 * toilet
  hSpent : spent = toilet + groceries
  hLeft : spent + left = budget
  hMultiplier : bootMultiplier = 3
  hOnePair : onePair = bootMultiplier * left
  hPairs : pairs = 2
  hTwoPairs : twoPairs = pairs * onePair
  hShortfall : left + shortfall = twoPairs
  hPeople : people = 2
  hEach : shortfall = people * eachAdds

theorem boots_spent_and_left (m : BootsModel) : m.spent = 36 ∧ m.left = 14 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem boots_pair_costs (m : BootsModel) : m.onePair = 42 ∧ m.twoPairs = 84 := by
  have h := boots_spent_and_left m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem boots_shortfall (m : BootsModel) : m.shortfall = 70 := by
  have h1 := boots_spent_and_left m
  have h2 := boots_pair_costs m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem boots_each_adds (m : BootsModel) : m.eachAdds = 35 := by
  have h := boots_shortfall m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure SpokesModel where
  bicycles : ℕ
  wheelsPerBicycle : ℕ
  wheels : ℕ
  spokesPerWheel : ℕ
  spokes : ℕ
  hBicycles : bicycles = 4
  hWheelsPer : wheelsPerBicycle = 2
  hWheels : wheels = bicycles * wheelsPerBicycle
  hSpokesPer : spokesPerWheel = 10
  hSpokes : spokes = wheels * spokesPerWheel

theorem spokes_wheels (m : SpokesModel) : m.wheels = 8 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem spokes_total (m : SpokesModel) : m.spokes = 80 := by
  have h := spokes_wheels m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A08P3
