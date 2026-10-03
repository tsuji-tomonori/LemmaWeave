import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A04P3

structure PiePriceModel where
  pumpkinCount pumpkinCost cherryCount cherryCost cost profit revenue totalPies price : ℕ
  hPumpkinCount : pumpkinCount = 10
  hPumpkinCost : pumpkinCost = 3
  hCherryCount : cherryCount = 12
  hCherryCost : cherryCost = 5
  hCost : cost = pumpkinCount * pumpkinCost + cherryCount * cherryCost
  hProfit : profit = 20
  hRevenue : revenue = cost + profit
  hTotalPies : totalPies = pumpkinCount + cherryCount
  hPrice : price * totalPies = revenue

theorem pie_price_cost (m : PiePriceModel) : m.cost = 90 := by
  cases m <;> omega

theorem pie_price_revenue (m : PiePriceModel) : m.revenue = 110 := by
  have h := pie_price_cost m
  cases m <;> omega

theorem pie_price_total_pies (m : PiePriceModel) : m.totalPies = 22 := by
  cases m <;> omega

theorem pie_price_each (m : PiePriceModel) : m.price = 5 := by
  have h1 := pie_price_revenue m
  have h2 := pie_price_total_pies m
  cases m <;> omega

structure CurtainModel where
  feet inchesPerFoot heightInches extraInches totalInches : ℕ
  hFeet : feet = 8
  hInchesPerFoot : inchesPerFoot = 12
  hHeight : heightInches = feet * inchesPerFoot
  hExtra : extraInches = 5
  hTotal : totalInches = heightInches + extraInches

theorem curtain_height_inches (m : CurtainModel) : m.heightInches = 96 := by
  cases m <;> omega

theorem curtain_total_inches (m : CurtainModel) : m.totalInches = 101 := by
  have h := curtain_height_inches m
  cases m <;> omega

structure CavitiesModel where
  parentCanes perTeacher teachers teacherCanes givenCanes boughtCanes totalCanes canesPerCavity cavities : ℕ
  hParent : parentCanes = 2
  hPerTeacher : perTeacher = 3
  hTeachers : teachers = 4
  hTeacherCanes : teacherCanes = perTeacher * teachers
  hGiven : givenCanes = parentCanes + teacherCanes
  hBought : 7 * boughtCanes = givenCanes
  hTotal : totalCanes = givenCanes + boughtCanes
  hPerCavity : canesPerCavity = 4
  hCavities : cavities * canesPerCavity = totalCanes

theorem cavities_given (m : CavitiesModel) : m.givenCanes = 14 := by
  cases m <;> omega

theorem cavities_bought (m : CavitiesModel) : m.boughtCanes = 2 := by
  have h := cavities_given m
  cases m <;> omega

theorem cavities_total_canes (m : CavitiesModel) : m.totalCanes = 16 := by
  have h1 := cavities_given m
  have h2 := cavities_bought m
  cases m <;> omega

theorem cavities_count (m : CavitiesModel) : m.cavities = 4 := by
  have h := cavities_total_canes m
  cases m <;> omega

theorem cavities_source_terminal_inconsistent : (4 : ℕ) ≠ 16 := by
  norm_num

theorem cavities_answer (m : CavitiesModel) : m.cavities = 4 ∧ (4 : ℕ) ≠ 16 := by
  exact ⟨cavities_count m, cavities_source_terminal_inconsistent⟩

structure RibbonModel where
  gifts halfMetersPerGift availableHalfMeters usedHalfMeters leftHalfMeters leftMeters : ℕ
  hGifts : gifts = 8
  hPerGift : halfMetersPerGift = 3
  hAvailable : availableHalfMeters = 30
  hUsed : usedHalfMeters = gifts * halfMetersPerGift
  hLeft : leftHalfMeters + usedHalfMeters = availableHalfMeters
  hLeftMeters : leftHalfMeters = 2 * leftMeters

theorem ribbon_used (m : RibbonModel) : m.usedHalfMeters = 24 := by
  cases m <;> omega

theorem ribbon_left_half_meters (m : RibbonModel) : m.leftHalfMeters = 6 := by
  have h := ribbon_used m
  cases m <;> omega

theorem ribbon_left_meters (m : RibbonModel) : m.leftMeters = 3 := by
  have h := ribbon_left_half_meters m
  cases m <;> omega

structure BrushModel where
  carlaInches carmenInches halfCentimeters centimeters : ℕ
  hCarla : carlaInches = 12
  hCarmen : 2 * carmenInches = 3 * carlaInches
  hHalfCentimeters : halfCentimeters = carmenInches * 5
  hCentimeters : halfCentimeters = 2 * centimeters

theorem brush_carmen_inches (m : BrushModel) : m.carmenInches = 18 := by
  cases m <;> omega

theorem brush_half_centimeters (m : BrushModel) : m.halfCentimeters = 90 := by
  have h := brush_carmen_inches m
  cases m <;> omega

theorem brush_centimeters (m : BrushModel) : m.centimeters = 45 := by
  have h := brush_half_centimeters m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A04P3
