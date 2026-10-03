import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0929A19P1

structure TheaterModel where
  ticket : ℕ
  nachos : ℕ
  total : ℕ
  hTicket : ticket = 16
  hHalf : ticket = 2 * nachos
  hTotal : total = ticket + nachos

theorem theater_nachos (m : TheaterModel) : m.nachos = 8 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  dsimp at *
  (try simp_all) <;> norm_num at * <;> omega

theorem theater_solution (m : TheaterModel) : m.total = 24 := by
  have hNachos := theater_nachos m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  dsimp at *
  (try simp_all) <;> omega

structure SnowModel where
  baldMeters : ℚ
  billyMeters : ℚ
  pilotCm : ℚ
  cmPerMeter : ℚ
  baldCm : ℚ
  billyCm : ℚ
  combinedCm : ℚ
  differenceCm : ℚ
  hBaldMeters : baldMeters = 3 / 2
  hBillyMeters : billyMeters = 7 / 2
  hPilotCm : pilotCm = 126
  hConversion : cmPerMeter = 100
  hBaldCm : baldCm = baldMeters * cmPerMeter
  hBillyCm : billyCm = billyMeters * cmPerMeter
  hCombined : combinedCm = billyCm + pilotCm
  hDifference : combinedCm = baldCm + differenceCm

theorem snow_bald_cm (m : SnowModel) : m.baldCm = 150 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  (try simp_all) <;> norm_num at *

theorem snow_billy_cm (m : SnowModel) : m.billyCm = 350 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  (try simp_all) <;> norm_num at *

theorem snow_combined_cm (m : SnowModel) : m.combinedCm = 476 := by
  have hBilly := snow_billy_cm m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  (try simp_all) <;> norm_num at *

theorem snow_solution (m : SnowModel) : m.differenceCm = 326 := by
  have h := m.hDifference
  rw [snow_combined_cm m, snow_bald_cm m] at h
  linarith

structure OrangeModel where
  treesPerGrove : ℕ
  gabrielaPerTree : ℕ
  albaPerTree : ℕ
  maricelaPerTree : ℕ
  gabrielaTotal : ℕ
  albaTotal : ℕ
  maricelaTotal : ℕ
  allOranges : ℕ
  orangesPerCup : ℕ
  cups : ℕ
  dollarsPerCup : ℕ
  revenue : ℕ
  hTrees : treesPerGrove = 110
  hGabrielaRate : gabrielaPerTree = 600
  hAlbaRate : albaPerTree = 400
  hMaricelaRate : maricelaPerTree = 500
  hGabriela : gabrielaTotal = treesPerGrove * gabrielaPerTree
  hAlba : albaTotal = treesPerGrove * albaPerTree
  hMaricela : maricelaTotal = treesPerGrove * maricelaPerTree
  hAll : allOranges = gabrielaTotal + albaTotal + maricelaTotal
  hPerCup : orangesPerCup = 3
  hCups : allOranges = cups * orangesPerCup
  hDollars : dollarsPerCup = 4
  hRevenue : revenue = cups * dollarsPerCup

theorem orange_grove_totals (m : OrangeModel) :
    m.gabrielaTotal = 66000 ∧ m.albaTotal = 44000 ∧ m.maricelaTotal = 55000 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12⟩
  dsimp at *
  (try simp_all) <;> norm_num at *

theorem orange_all (m : OrangeModel) : m.allOranges = 165000 := by
  have hGroves := orange_grove_totals m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12⟩
  dsimp at *
  (try simp_all) <;> omega

theorem orange_cups (m : OrangeModel) : m.cups = 55000 := by
  have hAll := orange_all m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12⟩
  dsimp at *
  (try simp_all) <;> norm_num at * <;> omega

theorem orange_solution (m : OrangeModel) : m.revenue = 220000 := by
  have hCups := orange_cups m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12⟩
  dsimp at *
  (try simp_all) <;> norm_num at *

structure StepsModel where
  days : ℕ
  targetAverage : ℕ
  targetTotal : ℕ
  sunday : ℕ
  monday : ℕ
  tuesday : ℕ
  wednesday : ℕ
  thursday : ℕ
  firstFiveTotal : ℕ
  remainingTotal : ℕ
  remainingDays : ℕ
  remainingAverage : ℕ
  hDays : days = 7
  hTargetAverage : targetAverage = 9000
  hTargetTotal : targetTotal = days * targetAverage
  hSunday : sunday = 9400
  hMonday : monday = 9100
  hTuesday : tuesday = 8300
  hWednesday : wednesday = 9200
  hThursday : thursday = 8900
  hFirstFive : firstFiveTotal = sunday + monday + tuesday + wednesday + thursday
  hRemaining : targetTotal = firstFiveTotal + remainingTotal
  hRemainingDays : remainingDays = 2
  hRemainingAverage : remainingTotal = remainingDays * remainingAverage

theorem steps_target_total (m : StepsModel) : m.targetTotal = 63000 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12⟩
  dsimp at *
  (try simp_all) <;> norm_num at *

theorem steps_first_five (m : StepsModel) : m.firstFiveTotal = 44900 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12⟩
  dsimp at *
  (try simp_all) <;> norm_num at *

theorem steps_remaining (m : StepsModel) : m.remainingTotal = 18100 := by
  have hTarget := steps_target_total m
  have hFirst := steps_first_five m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12⟩
  dsimp at *
  (try simp_all) <;> omega

theorem steps_solution (m : StepsModel) : m.remainingAverage = 9050 := by
  have hRemaining := steps_remaining m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12⟩
  dsimp at *
  (try simp_all) <;> norm_num at * <;> omega

structure PoolModel where
  depthFeet : ℕ
  widthFeet : ℕ
  lengthFeet : ℕ
  cubicFeet : ℕ
  litersPerCubicFoot : ℕ
  liters : ℕ
  dollarsPerLiter : ℕ
  cost : ℕ
  hDepth : depthFeet = 10
  hWidth : widthFeet = 6
  hLength : lengthFeet = 20
  hVolume : cubicFeet = depthFeet * widthFeet * lengthFeet
  hLitersPerFoot : litersPerCubicFoot = 25
  hLiters : liters = cubicFeet * litersPerCubicFoot
  hDollars : dollarsPerLiter = 3
  hCost : cost = liters * dollarsPerLiter

theorem pool_volume (m : PoolModel) : m.cubicFeet = 1200 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  (try simp_all) <;> norm_num at *

theorem pool_liters (m : PoolModel) : m.liters = 30000 := by
  have hVolume := pool_volume m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  (try simp_all) <;> norm_num at *

theorem pool_solution (m : PoolModel) : m.cost = 90000 := by
  have hLiters := pool_liters m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  (try simp_all) <;> norm_num at *

end LemmaWeave.Problems.GSM8K.Sprint0929A19P1
