import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A17P2

structure TomatoModel where
  rows plantsPerRow plants yieldPerPlant pieces : ℕ
  hRows : rows = 30
  hPlantsPerRow : plantsPerRow = 10
  hPlants : plants = rows * plantsPerRow
  hYield : yieldPerPlant = 20
  hPieces : pieces = plants * yieldPerPlant

theorem tomato_plants (m : TomatoModel) : m.plants = 300 := by
  cases m <;> omega

theorem tomato_pieces (m : TomatoModel) : m.pieces = 6000 := by
  have h := tomato_plants m
  cases m <;> omega

structure ArenaSumModel where
  emma multiplier fernando summed : ℕ
  hEmma : emma = 20
  hMultiplier : multiplier = 2
  hFernando : fernando = multiplier * emma
  hSummed : summed = emma + fernando

theorem fernando_arena_time (m : ArenaSumModel) : m.fernando = 40 := by
  cases m <;> omega

theorem arena_summed_time (m : ArenaSumModel) : m.summed = 60 := by
  have h := fernando_arena_time m
  cases m <;> omega

structure ArenaSimultaneousModel where
  emma fernando elapsed : ℕ
  hEmma : emma = 20
  hFernando : fernando = 40
  hElapsed : elapsed = fernando

theorem arena_simultaneous_time (m : ArenaSimultaneousModel) : m.elapsed = 40 := by
  cases m <;> omega

theorem arena_readings_differ (a : ArenaSumModel) (b : ArenaSimultaneousModel) :
    a.summed ≠ b.elapsed := by
  have h1 := arena_summed_time a
  have h2 := arena_simultaneous_time b
  omega

structure PartyModel where
  harry multiplier total friendsCount friendsTotal each : ℕ
  hHarry : harry = 30
  hMultiplier : multiplier = 3
  hTotal : total = multiplier * harry
  hFriendsCount : friendsCount = 3
  hFriendsTotal : total = harry + friendsTotal
  hEach : friendsTotal = friendsCount * each

theorem party_total (m : PartyModel) : m.total = 90 := by
  cases m <;> omega

theorem friends_contribution_total (m : PartyModel) : m.friendsTotal = 60 := by
  have h := party_total m
  cases m <;> omega

theorem friend_contribution (m : PartyModel) : m.each = 20 := by
  have h := friends_contribution_total m
  cases m <;> omega

structure AgeModel where
  years monthsPerYear ageAtTen monthsUntil currentIsabella multiplier antonio : ℕ
  hYears : years = 10
  hMonthsPerYear : monthsPerYear = 12
  hAgeAtTen : ageAtTen = years * monthsPerYear
  hUntil : monthsUntil = 18
  hCurrent : ageAtTen = currentIsabella + monthsUntil
  hMultiplier : multiplier = 2
  hTwice : currentIsabella = multiplier * antonio

theorem isabella_ten_months (m : AgeModel) : m.ageAtTen = 120 := by
  cases m <;> omega

theorem isabella_current_months (m : AgeModel) : m.currentIsabella = 102 := by
  have h := isabella_ten_months m
  cases m <;> omega

theorem antonio_months (m : AgeModel) : m.antonio = 51 := by
  have h := isabella_current_months m
  cases m <;> omega

structure SpeedModel where
  miles minutes minutesPerHour speed : ℕ
  hMiles : miles = 12
  hMinutes : minutes = 90
  hMinutesPerHour : minutesPerHour = 60
  hSpeed : miles * minutesPerHour = minutes * speed

theorem average_speed (m : SpeedModel) : m.speed = 8 := by
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A17P2
