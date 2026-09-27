import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A15

structure StudentLateness where
  charlize classmates classmateEach classmatesTotal total : ℕ
  hCharlize : charlize = 20
  hClassmates : classmates = 4
  hEach : classmateEach = charlize + 10
  hClassmatesTotal : classmatesTotal = classmates * classmateEach
  hTotal : total = charlize + classmatesTotal
theorem lateness_each (m : StudentLateness) : m.classmateEach = 30 := by cases m; omega
theorem lateness_classmates (m : StudentLateness) : m.classmatesTotal = 120 := by cases m; omega
theorem lateness_solution (m : StudentLateness) : m.total = 140 := by cases m; omega

structure BridesmaidDresses where
  dresses hoursEach totalHours hoursPerWeek weeks : ℕ
  hDresses : dresses = 5
  hHoursEach : hoursEach = 12
  hTotal : totalHours = dresses * hoursEach
  hWeekly : hoursPerWeek = 4
  hWeeks : totalHours = hoursPerWeek * weeks
theorem dresses_hours (m : BridesmaidDresses) : m.totalHours = 60 := by cases m; omega
theorem dresses_solution (m : BridesmaidDresses) : m.weeks = 15 := by cases m; omega

/-- Money is represented in cents. Bridge and Bridget name the same child. -/
structure SharedMoney where
  total bridgetExtra sarah bridget : ℕ
  hTotal : total = 300
  hExtra : bridgetExtra = 50
  hBridget : bridget = sarah + bridgetExtra
  hSum : total = sarah + bridget
theorem shared_bridget (m : SharedMoney) : m.bridget = 175 := by cases m; omega
theorem shared_solution (m : SharedMoney) : m.sarah = 125 := by cases m; omega

structure AmusementMoney where
  start food rides games spent remaining : ℕ
  hStart : start = 75
  hFood : food = 30
  hRides : rides = 13
  hGames : games = 23
  hSpent : spent = food + rides + games
  hRemaining : start = spent + remaining
theorem amusement_spent (m : AmusementMoney) : m.spent = 66 := by cases m; omega
theorem amusement_solution (m : AmusementMoney) : m.remaining = 9 := by cases m; omega

structure RectangleLine where
  width area length rectangles totalLength : ℕ
  hWidth : width = 42
  hArea : area = 1638
  hRectangle : area = width * length
  hRectangles : rectangles = 10
  hTotal : totalLength = rectangles * length
theorem rectangle_length (m : RectangleLine) : m.length = 39 := by cases m; omega
theorem rectangle_solution (m : RectangleLine) : m.totalLength = 390 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0927A15
