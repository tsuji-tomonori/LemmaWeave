import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1002A01P1

structure MuseumModel where
  students : ℕ
  groups : ℕ
  minutesPerStudent : ℕ
  perGroup : ℕ
  totalMinutes : ℕ
  hStudents : students = 18
  hGroups : groups = 3
  hSplit : students = groups * perGroup
  hMinutes : minutesPerStudent = 4
  hTotal : totalMinutes = perGroup * minutesPerStudent

theorem museum_group_students (m : MuseumModel) : m.perGroup = 6 := by
  have hs := m.hSplit
  rw [m.hStudents, m.hGroups] at hs
  omega
theorem museum_group_minutes (m : MuseumModel) : m.totalMinutes = 24 := by
  norm_num [m.hTotal, museum_group_students m, m.hMinutes]

structure VinylModel where
  capacity : ℕ
  occupied : ℕ
  ridges : ℕ
  hCapacity : capacity = 4 * 3 * 20
  hOccupied : 10 * occupied = 6 * capacity
  hRidges : ridges = 60 * occupied

theorem vinyl_capacity (m : VinylModel) : m.capacity = 240 := by cases m <;> dsimp at * <;> omega
theorem vinyl_occupied_records (m : VinylModel) : m.occupied = 144 := by
  have h := vinyl_capacity m
  cases m <;> dsimp at * <;> omega
theorem vinyl_total_ridges (m : VinylModel) : m.ridges = 8640 := by
  have h := vinyl_occupied_records m
  cases m <;> dsimp at * <;> omega

structure PoolWaterModel where
  drainRate : ℕ
  hoseRate : ℕ
  drained : ℕ
  added : ℕ
  remaining : ℕ
  hDrainRate : 4 * drainRate = 120
  hHoseRate : 6 * hoseRate = 120
  hDrained : drained = 3 * drainRate
  hAdded : added = 3 * hoseRate
  hRemaining : 120 + added = drained + remaining

theorem pool_drain_rate (m : PoolWaterModel) : m.drainRate = 30 := by cases m <;> dsimp at * <;> omega
theorem pool_hose_rate (m : PoolWaterModel) : m.hoseRate = 20 := by cases m <;> dsimp at * <;> omega
theorem pool_drained_three_hours (m : PoolWaterModel) : m.drained = 90 := by
  have h := pool_drain_rate m
  cases m <;> dsimp at * <;> omega
theorem pool_added_three_hours (m : PoolWaterModel) : m.added = 60 := by
  have h := pool_hose_rate m
  cases m <;> dsimp at * <;> omega
theorem pool_water_remaining (m : PoolWaterModel) : m.remaining = 90 := by
  have h1 := pool_drained_three_hours m
  have h2 := pool_added_three_hours m
  cases m <;> dsimp at * <;> omega

structure PufferfishModel where
  swordfish : ℕ
  pufferfish : ℕ
  hRatio : swordfish = 5 * pufferfish
  hTotal : swordfish + pufferfish = 90

theorem pufferfish_count (m : PufferfishModel) : m.pufferfish = 15 := by cases m <;> dsimp at * <;> omega

structure PensModel where
  week1 : ℕ
  week2 : ℕ
  week3 : ℕ
  week4 : ℕ
  jane : ℕ
  difference : ℕ
  hWeek1 : week1 = 4
  hWeek2 : week2 = 2 * week1
  hWeek3 : week3 = 2 * week2
  hWeek4 : week4 = 2 * week3
  hJane : jane = 16
  hDifference : week4 = jane + difference

theorem pens_week2 (m : PensModel) : m.week2 = 8 := by cases m <;> dsimp at * <;> omega
theorem pens_week3 (m : PensModel) : m.week3 = 16 := by
  have h := pens_week2 m
  cases m <;> dsimp at * <;> omega
theorem pens_week4 (m : PensModel) : m.week4 = 32 := by
  have h := pens_week3 m
  cases m <;> dsimp at * <;> omega
theorem pens_difference (m : PensModel) : m.difference = 16 := by
  have h := pens_week4 m
  cases m <;> dsimp at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1002A01P1
