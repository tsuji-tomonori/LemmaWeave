import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0929A11P1

structure TripModel where
  firstDay : ℕ
  secondDay : ℕ
  thirdDay : ℕ
  total : ℕ
  hFirst : firstDay = 125
  hSecond : secondDay = 223
  hTotal : total = 493
  hSum : firstDay + secondDay + thirdDay = total

theorem trip_first_two (m : TripModel) : m.firstDay + m.secondDay = 348 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all

theorem trip_solution (m : TripModel) : m.thirdDay = 145 := by
  have hPrev := trip_first_two m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all <;> omega

structure DriveModel where
  firstLeg : ℕ
  secondLeg : ℕ
  totalDistance : ℕ
  hours : ℕ
  minSpeed : ℕ
  hFirst : firstLeg = 420
  hSecond : secondLeg = 273
  hTotal : totalDistance = firstLeg + secondLeg
  hHours : hours = 11
  hSpeed : minSpeed * hours = totalDistance

theorem drive_distance (m : DriveModel) : m.totalDistance = 693 := by
  rcases m with ⟨a, b, c, d, e, h1, h2, h3, h4, h5⟩
  dsimp at *
  simp_all

theorem drive_solution (m : DriveModel) : m.minSpeed = 63 := by
  have hPrev := drive_distance m
  rcases m with ⟨a, b, c, d, e, h1, h2, h3, h4, h5⟩
  dsimp at *
  simp_all <;> omega

structure ButtonsModel where
  starting : ℕ
  gifted : ℕ
  beforeGiving : ℕ
  finalButtons : ℕ
  hStarting : starting = 14
  hGifted : gifted = 3 * starting
  hBefore : beforeGiving = starting + gifted
  hHalf : 2 * finalButtons = beforeGiving

theorem buttons_gifted (m : ButtonsModel) : m.gifted = 42 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all

theorem buttons_before (m : ButtonsModel) : m.beforeGiving = 56 := by
  have hPrev := buttons_gifted m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all

theorem buttons_solution (m : ButtonsModel) : m.finalButtons = 28 := by
  have hPrev := buttons_before m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all <;> omega

structure LasagnaModel where
  beef : ℕ
  requiredNoodles : ℕ
  existingNoodles : ℕ
  neededNoodles : ℕ
  packageSize : ℕ
  packages : ℕ
  hBeef : beef = 10
  hRequired : requiredNoodles = 2 * beef
  hExisting : existingNoodles = 4
  hNeeded : neededNoodles + existingNoodles = requiredNoodles
  hSize : packageSize = 2
  hPackages : packages * packageSize = neededNoodles

theorem lasagna_required (m : LasagnaModel) : m.requiredNoodles = 20 := by
  rcases m with ⟨a, b, c, d, e, f, h1, h2, h3, h4, h5, h6⟩
  dsimp at *
  simp_all

theorem lasagna_needed (m : LasagnaModel) : m.neededNoodles = 16 := by
  have hPrev := lasagna_required m
  rcases m with ⟨a, b, c, d, e, f, h1, h2, h3, h4, h5, h6⟩
  dsimp at *
  simp_all <;> omega

theorem lasagna_solution (m : LasagnaModel) : m.packages = 8 := by
  have hPrev := lasagna_needed m
  rcases m with ⟨a, b, c, d, e, f, h1, h2, h3, h4, h5, h6⟩
  dsimp at *
  simp_all <;> omega

structure FunfairModel where
  total : ℕ
  fourthBought : ℕ
  afterFourth : ℕ
  fifthBought : ℕ
  afterFifth : ℕ
  unsold : ℕ
  hTotal : total = 30 * 100
  hFourthPercent : 100 * fourthBought = 30 * total
  hAfterFourth : afterFourth + fourthBought = total
  hFifthPercent : 2 * fifthBought = afterFourth
  hAfterFifth : afterFifth + fifthBought = afterFourth
  hSixth : unsold + 100 = afterFifth

theorem funfair_total (m : FunfairModel) : m.total = 3000 := by
  rcases m with ⟨a, b, c, d, e, f, h1, h2, h3, h4, h5, h6⟩
  dsimp at *
  simp_all

theorem funfair_after_fourth (m : FunfairModel) : m.afterFourth = 2100 := by
  have hPrev := funfair_total m
  rcases m with ⟨a, b, c, d, e, f, h1, h2, h3, h4, h5, h6⟩
  dsimp at *
  simp_all <;> omega

theorem funfair_after_fifth (m : FunfairModel) : m.afterFifth = 1050 := by
  have hPrev := funfair_after_fourth m
  rcases m with ⟨a, b, c, d, e, f, h1, h2, h3, h4, h5, h6⟩
  dsimp at *
  simp_all <;> omega

theorem funfair_solution (m : FunfairModel) : m.unsold = 950 := by
  have hPrev := funfair_after_fifth m
  rcases m with ⟨a, b, c, d, e, f, h1, h2, h3, h4, h5, h6⟩
  dsimp at *
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A11P1
