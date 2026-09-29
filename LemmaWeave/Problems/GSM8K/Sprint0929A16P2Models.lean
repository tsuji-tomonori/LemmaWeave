import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A16P2

structure TomatoesModel where
  firstShipment sold afterSales rotten remaining secondShipment total : ℕ
  hFirst : firstShipment = 1000
  hSold : sold = 300
  hAfterSales : firstShipment = sold + afterSales
  hRotten : rotten = 200
  hRemaining : afterSales = rotten + remaining
  hSecond : secondShipment = 2 * firstShipment
  hTotal : total = remaining + secondShipment

theorem tomatoes_after_sales (m : TomatoesModel) : m.afterSales = 700 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all <;> omega

theorem tomatoes_remaining (m : TomatoesModel) : m.remaining = 500 := by
  have hPrev := tomatoes_after_sales m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all <;> omega

theorem tomatoes_second_shipment (m : TomatoesModel) : m.secondShipment = 2000 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all

theorem tomatoes_solution (m : TomatoesModel) : m.total = 2500 := by
  have hRemain := tomatoes_remaining m
  have hSecond := tomatoes_second_shipment m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all

structure CathyModel where
  weeksPerMonth months baseWeeks extraWeeks hoursPerWeek workedWeeks totalHours : ℕ
  hWeeksPerMonth : weeksPerMonth = 4
  hMonths : months = 2
  hBaseWeeks : baseWeeks = weeksPerMonth * months
  hExtra : extraWeeks = 1
  hWorkedWeeks : workedWeeks = baseWeeks + extraWeeks
  hHoursPerWeek : hoursPerWeek = 20
  hTotal : totalHours = workedWeeks * hoursPerWeek

theorem cathy_base_weeks (m : CathyModel) : m.baseWeeks = 8 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all

theorem cathy_worked_weeks (m : CathyModel) : m.workedWeeks = 9 := by
  have hPrev := cathy_base_weeks m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all

theorem cathy_solution (m : CathyModel) : m.totalHours = 180 := by
  have hPrev := cathy_worked_weeks m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all

structure AnnieModel where
  initial hamburgerPrice hamburgerCount hamburgerCost milkshakePrice milkshakeCount milkshakeCost spent remaining : ℕ
  hInitial : initial = 120
  hHamburgerPrice : hamburgerPrice = 4
  hHamburgerCount : hamburgerCount = 8
  hHamburgerCost : hamburgerCost = hamburgerPrice * hamburgerCount
  hMilkshakePrice : milkshakePrice = 3
  hMilkshakeCount : milkshakeCount = 6
  hMilkshakeCost : milkshakeCost = milkshakePrice * milkshakeCount
  hSpent : spent = hamburgerCost + milkshakeCost
  hRemaining : initial = spent + remaining

theorem annie_hamburgers (m : AnnieModel) : m.hamburgerCost = 32 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all

theorem annie_milkshakes (m : AnnieModel) : m.milkshakeCost = 18 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all

theorem annie_spent (m : AnnieModel) : m.spent = 50 := by
  have hA := annie_hamburgers m
  have hB := annie_milkshakes m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all

theorem annie_solution (m : AnnieModel) : m.remaining = 70 := by
  have hPrev := annie_spent m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all <;> omega

structure CookiesModel where
  firstRemoved secondTaken secondReturned sonRemoved totalRemoved remaining : ℕ
  hFirst : firstRemoved = 3
  hSecondTaken : secondTaken = 3
  hSecondReturned : secondReturned = 2
  hSon : sonRemoved = 7
  hRemoved : totalRemoved + secondReturned = firstRemoved + secondTaken + sonRemoved
  hAccusationAccurate : remaining = totalRemoved

theorem cookies_removed (m : CookiesModel) : m.totalRemoved = 11 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

theorem cookies_solution_if_accusation_accurate (m : CookiesModel) : m.remaining = 11 := by
  have hPrev := cookies_removed m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all

theorem cookies_without_accuracy_counterexample :
    ∃ initial remaining : ℕ, initial = 30 ∧ remaining = initial - 11 ∧ remaining ≠ 11 := by
  exact ⟨30, 19, by norm_num, by norm_num, by norm_num⟩

structure MovieModel where
  adultCount childCount seniorCount adultPrice childPrice seniorPrice adultCost childCost seniorCost total : ℕ
  hAdults : adultCount = 3
  hChildren : childCount = 2
  hSeniors : seniorCount = 2
  hAdultPrice : adultPrice = 11
  hChildPrice : childPrice = 8
  hSeniorPrice : seniorPrice = 9
  hAdultCost : adultCost = adultCount * adultPrice
  hChildCost : childCost = childCount * childPrice
  hSeniorCost : seniorCost = seniorCount * seniorPrice
  hTotal : total = adultCost + childCost + seniorCost

theorem movie_age14_not_child : ¬ (3 ≤ 14 ∧ 14 ≤ 12) := by norm_num

theorem movie_adult_cost (m : MovieModel) : m.adultCost = 33 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  simp_all

theorem movie_child_cost (m : MovieModel) : m.childCost = 16 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  simp_all

theorem movie_senior_cost (m : MovieModel) : m.seniorCost = 18 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  simp_all

theorem movie_solution (m : MovieModel) : m.total = 67 := by
  have hA := movie_adult_cost m
  have hC := movie_child_cost m
  have hS := movie_senior_cost m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  simp_all

theorem movie_reference_64_inconsistent (m : MovieModel) : m.total ≠ 64 := by
  have h := movie_solution m
  omega

end LemmaWeave.Problems.GSM8K.Sprint0929A16P2
