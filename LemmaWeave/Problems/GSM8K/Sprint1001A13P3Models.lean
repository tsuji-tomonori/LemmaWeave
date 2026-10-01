import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A13P3

structure ShirtModel where
  totalShirts cheapCount cheapPrice costlyCount costlyPrice cheapCost costlyCost totalCost : ℕ
  hTotalShirts : totalShirts = 5
  hCheapCount : cheapCount = 3
  hCheapPrice : cheapPrice = 15
  hCostlyCount : costlyCount + cheapCount = totalShirts
  hCostlyPrice : costlyPrice = 20
  hCheapCost : cheapCost = 3 * 15
  hCostlyCost : costlyCost = 2 * 20
  hTotalCost : totalCost = cheapCost + costlyCost

theorem shirts_cheap_cost (m : ShirtModel) : m.cheapCost = 45 := by
  cases m <;> omega

theorem shirts_costly_count_cost (m : ShirtModel) : m.costlyCount = 2 ∧ m.costlyCost = 40 := by
  cases m <;> constructor <;> omega

theorem shirts_total_cost (m : ShirtModel) : m.totalCost = 85 := by
  have h1 := shirts_cheap_cost m
  have h2 := shirts_costly_count_cost m
  cases m <;> omega

structure VacationModel where
  worked earned march september used remaining : ℕ
  hWorked : worked = 300
  hEarned : 10 * earned = worked
  hMarch : march = 5
  hSeptember : september = 2 * march
  hUsed : used = march + september
  hRemaining : used + remaining = earned

theorem vacation_earned (m : VacationModel) : m.earned = 30 := by
  cases m <;> omega

theorem vacation_september (m : VacationModel) : m.september = 10 := by
  cases m <;> omega

theorem vacation_used (m : VacationModel) : m.used = 15 := by
  have h := vacation_september m
  cases m <;> omega

theorem vacation_remaining (m : VacationModel) : m.remaining = 15 := by
  have h1 := vacation_earned m
  have h2 := vacation_used m
  cases m <;> omega

structure AdBlockModel where
  allAds unblocked interestingUnblocked uninterestingUnblocked : ℕ
  hAllAds : allAds = 100
  hUnblocked : unblocked = 20
  hInteresting : 5 * interestingUnblocked = unblocked
  hPartition : interestingUnblocked + uninterestingUnblocked = unblocked

theorem adblock_interesting_unblocked (m : AdBlockModel) : m.interestingUnblocked = 4 := by
  cases m <;> omega

theorem adblock_uninteresting_unblocked (m : AdBlockModel) : m.uninterestingUnblocked = 16 := by
  have h := adblock_interesting_unblocked m
  cases m <;> omega

structure VitaminModel where
  days capsulesPerBottle capsulesPerServing servingsPerBottle bottles : ℕ
  hDays : days = 180
  hCapsulesBottle : capsulesPerBottle = 60
  hCapsulesServing : capsulesPerServing = 2
  hServings : 2 * servingsPerBottle = capsulesPerBottle
  hBottles : 30 * bottles = days

theorem vitamin_servings_per_bottle (m : VitaminModel) : m.servingsPerBottle = 30 := by
  cases m <;> omega

theorem vitamin_bottles (m : VitaminModel) : m.bottles = 6 := by
  have h := vitamin_servings_per_bottle m
  cases m <;> omega

structure FurnitureModel where
  couch table lamp total saved owed : ℕ
  hCouch : couch = 750
  hTable : table = 100
  hLamp : lamp = 50
  hTotal : total = couch + table + lamp
  hSaved : saved = 500
  hOwed : saved + owed = total

theorem furniture_total (m : FurnitureModel) : m.total = 900 := by
  cases m <;> omega

theorem furniture_owed (m : FurnitureModel) : m.owed = 400 := by
  have h := furniture_total m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A13P3
