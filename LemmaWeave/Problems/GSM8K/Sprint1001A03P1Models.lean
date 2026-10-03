import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A03P1

structure RosesModel where
  total stolen remaining people each : ℕ
  hTotal : total = 40
  hStolen : stolen = 4
  hRemaining : remaining + stolen = total
  hPeople : people = 9
  hEqualShare : people * each = remaining

theorem roses_remaining (m : RosesModel) : m.remaining = 36 := by
  cases m <;> omega

theorem roses_each (m : RosesModel) : m.each = 4 := by
  have h := roses_remaining m
  cases m <;> omega

structure PancakesModel where
  made people perPerson needed additional : ℕ
  hMade : made = 12
  hPeople : people = 8
  hPerPerson : perPerson = 2
  hNeeded : needed = people * perPerson
  hAdditional : made + additional = needed

theorem pancakes_needed (m : PancakesModel) : m.needed = 16 := by
  cases m <;> omega

theorem pancakes_additional (m : PancakesModel) : m.additional = 4 := by
  have h := pancakes_needed m
  cases m <;> omega

structure HillModel where
  distance upSpeed downSpeed upTime downTime totalTime : ℕ
  hDistance : distance = 900
  hUpSpeed : upSpeed = 9
  hDownSpeed : downSpeed = 12
  hUp : upSpeed * upTime = distance
  hDown : downSpeed * downTime = distance
  hTotal : totalTime = upTime + downTime

theorem hill_up_time (m : HillModel) : m.upTime = 100 := by
  cases m <;> omega

theorem hill_down_time (m : HillModel) : m.downTime = 75 := by
  cases m <;> omega

theorem hill_total_time (m : HillModel) : m.totalTime = 175 := by
  have h1 := hill_up_time m
  have h2 := hill_down_time m
  cases m <;> omega

structure InsuranceModel where
  property medical total owed : ℕ
  hProperty : property = 40000
  hMedical : medical = 70000
  hTotal : total = property + medical
  hOwed : 5 * owed = total

theorem insurance_total (m : InsuranceModel) : m.total = 110000 := by
  cases m <;> omega

theorem insurance_owed (m : InsuranceModel) : m.owed = 22000 := by
  have h := insurance_total m
  cases m <;> omega

structure LeilaModel where
  sweater total afterSweater remaining jewelry difference : ℕ
  hSweater : sweater = 40
  hQuarter : total = 4 * sweater
  hAfterSweater : sweater + afterSweater = total
  hRemaining : remaining = 20
  hJewelry : jewelry + remaining = afterSweater
  hDifference : sweater + difference = jewelry

theorem leila_total (m : LeilaModel) : m.total = 160 := by
  cases m <;> omega

theorem leila_after_sweater (m : LeilaModel) : m.afterSweater = 120 := by
  have h := leila_total m
  cases m <;> omega

theorem leila_jewelry (m : LeilaModel) : m.jewelry = 100 := by
  have h := leila_after_sweater m
  cases m <;> omega

theorem leila_difference (m : LeilaModel) : m.difference = 60 := by
  have h := leila_jewelry m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A03P1
