import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0929A19P2

structure BalloonModel where
  smallBags : ℕ
  mediumBags : ℕ
  extraLargeBags : ℕ
  spent : ℕ
  totalBalloons : ℕ
  hSpent : spent = 4 * smallBags + 6 * mediumBags + 12 * extraLargeBags
  hBudget : spent ≤ 24
  hTotal : totalBalloons = 50 * smallBags + 75 * mediumBags + 200 * extraLargeBags

theorem balloons_upper_bound (m : BalloonModel) : m.totalBalloons ≤ 400 := by
  rcases m with ⟨s,md,x,c,t,h1,h2,h3⟩
  dsimp at *
  omega

theorem balloons_400_feasible : ∃ m : BalloonModel, m.totalBalloons = 400 := by
  refine ⟨{
    smallBags := 0
    mediumBags := 0
    extraLargeBags := 2
    spent := 24
    totalBalloons := 400
    hSpent := by norm_num
    hBudget := by norm_num
    hTotal := by norm_num
  }, ?_⟩
  norm_num

theorem balloons_solution :
    (∀ m : BalloonModel, m.totalBalloons ≤ 400) ∧
      ∃ m : BalloonModel, m.totalBalloons = 400 := by
  exact ⟨balloons_upper_bound, balloons_400_feasible⟩

structure TestScoreModel where
  lastScore : ℕ
  nineTotal : ℕ
  totalScore : ℕ
  students : ℕ
  targetAverage : ℕ
  targetTotal : ℕ
  hNine : nineTotal = 5 * 92 + 4 * 80
  hTotal : totalScore = nineTotal + lastScore
  hStudents : students = 10
  hTargetAverage : targetAverage = 85
  hTarget : targetTotal = students * targetAverage

theorem test_known_total (m : TestScoreModel) : m.nineTotal = 780 := by
  rw [m.hNine]

theorem test_target_total (m : TestScoreModel) : m.targetTotal = 850 := by
  rw [m.hTarget, m.hStudents, m.hTargetAverage]

theorem test_score_solution (m : TestScoreModel) :
    m.targetTotal ≤ m.totalScore ↔ 70 ≤ m.lastScore := by
  have hKnown := test_known_total m
  have hTarget := test_target_total m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5⟩
  dsimp at *
  omega

structure GradeRewardModel where
  twos : ℕ
  threes : ℕ
  fours : ℕ
  fives : ℕ
  totalPoints : ℕ
  gradeCount : ℕ
  average : ℕ
  dollarsPerAveragePoint : ℕ
  cash : ℕ
  hTwos : twos = 3
  hThrees : threes = 4
  hFours : fours = 1
  hFives : fives = 1
  hPoints : totalPoints = twos * 2 + threes * 3 + fours * 4 + fives * 5
  hCount : gradeCount = twos + threes + fours + fives
  hAverage : totalPoints = average * gradeCount
  hRate : dollarsPerAveragePoint = 5
  hCash : cash = dollarsPerAveragePoint * average

theorem grade_total_points (m : GradeRewardModel) : m.totalPoints = 27 := by
  rw [m.hPoints, m.hTwos, m.hThrees, m.hFours, m.hFives]

theorem grade_count (m : GradeRewardModel) : m.gradeCount = 9 := by
  rw [m.hCount, m.hTwos, m.hThrees, m.hFours, m.hFives]

theorem grade_average (m : GradeRewardModel) : m.average = 3 := by
  have h := m.hAverage
  rw [grade_total_points m, grade_count m] at h
  omega

theorem grade_solution (m : GradeRewardModel) : m.cash = 15 := by
  rw [m.hCash, m.hRate, grade_average m]

structure BeadsModel where
  black : ℕ
  white : ℕ
  blackPulled : ℕ
  whitePulled : ℕ
  totalPulled : ℕ
  hBlack : black = 90
  hWhite : white = 51
  hBlackSixth : black = 6 * blackPulled
  hWhiteThird : white = 3 * whitePulled
  hTotal : totalPulled = blackPulled + whitePulled

theorem beads_black_pulled (m : BeadsModel) : m.blackPulled = 15 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  norm_num at * <;> omega

theorem beads_white_pulled (m : BeadsModel) : m.whitePulled = 17 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  norm_num at * <;> omega

theorem beads_solution (m : BeadsModel) : m.totalPulled = 32 := by
  have hBlack := beads_black_pulled m
  have hWhite := beads_white_pulled m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  omega

structure ChairsModel where
  totalRows : ℕ
  seatsPerRow : ℕ
  awardeeRows : ℕ
  staffRows : ℕ
  parentRows : ℕ
  nonStudentRows : ℕ
  studentRows : ℕ
  studentSeats : ℕ
  occupiedStudentSeats : ℕ
  vacantStudentSeats : ℕ
  hTotalRows : totalRows = 10
  hSeatsPerRow : seatsPerRow = 15
  hAwardeeRows : awardeeRows = 1
  hStaffRows : staffRows = 2
  hParentRows : parentRows = 2
  hNonStudent : nonStudentRows = awardeeRows + staffRows + parentRows
  hRowBalance : totalRows = nonStudentRows + studentRows
  hStudentSeats : studentSeats = studentRows * seatsPerRow
  hOccupiedFraction : 5 * occupiedStudentSeats = 4 * studentSeats
  hVacant : studentSeats = occupiedStudentSeats + vacantStudentSeats

theorem chairs_nonstudent_rows (m : ChairsModel) : m.nonStudentRows = 5 := by
  rw [m.hNonStudent, m.hAwardeeRows, m.hStaffRows, m.hParentRows]

theorem chairs_student_rows (m : ChairsModel) : m.studentRows = 5 := by
  have hNon := chairs_nonstudent_rows m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  dsimp at *
  omega

theorem chairs_student_seats (m : ChairsModel) : m.studentSeats = 75 := by
  rw [m.hStudentSeats, chairs_student_rows m, m.hSeatsPerRow]

theorem chairs_occupied (m : ChairsModel) : m.occupiedStudentSeats = 60 := by
  have hSeats := chairs_student_seats m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  dsimp at *
  norm_num at * <;> omega

theorem chairs_solution (m : ChairsModel) : m.vacantStudentSeats = 15 := by
  have hSeats := chairs_student_seats m
  have hOccupied := chairs_occupied m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  dsimp at *
  omega

end LemmaWeave.Problems.GSM8K.Sprint0929A19P2
