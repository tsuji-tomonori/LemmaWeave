import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0929A07P3

structure BooksaleModel where
  highPriceBooks : ℕ
  lowPriceBooks : ℕ
  revenueCents : ℕ
  hHigh : 5 * highPriceBooks = 2 * 10
  hLow : lowPriceBooks + highPriceBooks = 10
  hRevenue : revenueCents = 250 * highPriceBooks + 200 * lowPriceBooks

theorem booksale_high (m : BooksaleModel) : m.highPriceBooks = 4 := by
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  dsimp at *
  simp_all <;> omega

theorem booksale_low (m : BooksaleModel) : m.lowPriceBooks = 6 := by
  have hPrev := booksale_high m
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  dsimp at *
  simp_all <;> omega

theorem booksale_solution (m : BooksaleModel) : m.revenueCents = 2200 := by
  have hPrev := booksale_low m
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  dsimp at *
  simp_all <;> omega

structure VisitorsModel where
  ill : ℕ
  notIll : ℕ
  hIll : 100 * ill = 40 * 500
  hPartition : ill + notIll = 500

theorem visitors_ill (m : VisitorsModel) : m.ill = 200 := by
  rcases m with ⟨a, b, h1, h2⟩
  dsimp at *
  simp_all <;> omega

theorem visitors_solution (m : VisitorsModel) : m.notIll = 300 := by
  have hPrev := visitors_ill m
  rcases m with ⟨a, b, h1, h2⟩
  dsimp at *
  simp_all <;> omega

structure SpaceshipModel where
  travelHours : ℕ
  speed : ℕ
  hHours : travelHours + 8 = 2 * 24
  hSpeed : speed * travelHours = 4000

theorem spaceship_hours (m : SpaceshipModel) : m.travelHours = 40 := by
  rcases m with ⟨a, b, h1, h2⟩
  dsimp at *
  simp_all <;> omega

theorem spaceship_solution (m : SpaceshipModel) : m.speed = 100 := by
  have hPrev := spaceship_hours m
  rcases m with ⟨a, b, h1, h2⟩
  dsimp at *
  simp_all <;> omega

structure CurrentModel where
  runningCurrent : ℕ
  startingCurrent : ℕ
  hRunning : runningCurrent = 3 * 40
  hStarting : startingCurrent = 2 * runningCurrent

theorem current_running (m : CurrentModel) : m.runningCurrent = 120 := by
  rcases m with ⟨a, b, h1, h2⟩
  dsimp at *
  simp_all <;> omega

theorem current_solution (m : CurrentModel) : m.startingCurrent = 240 := by
  have hPrev := current_running m
  rcases m with ⟨a, b, h1, h2⟩
  dsimp at *
  simp_all <;> omega

structure AgesModel where
  rommel : ℕ
  jenny : ℕ
  difference : ℕ
  hRommel : rommel = 3 * 5
  hJenny : jenny = rommel + 2
  hDifference : difference + 5 = jenny

theorem ages_rommel (m : AgesModel) : m.rommel = 15 := by
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  dsimp at *
  simp_all <;> omega

theorem ages_jenny (m : AgesModel) : m.jenny = 17 := by
  have hPrev := ages_rommel m
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  dsimp at *
  simp_all <;> omega

theorem ages_solution (m : AgesModel) : m.difference = 12 := by
  have hPrev := ages_jenny m
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  dsimp at *
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A07P3
