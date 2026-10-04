import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A01P2

structure PagesModel where
  night1 : ℕ
  night2 : ℕ
  night3 : ℕ
  total : ℕ
  hNight1 : night1 = 30
  hNight2 : night2 + 2 = 2 * night1
  hNight3 : night3 = night1 + night2 + 3
  hTotal : total = night1 + night2 + night3

theorem pages_night2 (m : PagesModel) : m.night2 = 58 := by
  omega
theorem pages_night3 (m : PagesModel) : m.night3 = 91 := by
  have h := pages_night2 m
  omega
theorem pages_total (m : PagesModel) : m.total = 179 := by
  have h1 := pages_night2 m
  have h2 := pages_night3 m
  omega
structure CondoModel where
  floors : ℕ
  penthouseFloors : ℕ
  regularFloors : ℕ
  regularUnits : ℕ
  penthouseUnits : ℕ
  totalUnits : ℕ
  hFloors : floors = 23
  hPenthouseFloors : penthouseFloors = 2
  hSplit : regularFloors + penthouseFloors = floors
  hRegular : regularUnits = regularFloors * 12
  hPenthouse : penthouseUnits = penthouseFloors * 2
  hTotal : totalUnits = regularUnits + penthouseUnits

theorem condo_regular_floors (m : CondoModel) : m.regularFloors = 21 := by
  omega
theorem condo_regular_units (m : CondoModel) : m.regularUnits = 252 := by
  have h := condo_regular_floors m
  omega
theorem condo_penthouse_units (m : CondoModel) : m.penthouseUnits = 4 := by
  omega
theorem condo_total (m : CondoModel) : m.totalUnits = 256 := by
  have h1 := condo_regular_units m
  have h2 := condo_penthouse_units m
  omega
structure PiesModel where
  pumpkinPies : ℕ
  pumpkinSlicesPerPie : ℕ
  custardPies : ℕ
  custardSlicesPerPie : ℕ
  pumpkinSlices : ℕ
  custardSlices : ℕ
  pumpkinRevenue : ℕ
  custardRevenue : ℕ
  totalRevenue : ℕ
  hPumpkinPies : pumpkinPies = 4
  hPumpkinPer : pumpkinSlicesPerPie = 8
  hCustardPies : custardPies = 5
  hCustardPer : custardSlicesPerPie = 6
  hPumpkinSlices : pumpkinSlices = pumpkinPies * pumpkinSlicesPerPie
  hCustardSlices : custardSlices = custardPies * custardSlicesPerPie
  hPumpkinRevenue : pumpkinRevenue = pumpkinSlices * 5
  hCustardRevenue : custardRevenue = custardSlices * 6
  hTotal : totalRevenue = pumpkinRevenue + custardRevenue

theorem pies_pumpkin_slices (m : PiesModel) : m.pumpkinSlices = 32 := by
  omega
theorem pies_custard_slices (m : PiesModel) : m.custardSlices = 30 := by
  omega
theorem pies_pumpkin_revenue (m : PiesModel) : m.pumpkinRevenue = 160 := by
  have h := pies_pumpkin_slices m
  omega
theorem pies_custard_revenue (m : PiesModel) : m.custardRevenue = 180 := by
  have h := pies_custard_slices m
  omega
theorem pies_total (m : PiesModel) : m.totalRevenue = 340 := by
  have h1 := pies_pumpkin_revenue m
  have h2 := pies_custard_revenue m
  omega
structure ChickensModel where
  initial : ℕ
  dead : ℕ
  remaining : ℕ
  bought : ℕ
  total : ℕ
  hInitial : initial = 400
  hDeadPercent : 5 * dead = 2 * initial
  hRemaining : remaining + dead = initial
  hBought : bought = 10 * dead
  hTotal : total = remaining + bought

theorem chickens_dead (m : ChickensModel) : m.dead = 160 := by
  omega
theorem chickens_remaining (m : ChickensModel) : m.remaining = 240 := by
  have h := chickens_dead m
  omega
theorem chickens_bought (m : ChickensModel) : m.bought = 1600 := by
  have h := chickens_dead m
  omega
theorem chickens_total (m : ChickensModel) : m.total = 1840 := by
  have h1 := chickens_remaining m
  have h2 := chickens_bought m
  omega
structure BalloonModel where
  original : ℕ
  increase1 : ℕ
  after1 : ℕ
  increase2 : ℕ
  after2 : ℕ
  hOriginal : original = 500
  hIncrease1 : 5 * increase1 = 2 * original
  hAfter1 : after1 = original + increase1
  hIncrease2 : 5 * increase2 = 2 * after1
  hAfter2 : after2 = after1 + increase2

theorem balloon_increase1 (m : BalloonModel) : m.increase1 = 200 := by
  omega
theorem balloon_after1 (m : BalloonModel) : m.after1 = 700 := by
  have h := balloon_increase1 m
  omega
theorem balloon_increase2 (m : BalloonModel) : m.increase2 = 280 := by
  have h := balloon_after1 m
  omega
theorem balloon_after2 (m : BalloonModel) : m.after2 = 980 := by
  have h1 := balloon_after1 m
  have h2 := balloon_increase2 m
  omega
end LemmaWeave.Problems.GSM8K.Sprint1001A01P2
