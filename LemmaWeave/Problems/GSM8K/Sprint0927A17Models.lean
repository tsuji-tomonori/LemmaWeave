import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A17

structure AxeSharpening where
  sharpenings : ℕ
  totalCost : ℕ
  trees : ℕ
  hCost : totalCost = 35
  hCostRate : totalCost = 5 * sharpenings
  hTrees : trees = 13 * sharpenings
theorem axe_sharpenings (m : AxeSharpening) : m.sharpenings = 7 := by cases m; omega
theorem axe_solution (m : AxeSharpening) : m.trees = 91 := by cases m; omega

structure BandGoal where
  tenDollarRevenue : ℕ
  fiveDollarRevenue : ℕ
  earned : ℕ
  remaining : ℕ
  hTen : tenDollarRevenue = 10 * 3
  hFive : fiveDollarRevenue = 5 * 15
  hEarned : earned = tenDollarRevenue + fiveDollarRevenue
  hGoal : earned + remaining = 150
theorem band_ten_revenue (m : BandGoal) : m.tenDollarRevenue = 30 := by cases m; omega
theorem band_five_revenue (m : BandGoal) : m.fiveDollarRevenue = 75 := by cases m; omega
theorem band_earned (m : BandGoal) : m.earned = 105 := by cases m; omega
theorem band_solution (m : BandGoal) : m.remaining = 45 := by cases m; omega

structure GrocerySplit where
  beefCost : ℕ
  nonChickenCost : ℕ
  chickenCost : ℕ
  eachShare : ℕ
  hBeef : beefCost = 4 * 3
  hNonChicken : nonChickenCost = beefCost + 1
  hTotal : chickenCost + nonChickenCost = 16
  hSplit : chickenCost = 3 * eachShare
theorem grocery_beef (m : GrocerySplit) : m.beefCost = 12 := by cases m; omega
theorem grocery_non_chicken (m : GrocerySplit) : m.nonChickenCost = 13 := by cases m; omega
theorem grocery_chicken (m : GrocerySplit) : m.chickenCost = 3 := by cases m; omega
theorem grocery_solution (m : GrocerySplit) : m.eachShare = 1 := by cases m; omega

structure AppleShare where
  remaining : ℕ
  eachShare : ℕ
  hRemaining : remaining + 10 = 55
  hSplit : remaining = 5 * eachShare
theorem apples_remaining (m : AppleShare) : m.remaining = 45 := by cases m; omega
theorem apples_solution (m : AppleShare) : m.eachShare = 9 := by cases m; omega

structure WallDecorations where
  sticky : ℕ
  afterNails : ℕ
  total : ℕ
  nails : ℕ
  hSticky : sticky = 15
  hStickyFraction : 3 * afterNails = 5 * sticky
  hAfterFraction : total = 3 * afterNails
  hNailsFraction : 3 * nails = 2 * total
theorem decorations_after_nails (m : WallDecorations) : m.afterNails = 25 := by cases m; omega
theorem decorations_total (m : WallDecorations) : m.total = 75 := by cases m; omega
theorem decorations_solution (m : WallDecorations) : m.nails = 50 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0927A17
