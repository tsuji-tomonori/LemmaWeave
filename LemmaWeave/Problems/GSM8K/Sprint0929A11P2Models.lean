import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A11P2

structure SundaeModel where
  mondayCandies : ℕ
  tuesdayCandies : ℕ
  totalCandies : ℕ
  packs : ℕ
  hMonday : mondayCandies = 40 * 6
  hTuesday : tuesdayCandies = 20 * 10
  hTotal : totalCandies = mondayCandies + tuesdayCandies
  hPacks : packs * 40 = totalCandies

theorem sundae_monday (m : SundaeModel) : m.mondayCandies = 240 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all

theorem sundae_tuesday (m : SundaeModel) : m.tuesdayCandies = 200 := by
  have hPrev := sundae_monday m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all

theorem sundae_total (m : SundaeModel) : m.totalCandies = 440 := by
  have hPrev := sundae_tuesday m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all

theorem sundae_solution (m : SundaeModel) : m.packs = 11 := by
  have hPrev := sundae_total m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

structure PlayModel where
  seats : ℕ
  soldSeats : ℕ
  earnings : ℕ
  hSeats : seats = 20 * 10
  hSold : 4 * soldSeats = 3 * seats
  hEarnings : earnings = 10 * soldSeats

theorem play_seats (m : PlayModel) : m.seats = 200 := by
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  simp_all

theorem play_sold (m : PlayModel) : m.soldSeats = 150 := by
  have hPrev := play_seats m
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  simp_all <;> omega

theorem play_solution (m : PlayModel) : m.earnings = 1500 := by
  have hPrev := play_sold m
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  simp_all

structure SubstituteModel where
  afterHour : ℕ
  beforeLunchQuit : ℕ
  afterLunch : ℕ
  hAfterHour : 2 * afterHour = 60
  hQuit : 10 * beforeLunchQuit = 3 * afterHour
  hAfterLunch : afterLunch + beforeLunchQuit = afterHour

theorem substitute_after_hour (m : SubstituteModel) : m.afterHour = 30 := by
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  simp_all <;> omega

theorem substitute_quit (m : SubstituteModel) : m.beforeLunchQuit = 9 := by
  have hPrev := substitute_after_hour m
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  simp_all <;> omega

theorem substitute_solution (m : SubstituteModel) : m.afterLunch = 21 := by
  have hPrev := substitute_quit m
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  simp_all <;> omega

structure LaundryModel where
  dawnMinutes : ℕ
  andyMinutes : ℕ
  hDawn : dawnMinutes = 20
  hAndy : andyMinutes = 2 * dawnMinutes + 6

theorem laundry_double (m : LaundryModel) : 2 * m.dawnMinutes = 40 := by
  rcases m with ⟨a, b, h1, h2⟩
  simp_all

theorem laundry_solution (m : LaundryModel) : m.andyMinutes = 46 := by
  have hPrev := laundry_double m
  rcases m with ⟨a, b, h1, h2⟩
  simp_all

structure MuffinModel where
  paidCents : ℕ
  changeCents : ℕ
  spentCents : ℕ
  muffins : ℕ
  hPaid : paidCents = 2000
  hChange : changeCents = 1100
  hSpent : spentCents + changeCents = paidCents
  hMuffins : muffins * 75 = spentCents

theorem muffins_spent (m : MuffinModel) : m.spentCents = 900 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem muffins_solution (m : MuffinModel) : m.muffins = 12 := by
  have hPrev := muffins_spent m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A11P2
