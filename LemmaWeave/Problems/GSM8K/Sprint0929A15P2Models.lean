import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A15P2

structure SodasModel where
  initial doubled extra gift total : ℕ
  hInitial : initial = 22
  hDoubled : doubled = 2 * initial
  hExtra : extra = 12
  hGift : gift = extra + doubled
  hTotal : total = initial + gift

theorem sodas_doubled (m : SodasModel) : m.doubled = 44 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all

theorem sodas_gift (m : SodasModel) : m.gift = 56 := by
  have hPrev := sodas_doubled m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all

theorem sodas_solution (m : SodasModel) : m.total = 78 := by
  have hPrev := sodas_gift m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all

structure HardwareModel where
  graphicsCount graphicsPrice graphicsRevenue : ℕ
  drivesCount drivesPrice drivesRevenue : ℕ
  cpuCount cpuPrice cpuRevenue : ℕ
  ramPairs ramPrice ramRevenue totalRevenue : ℕ
  hGraphicsCount : graphicsCount = 10
  hGraphicsPrice : graphicsPrice = 600
  hGraphicsRevenue : graphicsRevenue = graphicsCount * graphicsPrice
  hDrivesCount : drivesCount = 14
  hDrivesPrice : drivesPrice = 80
  hDrivesRevenue : drivesRevenue = drivesCount * drivesPrice
  hCpuCount : cpuCount = 8
  hCpuPrice : cpuPrice = 200
  hCpuRevenue : cpuRevenue = cpuCount * cpuPrice
  hRamPairs : ramPairs = 4
  hRamPrice : ramPrice = 60
  hRamRevenue : ramRevenue = ramPairs * ramPrice
  hTotal : totalRevenue = graphicsRevenue + drivesRevenue + cpuRevenue + ramRevenue

theorem hardware_graphics (m : HardwareModel) : m.graphicsRevenue = 6000 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,mn,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13⟩
  simp_all

theorem hardware_drives (m : HardwareModel) : m.drivesRevenue = 1120 := by
  have hPrev := hardware_graphics m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,mn,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13⟩
  simp_all

theorem hardware_cpus (m : HardwareModel) : m.cpuRevenue = 1600 := by
  have hPrev := hardware_drives m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,mn,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13⟩
  simp_all

theorem hardware_ram (m : HardwareModel) : m.ramRevenue = 240 := by
  have hPrev := hardware_cpus m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,mn,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13⟩
  simp_all

theorem hardware_solution (m : HardwareModel) : m.totalRevenue = 8960 := by
  have hPrev := hardware_ram m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,mn,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13⟩
  simp_all

structure SeedsModel where
  targetFlowers requiredSeeds packSize packCount packCost totalCost : ℕ
  hTarget : targetFlowers = 20
  hExactHalfAssumption : requiredSeeds = 2 * targetFlowers
  hPackSize : packSize = 25
  hPackCount : packCount = 2
  hOnePackInsufficient : packSize < requiredSeeds
  hTwoPacksEnough : requiredSeeds ≤ packCount * packSize
  hPackCost : packCost = 5
  hTotal : totalCost = packCount * packCost

theorem seeds_required (m : SeedsModel) : m.requiredSeeds = 40 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6,h7,h8⟩
  simp_all

theorem seeds_packs (m : SeedsModel) : m.packCount = 2 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6,h7,h8⟩
  simp_all

theorem seeds_solution (m : SeedsModel) : m.totalCost = 10 := by
  have hPrev := seeds_packs m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6,h7,h8⟩
  simp_all

structure WageModel where
  roseCups roseRate roseHours lilyCups lilyRate lilyHours totalHours pay hourlyPay : ℕ
  hRoseCups : roseCups = 6
  hRoseRate : roseRate = 6
  hRoseTime : roseCups = roseRate * roseHours
  hLilyCups : lilyCups = 14
  hLilyRate : lilyRate = 7
  hLilyTime : lilyCups = lilyRate * lilyHours
  hTotalHours : totalHours = roseHours + lilyHours
  hPay : pay = 90
  hHourly : pay = totalHours * hourlyPay

theorem wage_rose_time (m : WageModel) : m.roseHours = 1 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all <;> omega

theorem wage_lily_time (m : WageModel) : m.lilyHours = 2 := by
  have hPrev := wage_rose_time m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all <;> omega

theorem wage_total_time (m : WageModel) : m.totalHours = 3 := by
  have hPrev := wage_lily_time m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all

theorem wage_solution (m : WageModel) : m.hourlyPay = 30 := by
  have hPrev := wage_total_time m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all <;> omega

structure ZooModel where
  giraffes penguins totalAnimals elephants : ℕ
  hGiraffes : giraffes = 5
  hPenguins : penguins = 2 * giraffes
  hPenguinPercent : 100 * penguins = 20 * totalAnimals
  hElephantPercent : 100 * elephants = 4 * totalAnimals

theorem zoo_penguins (m : ZooModel) : m.penguins = 10 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  simp_all

theorem zoo_total (m : ZooModel) : m.totalAnimals = 50 := by
  have hPrev := zoo_penguins m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  simp_all <;> omega

theorem zoo_solution (m : ZooModel) : m.elephants = 2 := by
  have hPrev := zoo_total m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A15P2
