import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A05

structure FuelModel where
  todayMiles : ℕ
  tomorrowMiles : ℕ
  totalMiles : ℕ
  gallons : ℕ
  hToday : todayMiles = 400
  hTomorrow : tomorrowMiles = todayMiles + 200
  hDistance : totalMiles = todayMiles + tomorrowMiles
  hGallons : gallons = 4 * totalMiles

theorem fuel_tomorrow (m : FuelModel) : m.tomorrowMiles = 600 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem fuel_total_distance (m : FuelModel) : m.totalMiles = 1000 := by
  have hPrev := fuel_tomorrow m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem fuel_solution (m : FuelModel) : m.gallons = 4000 := by
  have hPrev := fuel_total_distance m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

structure VideosModel where
  lilaPerVideo : ℕ
  lilaTotal : ℕ
  rogerTotal : ℕ
  combined : ℕ
  hLilaPer : 2 * lilaPerVideo = 100
  hLilaTotal : lilaTotal = 6 * lilaPerVideo
  hRoger : rogerTotal = 6 * 100
  hCombined : combined = lilaTotal + rogerTotal

theorem videos_lila_per (m : VideosModel) : m.lilaPerVideo = 50 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem videos_lila_total (m : VideosModel) : m.lilaTotal = 300 := by
  have hPrev := videos_lila_per m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem videos_roger_total (m : VideosModel) : m.rogerTotal = 600 := by
  have hPrev := videos_lila_total m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem videos_solution (m : VideosModel) : m.combined = 900 := by
  have hPrev := videos_roger_total m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

structure JuniorModel where
  extraHours : ℕ
  hoursPerSite : ℕ
  totalHours : ℕ
  hExtra : 4 * extraHours = 20
  hPerSite : hoursPerSite = 20 + extraHours
  hTotal : totalHours = 30 * hoursPerSite

theorem junior_extra (m : JuniorModel) : m.extraHours = 5 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem junior_per_site (m : JuniorModel) : m.hoursPerSite = 25 := by
  have hPrev := junior_extra m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem junior_solution (m : JuniorModel) : m.totalHours = 750 := by
  have hPrev := junior_per_site m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure MarblesModel where
  white : ℕ
  green : ℕ
  red : ℕ
  hWhite : 2 * white = 50
  hGreen : 2 * green = 12
  hPartition : white + 12 + green + red = 50

theorem marbles_white (m : MarblesModel) : m.white = 25 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem marbles_green (m : MarblesModel) : m.green = 6 := by
  have hPrev := marbles_white m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem marbles_solution (m : MarblesModel) : m.red = 7 := by
  have hPrev := marbles_green m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure PoleModel where
  cutMeters : ℕ
  remainingMeters : ℕ
  hCut : 100 * cutMeters = 30 * 20
  hRemaining : remainingMeters + cutMeters = 20

theorem pole_cut (m : PoleModel) : m.cutMeters = 6 := by
  rcases m with ⟨a,b,h1,h2⟩
  omega
theorem pole_solution (m : PoleModel) : m.remainingMeters = 14 := by
  have hPrev := pole_cut m
  rcases m with ⟨a,b,h1,h2⟩
  omega

end LemmaWeave.Problems.GSM8K.Sprint0929A05
