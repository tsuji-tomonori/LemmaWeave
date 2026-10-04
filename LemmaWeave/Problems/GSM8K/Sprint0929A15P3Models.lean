import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A15P3

structure TemperatureModel where
  startHour : ℕ
  endHour : ℕ
  elapsedHours : ℕ
  intervalHours : ℕ
  steps : ℕ
  startHalfDegrees : ℕ
  incrementHalfDegrees : ℕ
  finalHalfDegrees : ℕ
  finalDegrees : ℕ
  hStartHour : startHour = 3
  hEndHour : endHour = 11
  hElapsed : elapsedHours = endHour - startHour
  hInterval : intervalHours = 2
  hSteps : elapsedHours = intervalHours * steps
  hStartTemp : startHalfDegrees = 100
  hIncrement : incrementHalfDegrees = 3
  hFinalHalf : finalHalfDegrees = startHalfDegrees + steps * incrementHalfDegrees
  hFinalDegrees : finalHalfDegrees = 2 * finalDegrees

theorem temperature_steps (m : TemperatureModel) : m.steps = 4 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all <;> omega

theorem temperature_half_degrees (m : TemperatureModel) : m.finalHalfDegrees = 112 := by
  have hPrev := temperature_steps m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all

theorem temperature_solution (m : TemperatureModel) : m.finalDegrees = 56 := by
  have hPrev := temperature_half_degrees m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all <;> omega

structure ShipsModel where
  distance : ℕ
  theonSpeed : ℕ
  yaraSpeed : ℕ
  theonHours : ℕ
  yaraHours : ℕ
  leadHours : ℕ
  hDistance : distance = 90
  hTheonSpeed : theonSpeed = 15
  hYaraSpeed : yaraSpeed = 30
  hTheonTime : distance = theonSpeed * theonHours
  hYaraTime : distance = yaraSpeed * yaraHours
  hLead : theonHours = yaraHours + leadHours

theorem ships_theon_time (m : ShipsModel) : m.theonHours = 6 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

theorem ships_yara_time (m : ShipsModel) : m.yaraHours = 3 := by
  have hPrev := ships_theon_time m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

theorem ships_solution (m : ShipsModel) : m.leadHours = 3 := by
  have hPrev := ships_yara_time m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

structure AgesModel where
  youngest : ℕ
  middle : ℕ
  oldest : ℕ
  total : ℕ
  hConsecutiveMiddle : middle = youngest + 1
  hConsecutiveOldest : oldest = youngest + 2
  hTotal : total = youngest + middle + oldest
  hKnown : total = 96

theorem ages_equation (m : AgesModel) : 3 * m.youngest + 3 = 96 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  simp_all <;> omega

theorem ages_solution (m : AgesModel) : m.youngest = 31 := by
  have hPrev := ages_equation m
  omega

structure ExerciseModel where
  natashaMinutesPerDay : ℕ
  natashaDays : ℕ
  natashaMinutes : ℕ
  estebanMinutesPerDay : ℕ
  estebanDays : ℕ
  estebanMinutes : ℕ
  totalMinutes : ℕ
  minutesPerHour : ℕ
  totalHours : ℕ
  hNatashaRate : natashaMinutesPerDay = 30
  hNatashaDays : natashaDays = 7
  hNatashaTotal : natashaMinutes = natashaMinutesPerDay * natashaDays
  hEstebanRate : estebanMinutesPerDay = 10
  hEstebanDays : estebanDays = 9
  hEstebanTotal : estebanMinutes = estebanMinutesPerDay * estebanDays
  hTotalMinutes : totalMinutes = natashaMinutes + estebanMinutes
  hMinutesPerHour : minutesPerHour = 60
  hHours : totalMinutes = minutesPerHour * totalHours

theorem exercise_natasha (m : ExerciseModel) : m.natashaMinutes = 210 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all

theorem exercise_esteban (m : ExerciseModel) : m.estebanMinutes = 90 := by
  have hPrev := exercise_natasha m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all

theorem exercise_total_minutes (m : ExerciseModel) : m.totalMinutes = 300 := by
  have hPrev := exercise_esteban m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all

theorem exercise_solution (m : ExerciseModel) : m.totalHours = 5 := by
  have hPrev := exercise_total_minutes m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all <;> omega

structure FruitModel where
  bonnies : ℕ
  blueberries : ℕ
  apples : ℕ
  berryAndBonnieTotal : ℕ
  totalFruits : ℕ
  hBonnies : bonnies = 60
  hBlueberries : 4 * blueberries = 3 * bonnies
  hApples : apples = 3 * blueberries
  hSubtotal : berryAndBonnieTotal = blueberries + bonnies
  hTotal : totalFruits = berryAndBonnieTotal + apples

theorem fruit_blueberries (m : FruitModel) : m.blueberries = 45 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all <;> omega

theorem fruit_subtotal (m : FruitModel) : m.berryAndBonnieTotal = 105 := by
  have hPrev := fruit_blueberries m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all

theorem fruit_apples (m : FruitModel) : m.apples = 135 := by
  have hPrev := fruit_blueberries m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all

theorem fruit_solution (m : FruitModel) : m.totalFruits = 240 := by
  have hSub := fruit_subtotal m
  have hApples := fruit_apples m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all

end LemmaWeave.Problems.GSM8K.Sprint0929A15P3
