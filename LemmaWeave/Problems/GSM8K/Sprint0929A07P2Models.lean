import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A07P2

structure TunaModel where
  tallCatch : ℕ
  totalCatch : ℕ
  hTall : tallCatch = 2 * 144
  hTotal : totalCatch = 144 + tallCatch

theorem tuna_tall (m : TunaModel) : m.tallCatch = 288 := by
  rcases m with ⟨a, b, h1, h2⟩
  simp_all <;> omega

theorem tuna_solution (m : TunaModel) : m.totalCatch = 432 := by
  have hPrev := tuna_tall m
  rcases m with ⟨a, b, h1, h2⟩
  simp_all <;> omega

structure HarvestModel where
  thursday : ℕ
  friday : ℕ
  givenAway : ℕ
  remaining : ℕ
  hThursday : 2 * thursday = 400
  hFriday : 400 + thursday + friday = 2000
  hGiven : givenAway = 700
  hRemaining : remaining + givenAway = friday

theorem harvest_thursday (m : HarvestModel) : m.thursday = 200 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem harvest_friday (m : HarvestModel) : m.friday = 1400 := by
  have hPrev := harvest_thursday m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem harvest_solution (m : HarvestModel) : m.remaining = 700 := by
  have hPrev := harvest_friday m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

structure RobotModel where
  chairDistance : ℕ
  birdhouseDistance : ℕ
  hChair : chairDistance = 2 * 200
  hBirdhouse : birdhouseDistance = 3 * chairDistance

theorem robot_chair (m : RobotModel) : m.chairDistance = 400 := by
  rcases m with ⟨a, b, h1, h2⟩
  simp_all <;> omega

theorem robot_solution (m : RobotModel) : m.birdhouseDistance = 1200 := by
  have hPrev := robot_chair m
  rcases m with ⟨a, b, h1, h2⟩
  simp_all <;> omega

structure HockeyModel where
  shaun : ℕ
  eliot : ℕ
  hShaun : shaun = 5 * 16
  hEliot : eliot = 2 * shaun

theorem hockey_shaun (m : HockeyModel) : m.shaun = 80 := by
  rcases m with ⟨a, b, h1, h2⟩
  simp_all <;> omega

theorem hockey_solution (m : HockeyModel) : m.eliot = 160 := by
  have hPrev := hockey_shaun m
  rcases m with ⟨a, b, h1, h2⟩
  simp_all <;> omega

structure ApplicationsModel where
  totalCost : ℕ
  workHours : ℕ
  hCost : totalCost = 6 * 25
  hWork : 10 * workHours = totalCost

theorem applications_cost (m : ApplicationsModel) : m.totalCost = 150 := by
  rcases m with ⟨a, b, h1, h2⟩
  simp_all <;> omega

theorem applications_solution (m : ApplicationsModel) : m.workHours = 15 := by
  have hPrev := applications_cost m
  rcases m with ⟨a, b, h1, h2⟩
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A07P2
