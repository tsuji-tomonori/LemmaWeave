import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A06P2

structure PoolModel where
  volume : ℕ
  quarts : ℕ
  cost : ℕ
  hVolume : volume = 10 * 8 * 6
  hQuarts : volume = 120 * quarts
  hCost : cost = 3 * quarts

theorem pool_volume (m : PoolModel) : m.volume = 480 := by
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  simp_all <;> omega

theorem pool_quarts (m : PoolModel) : m.quarts = 4 := by
  have hPrev := pool_volume m
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  simp_all <;> omega

theorem pool_solution (m : PoolModel) : m.cost = 12 := by
  have hPrev := pool_quarts m
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  simp_all <;> omega

structure AgeModel where
  brother : ℕ
  sister : ℕ
  difference : ℕ
  hBrother : brother = 4 * 3
  hSister : sister + 5 = brother
  hDifference : difference + 3 = sister

theorem age_brother (m : AgeModel) : m.brother = 12 := by
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  simp_all <;> omega

theorem age_sister (m : AgeModel) : m.sister = 7 := by
  have hPrev := age_brother m
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  simp_all <;> omega

theorem age_solution (m : AgeModel) : m.difference = 4 := by
  have hPrev := age_sister m
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  simp_all <;> omega

structure MedicationModel where
  scheduledDoses : ℕ
  missedDoses : ℕ
  takenDoses : ℕ
  waterOunces : ℕ
  hScheduled : scheduledDoses = 2 * 7 * 3
  hMissed : missedDoses = 2
  hTaken : takenDoses + missedDoses = scheduledDoses
  hWater : waterOunces = 4 * takenDoses

theorem medication_scheduled (m : MedicationModel) : m.scheduledDoses = 42 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem medication_taken (m : MedicationModel) : m.takenDoses = 40 := by
  have hPrev := medication_scheduled m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem medication_solution (m : MedicationModel) : m.waterOunces = 160 := by
  have hPrev := medication_taken m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

structure MarblesModel where
  blueBought : ℕ
  greenLeft : ℕ
  blueLeft : ℕ
  totalLeft : ℕ
  hBlueBought : blueBought = 6 * 10
  hGreen : greenLeft + 6 = 26
  hBlue : blueLeft + 8 = blueBought
  hTotal : totalLeft = greenLeft + blueLeft

theorem marbles_blue_bought (m : MarblesModel) : m.blueBought = 60 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem marbles_green_left (m : MarblesModel) : m.greenLeft = 20 := by
  have hPrev := marbles_blue_bought m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem marbles_blue_left (m : MarblesModel) : m.blueLeft = 52 := by
  have hPrev := marbles_green_left m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem marbles_solution (m : MarblesModel) : m.totalLeft = 72 := by
  have hPrev := marbles_blue_left m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

structure FishingModel where
  pastKg : ℕ
  todayKg : ℕ
  totalKg : ℕ
  earnings : ℕ
  hPast : pastKg = 80
  hToday : todayKg = 2 * pastKg
  hTotal : totalKg = pastKg + todayKg
  hEarnings : earnings = 20 * totalKg

theorem fishing_today (m : FishingModel) : m.todayKg = 160 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem fishing_total (m : FishingModel) : m.totalKg = 240 := by
  have hPrev := fishing_today m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem fishing_solution (m : FishingModel) : m.earnings = 4800 := by
  have hPrev := fishing_total m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A06P2
