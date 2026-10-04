import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A17P3

structure PlateModel where
  plates : ℕ
  plateCents : ℕ
  plateCost : ℕ
  totalCents : ℕ
  spoonCents : ℕ
  spoonCost : ℕ
  spoons : ℕ
  hPlates : plates = 9
  hPlateCents : plateCents = 200
  hPlateCost : plateCost = plates * plateCents
  hTotal : totalCents = 2400
  hSpoonCents : spoonCents = 150
  hMoney : totalCents = plateCost + spoonCost
  hSpoons : spoonCost = spoonCents * spoons

theorem plate_cost (m : PlateModel) : m.plateCost = 1800 := by
  omega
theorem spoon_cost (m : PlateModel) : m.spoonCost = 600 := by
  have h := plate_cost m
  omega
theorem spoon_count (m : PlateModel) : m.spoons = 4 := by
  have h := spoon_cost m
  omega
structure CricketCombinedModel where
  morning : ℕ
  multiplier : ℕ
  laterCombined : ℕ
  total : ℕ
  hMorning : morning = 5
  hMultiplier : multiplier = 3
  hLater : laterCombined = multiplier * morning
  hTotal : total = morning + laterCombined

theorem later_combined_crickets (m : CricketCombinedModel) : m.laterCombined = 15 := by
  omega
theorem combined_reading_crickets (m : CricketCombinedModel) : m.total = 20 := by
  have h := later_combined_crickets m
  omega
structure CricketEachModel where
  morning : ℕ
  afternoon : ℕ
  evening : ℕ
  total : ℕ
  hMorning : morning = 5
  hAfternoon : afternoon = 15
  hEvening : evening = 15
  hTotal : total = morning + afternoon + evening

theorem each_period_crickets (m : CricketEachModel) : m.total = 35 := by
  omega
theorem cricket_readings_differ (a : CricketCombinedModel) (b : CricketEachModel) :
    a.total ≠ b.total := by
  have h1 := combined_reading_crickets a
  have h2 := each_period_crickets b
  omega

structure WalkModel where
  miles : ℕ
  alonePerMile : ℕ
  brotherPerMile : ℕ
  aloneTotal : ℕ
  brotherTotal : ℕ
  extra : ℕ
  hMiles : miles = 20
  hAlonePer : alonePerMile = 9
  hBrotherPer : brotherPerMile = 12
  hAloneTotal : aloneTotal = miles * alonePerMile
  hBrotherTotal : brotherTotal = miles * brotherPerMile
  hExtra : brotherTotal = aloneTotal + extra

theorem alone_walk_time (m : WalkModel) : m.aloneTotal = 180 := by
  omega
theorem brother_walk_time (m : WalkModel) : m.brotherTotal = 240 := by
  omega
theorem extra_walk_minutes (m : WalkModel) : m.extra = 60 := by
  have h1 := alone_walk_time m
  have h2 := brother_walk_time m
  omega
structure WallModel where
  original : ℕ
  added : ℕ
  courses : ℕ
  bricksPerCourse : ℕ
  fullTotal : ℕ
  divisor : ℕ
  removed : ℕ
  remaining : ℕ
  hOriginal : original = 3
  hAdded : added = 2
  hCourses : courses = original + added
  hPerCourse : bricksPerCourse = 400
  hFull : fullTotal = courses * bricksPerCourse
  hDivisor : divisor = 2
  hRemoved : bricksPerCourse = divisor * removed
  hRemaining : fullTotal = removed + remaining

theorem wall_courses (m : WallModel) : m.courses = 5 := by
  omega
theorem wall_full_bricks (m : WallModel) : m.fullTotal = 2000 := by
  have h := wall_courses m
  omega
theorem wall_removed_bricks (m : WallModel) : m.removed = 200 := by
  omega
theorem wall_remaining_bricks (m : WallModel) : m.remaining = 1800 := by
  have h1 := wall_full_bricks m
  have h2 := wall_removed_bricks m
  omega
structure PreferenceModel where
  students : ℕ
  dogGames : ℕ
  dogMovies : ℕ
  dogs : ℕ
  hStudents : students = 30
  hDogGames : students = 2 * dogGames
  hDogMovies : students = 10 * dogMovies
  hDogs : dogs = dogGames + dogMovies

theorem dog_game_students (m : PreferenceModel) : m.dogGames = 15 := by
  omega
theorem dog_movie_students (m : PreferenceModel) : m.dogMovies = 3 := by
  omega
theorem dog_students (m : PreferenceModel) : m.dogs = 18 := by
  have h1 := dog_game_students m
  have h2 := dog_movie_students m
  omega
end LemmaWeave.Problems.GSM8K.Sprint1001A17P3
