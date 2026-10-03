import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1002A02P1

structure LunchModel where
  cafeteria : ℕ
  bring : ℕ
  none : ℕ
  total : ℕ
  hCafeteria : cafeteria = 10
  hBring : bring = 3 * cafeteria
  hTotal : total = 60
  hPartition : cafeteria + bring + none = total

theorem cafeteria_students (m : LunchModel) : m.cafeteria = 10 := m.hCafeteria
theorem bring_students (m : LunchModel) : m.bring = 30 := by
  norm_num [m.hBring, cafeteria_students m]
theorem eating_students (m : LunchModel) : m.cafeteria + m.bring = 40 := by
  have h := bring_students m
  cases m <;> dsimp at * <;> omega
theorem no_lunch_students (m : LunchModel) : m.none = 20 := by
  have h := eating_students m
  cases m <;> dsimp at * <;> omega

structure DanceModel where
  shown : ℕ
  invited : ℕ
  revoked : ℕ
  attended : ℕ
  hShown : shown = 400
  hInvited : 100 * invited = 70 * shown
  hRevoked : 100 * revoked = 40 * invited
  hAdmitted : attended + revoked = invited

theorem invited_students (m : DanceModel) : m.invited = 280 := by cases m <;> dsimp at * <;> omega
theorem revoked_students (m : DanceModel) : m.revoked = 112 := by
  have h := invited_students m
  cases m <;> dsimp at * <;> omega
theorem invited_attendees (m : DanceModel) : m.attended = 168 := by
  have h1 := invited_students m
  have h2 := revoked_students m
  cases m <;> dsimp at * <;> omega

structure PurchaseModel where
  pen : ℕ
  briefcase : ℕ
  total : ℕ
  hPen : pen = 4
  hBriefcase : briefcase = 5 * pen
  hTotal : total = pen + briefcase

theorem briefcase_cost (m : PurchaseModel) : m.briefcase = 20 := by cases m <;> dsimp at * <;> omega
theorem purchase_total (m : PurchaseModel) : m.total = 24 := by
  have h := briefcase_cost m
  cases m <;> dsimp at * <;> omega

structure TankModel where
  initial : ℕ
  evaporated : ℕ
  afterEvap : ℕ
  drained : ℕ
  remaining : ℕ
  intervals : ℕ
  rainAdded : ℕ
  final : ℕ
  hInitial : initial = 6000
  hEvaporated : evaporated = 2000
  hAfterEvap : afterEvap + evaporated = initial
  hDrained : drained = 3500
  hRemaining : remaining + drained = afterEvap
  hIntervals : 10 * intervals = 30
  hRainAdded : rainAdded = 350 * intervals
  hFinal : final = remaining + rainAdded

theorem tank_after_evaporation (m : TankModel) : m.afterEvap = 4000 := by cases m <;> dsimp at * <;> omega
theorem tank_after_drain (m : TankModel) : m.remaining = 500 := by
  have h := tank_after_evaporation m
  cases m <;> dsimp at * <;> omega
theorem rain_intervals (m : TankModel) : m.intervals = 3 := by cases m <;> dsimp at * <;> omega
theorem rain_added (m : TankModel) : m.rainAdded = 1050 := by
  have h := rain_intervals m
  cases m <;> dsimp at * <;> omega
theorem tank_final_liters (m : TankModel) : m.final = 1550 := by
  have h1 := tank_after_drain m
  have h2 := rain_added m
  cases m <;> dsimp at * <;> omega

structure TestAverageModel where
  first : ℕ
  second : ℕ
  total : ℕ
  hFirst : first = 78
  hTotal : total = 2 * 81
  hScores : total = first + second

theorem two_test_points (m : TestAverageModel) : m.total = 162 := by cases m <;> dsimp at * <;> omega
theorem second_test_grade (m : TestAverageModel) : m.second = 84 := by
  have h := two_test_points m
  cases m <;> dsimp at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1002A02P1
