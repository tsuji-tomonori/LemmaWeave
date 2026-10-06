import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A16P1

structure HannahModel where
  brothers : ℕ
  brotherAge : ℕ
  ageSum : ℕ
  multiplier : ℕ
  hannahAge : ℕ
  hBrothers : brothers = 3
  hBrotherAge : brotherAge = 8
  hAgeSum : ageSum = brothers * brotherAge
  hMultiplier : multiplier = 2
  hHannah : hannahAge = multiplier * ageSum

theorem brothers_age_sum (m : HannahModel) : m.ageSum = 24 := by
  cases m <;> simp_all <;> omega

theorem hannah_age (m : HannahModel) : m.hannahAge = 48 := by
  have h := brothers_age_sum m
  cases m <;> simp_all <;> omega

structure VolunteerModel where
  studentsPerClass : ℕ
  classes : ℕ
  studentVolunteers : ℕ
  teachers : ℕ
  current : ℕ
  target : ℕ
  missing : ℕ
  hPerClass : studentsPerClass = 5
  hClasses : classes = 6
  hStudents : studentVolunteers = studentsPerClass * classes
  hTeachers : teachers = 13
  hCurrent : current = studentVolunteers + teachers
  hTarget : target = 50
  hMissing : target = current + missing

theorem student_volunteers (m : VolunteerModel) : m.studentVolunteers = 30 := by
  cases m <;> simp_all <;> omega

theorem current_volunteers (m : VolunteerModel) : m.current = 43 := by
  have h := student_volunteers m
  cases m <;> simp_all <;> omega

theorem volunteers_needed (m : VolunteerModel) : m.missing = 7 := by
  have h := current_volunteers m
  cases m <;> simp_all <;> omega

structure SmoreModel where
  people : ℕ
  each : ℕ
  total : ℕ
  batchSize : ℕ
  dollarsPerBatch : ℕ
  batches : ℕ
  cost : ℕ
  hPeople : people = 8
  hEach : each = 3
  hTotal : total = people * each
  hBatchSize : batchSize = 4
  hBatches : total = batchSize * batches
  hDollars : dollarsPerBatch = 3
  hCost : cost = dollarsPerBatch * batches

theorem total_smores (m : SmoreModel) : m.total = 24 := by
  cases m <;> simp_all <;> omega

theorem supply_batches (m : SmoreModel) : m.batches = 6 := by
  have h := total_smores m
  cases m <;> simp_all <;> omega

theorem smore_cost (m : SmoreModel) : m.cost = 18 := by
  have h := supply_batches m
  cases m <;> simp_all <;> omega

structure SharkModel where
  hours : ℕ
  minutesPerHour : ℕ
  totalMinutes : ℕ
  minutesPerShark : ℕ
  photos : ℕ
  dollarsPerPhoto : ℕ
  revenue : ℕ
  fuelPerHour : ℕ
  fuelCost : ℕ
  profit : ℕ
  hHours : hours = 5
  hMinutesPerHour : minutesPerHour = 60
  hTotalMinutes : totalMinutes = hours * minutesPerHour
  hMinutesPerShark : minutesPerShark = 10
  hPhotos : totalMinutes = minutesPerShark * photos
  hDollarsPerPhoto : dollarsPerPhoto = 15
  hRevenue : revenue = photos * dollarsPerPhoto
  hFuelPerHour : fuelPerHour = 50
  hFuel : fuelCost = hours * fuelPerHour
  hProfit : revenue = fuelCost + profit

theorem hunt_minutes (m : SharkModel) : m.totalMinutes = 300 := by
  cases m <;> simp_all <;> omega

theorem photo_count (m : SharkModel) : m.photos = 30 := by
  have h := hunt_minutes m
  cases m <;> simp_all <;> omega

theorem photo_revenue (m : SharkModel) : m.revenue = 450 := by
  have h := photo_count m
  cases m <;> simp_all <;> omega

theorem fuel_cost (m : SharkModel) : m.fuelCost = 250 := by
  cases m <;> simp_all <;> omega

theorem shark_profit (m : SharkModel) : m.profit = 200 := by
  have h1 := photo_revenue m
  have h2 := fuel_cost m
  cases m <;> simp_all <;> omega

structure CupcakeModel where
  batches : ℕ
  bakePerBatch : ℕ
  icePerBatch : ℕ
  bakeTotal : ℕ
  iceTotal : ℕ
  totalMinutes : ℕ
  hBatches : batches = 4
  hBakePer : bakePerBatch = 20
  hIcePer : icePerBatch = 30
  hBake : bakeTotal = batches * bakePerBatch
  hIce : iceTotal = batches * icePerBatch
  hTotal : totalMinutes = bakeTotal + iceTotal

theorem bake_minutes (m : CupcakeModel) : m.bakeTotal = 80 := by
  cases m <;> simp_all <;> omega

theorem icing_minutes (m : CupcakeModel) : m.iceTotal = 120 := by
  cases m <;> simp_all <;> omega

theorem cupcake_minutes (m : CupcakeModel) : m.totalMinutes = 200 := by
  have h1 := bake_minutes m
  have h2 := icing_minutes m
  cases m <;> simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A16P1
