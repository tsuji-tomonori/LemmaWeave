import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1001A18P2

structure GroceryModel where
  ricePackets : ℕ
  riceEach : ℕ
  riceCost : ℕ
  flourPackets : ℕ
  flourEach : ℕ
  flourCost : ℕ
  soda : ℕ
  spent : ℕ
  initial : ℕ
  balance : ℕ
  hRicePackets : ricePackets = 2
  hRiceEach : riceEach = 20
  hRiceCost : riceCost = ricePackets * riceEach
  hFlourPackets : flourPackets = 3
  hFlourEach : flourEach = 25
  hFlourCost : flourCost = flourPackets * flourEach
  hSoda : soda = 150
  hSpent : spent = riceCost + flourCost + soda
  hInitial : initial = 500
  hBalance : initial = spent + balance

theorem rice_cost (m : GroceryModel) : m.riceCost = 40 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem flour_cost (m : GroceryModel) : m.flourCost = 75 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem grocery_total_spent (m : GroceryModel) : m.spent = 265 := by
  have h1 := rice_cost m
  have h2 := flour_cost m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem grocery_balance (m : GroceryModel) : m.balance = 235 := by
  have h := grocery_total_spent m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure SportsModel where
  schoolDays : ℕ
  missed : ℕ
  present : ℕ
  hoursPerDay : ℕ
  totalHours : ℕ
  hSchoolDays : schoolDays = 5
  hMissed : missed = 2
  hPresent : schoolDays = missed + present
  hHoursPerDay : hoursPerDay = 2
  hTotal : totalHours = present * hoursPerDay

theorem sports_present_days (m : SportsModel) : m.present = 3 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem sports_hours (m : SportsModel) : m.totalHours = 6 := by
  have h := sports_present_days m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure FuelModel where
  oldCost : ℕ
  increasePercent : ℕ
  newUnitCost : ℕ
  capacityMultiplier : ℕ
  totalCost : ℕ
  hOld : oldCost = 200
  hIncrease : increasePercent = 20
  hNewUnit : 100 * newUnitCost = (100 + increasePercent) * oldCost
  hCapacity : capacityMultiplier = 2
  hTotal : totalCost = capacityMultiplier * newUnitCost

theorem increased_tank_cost (m : FuelModel) : m.newUnitCost = 240 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem doubled_fuel_cost (m : FuelModel) : m.totalCost = 480 := by
  have h := increased_tank_cost m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure NotebookModel where
  children : ℕ
  fatherEach : ℕ
  motherEach : ℕ
  fatherTotal : ℕ
  motherTotal : ℕ
  total : ℕ
  hChildren : children = 3
  hFatherEach : fatherEach = 2
  hMotherEach : motherEach = 5
  hFatherTotal : fatherTotal = children * fatherEach
  hMotherTotal : motherTotal = children * motherEach
  hTotal : total = fatherTotal + motherTotal

theorem father_notebooks (m : NotebookModel) : m.fatherTotal = 6 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem mother_notebooks (m : NotebookModel) : m.motherTotal = 15 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem notebook_total (m : NotebookModel) : m.total = 21 := by
  have h1 := father_notebooks m
  have h2 := mother_notebooks m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure FoldSchedule where
  hugoSmall : ℕ
  hugoMedium : ℕ
  tomSmall : ℕ
  tomMedium : ℕ
  hugoTime : ℕ
  tomTime : ℕ
  elapsed : ℕ
  hSmall : hugoSmall + tomSmall = 2400
  hMedium : hugoMedium + tomMedium = 1800
  hHugoTime : hugoTime = 3 * hugoSmall + 6 * hugoMedium
  hTomTime : tomTime = 4 * tomSmall + 4 * tomMedium
  hHugoBound : hugoTime ≤ elapsed
  hTomBound : tomTime ≤ elapsed

def candidateFoldSchedule : FoldSchedule where
  hugoSmall := 2400
  hugoMedium := 0
  tomSmall := 0
  tomMedium := 1800
  hugoTime := 7200
  tomTime := 7200
  elapsed := 7200
  hSmall := by norm_num
  hMedium := by norm_num
  hHugoTime := by norm_num
  hTomTime := by norm_num
  hHugoBound := by norm_num
  hTomBound := by norm_num

theorem hugo_medium_box_time : 2 * 3 = 6 := by norm_num

theorem folding_lower_bound (m : FoldSchedule) : 7200 ≤ m.elapsed := by
  have hMedium := hugo_medium_box_time
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem folding_candidate_time : candidateFoldSchedule.elapsed = 7200 := by
  rfl

theorem folding_optimal :
    candidateFoldSchedule.elapsed = 7200 ∧ ∀ m : FoldSchedule, 7200 ≤ m.elapsed := by
  constructor
  · exact folding_candidate_time
  · intro m
    exact folding_lower_bound m

end LemmaWeave.Problems.GSM8K.Sprint1001A18P2
