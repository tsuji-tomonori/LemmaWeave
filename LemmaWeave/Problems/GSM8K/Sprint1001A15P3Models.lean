import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A15P3

structure PillowModel where
  statedPounds : ℕ
  fewerPounds : ℕ
  poundsPerPillow : ℕ
  poundsPerTon : ℕ
  tons : ℕ
  totalPounds : ℕ
  pillows : ℕ
  hStated : statedPounds = 5
  hFewer : fewerPounds = 3
  hPerPillow : statedPounds = fewerPounds + poundsPerPillow
  hPoundsPerTon : poundsPerTon = 2000
  hTons : tons = 3
  hTotal : totalPounds = poundsPerTon * tons
  hPillows : totalPounds = poundsPerPillow * pillows

theorem foam_per_pillow (m : PillowModel) : m.poundsPerPillow = 2 := by
  cases m <;> simp_all <;> omega

theorem foam_total_pounds (m : PillowModel) : m.totalPounds = 6000 := by
  cases m <;> simp_all <;> omega

theorem pillow_count (m : PillowModel) : m.pillows = 3000 := by
  have h1 := foam_per_pillow m
  have h2 := foam_total_pounds m
  cases m <;> simp_all <;> omega

structure HelicopterModel where
  hoursPerDay : ℕ
  days : ℕ
  totalHours : ℕ
  hourlyRate : ℕ
  paid : ℕ
  hHours : hoursPerDay = 2
  hDays : days = 3
  hTotal : totalHours = hoursPerDay * days
  hRate : hourlyRate = 75
  hPaid : paid = totalHours * hourlyRate

theorem helicopter_hours (m : HelicopterModel) : m.totalHours = 6 := by
  cases m <;> simp_all <;> omega

theorem helicopter_cost (m : HelicopterModel) : m.paid = 450 := by
  have h := helicopter_hours m
  cases m <;> simp_all <;> omega

structure EggModel where
  dozens : ℕ
  eggsPerDozen : ℕ
  total : ℕ
  crepes : ℕ
  afterCrepes : ℕ
  cupcakes : ℕ
  breakfast : ℕ
  hDozens : dozens = 3
  hPerDozen : eggsPerDozen = 12
  hTotal : total = dozens * eggsPerDozen
  hCrepes : crepes * 4 = total
  hAfterCrepes : total = crepes + afterCrepes
  hCupcakes : cupcakes * 3 = afterCrepes * 2
  hBreakfast : afterCrepes = cupcakes + breakfast

theorem total_eggs (m : EggModel) : m.total = 36 := by
  cases m <;> simp_all <;> omega

theorem crepe_eggs (m : EggModel) : m.crepes = 9 := by
  have h := total_eggs m
  cases m <;> simp_all <;> omega

theorem cupcake_eggs (m : EggModel) : m.cupcakes = 18 := by
  have h1 := total_eggs m
  have h2 := crepe_eggs m
  cases m <;> simp_all <;> omega

theorem breakfast_eggs (m : EggModel) : m.breakfast = 9 := by
  have h := cupcake_eggs m
  cases m <;> simp_all <;> omega

structure WeedModel where
  dollars : ℕ
  centsPerDollar : ℕ
  targetCents : ℕ
  centsPerWeed : ℕ
  weedsPerHour : ℕ
  minutesPerHour : ℕ
  secondsPerMinute : ℕ
  secondsPerHour : ℕ
  secondsPerWeed : ℕ
  hDollars : dollars = 10
  hCentsPerDollar : centsPerDollar = 100
  hTarget : targetCents = dollars * centsPerDollar
  hCentsPerWeed : centsPerWeed = 5
  hWeeds : targetCents = centsPerWeed * weedsPerHour
  hMinutes : minutesPerHour = 60
  hSeconds : secondsPerMinute = 60
  hHour : secondsPerHour = minutesPerHour * secondsPerMinute
  hPerWeed : secondsPerHour = weedsPerHour * secondsPerWeed

theorem target_cents (m : WeedModel) : m.targetCents = 1000 := by
  cases m <;> simp_all <;> omega

theorem weeds_per_hour (m : WeedModel) : m.weedsPerHour = 200 := by
  have h := target_cents m
  cases m <;> simp_all <;> omega

theorem seconds_per_hour (m : WeedModel) : m.secondsPerHour = 3600 := by
  cases m <;> simp_all <;> omega

theorem seconds_per_weed (m : WeedModel) : m.secondsPerWeed = 18 := by
  have h1 := weeds_per_hour m
  have h2 := seconds_per_hour m
  cases m <;> simp_all <;> omega

structure PolishModel where
  kim : ℕ
  heidiExtra : ℕ
  heidi : ℕ
  karenFewer : ℕ
  karen : ℕ
  together : ℕ
  hKim : kim = 12
  hHeidiExtra : heidiExtra = 5
  hHeidi : heidi = kim + heidiExtra
  hKarenFewer : karenFewer = 4
  hKaren : kim = karen + karenFewer
  hTogether : together = heidi + karen

theorem heidi_polishes (m : PolishModel) : m.heidi = 17 := by
  cases m <;> simp_all <;> omega

theorem karen_polishes (m : PolishModel) : m.karen = 8 := by
  cases m <;> simp_all <;> omega

theorem polish_total (m : PolishModel) : m.together = 25 := by
  have h1 := heidi_polishes m
  have h2 := karen_polishes m
  cases m <;> simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A15P3
