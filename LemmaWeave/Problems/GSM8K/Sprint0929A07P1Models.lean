import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0929A07P1

structure SeedsModel where
  sunflowerSeeds : ℕ
  dandelionSeeds : ℕ
  totalSeeds : ℕ
  percentage : ℕ
  hSunflower : sunflowerSeeds = 6 * 9
  hDandelion : dandelionSeeds = 8 * 12
  hTotal : totalSeeds = sunflowerSeeds + dandelionSeeds
  hPercent : percentage * totalSeeds = 100 * dandelionSeeds

theorem seeds_sunflower (m : SeedsModel) : m.sunflowerSeeds = 54 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all <;> omega

theorem seeds_dandelion (m : SeedsModel) : m.dandelionSeeds = 96 := by
  have hPrev := seeds_sunflower m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all <;> omega

theorem seeds_total (m : SeedsModel) : m.totalSeeds = 150 := by
  have hPrev := seeds_dandelion m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all <;> omega

theorem seeds_solution (m : SeedsModel) : m.percentage = 64 := by
  have hPrev := seeds_total m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all <;> omega

structure BooksModel where
  purchased : ℕ
  gifted : ℕ
  removed : ℕ
  finalBooks : ℕ
  hPurchased : purchased = 12 + 5 + 2
  hGifted : gifted = 1 + 4
  hRemoved : removed = 12 + 3
  hFinal : finalBooks + removed = 72 + purchased + gifted

theorem books_purchased (m : BooksModel) : m.purchased = 19 := by
  simpa using m.hPurchased

theorem books_gifted (m : BooksModel) : m.gifted = 5 := by
  simpa using m.hGifted

theorem books_removed (m : BooksModel) : m.removed = 15 := by
  simpa using m.hRemoved

theorem books_solution (m : BooksModel) : m.finalBooks = 81 := by
  have hBalance := m.hFinal
  rw [books_purchased m, books_gifted m, books_removed m] at hBalance
  omega

structure SandcastlesModel where
  markTowers : ℕ
  jeffCastles : ℕ
  jeffTowers : ℕ
  totalStructures : ℕ
  hMarkTowers : markTowers = 20 * 10
  hJeffCastles : jeffCastles = 3 * 20
  hJeffTowers : jeffTowers = jeffCastles * 5
  hTotal : totalStructures = 20 + markTowers + jeffCastles + jeffTowers

theorem castles_mark_towers (m : SandcastlesModel) : m.markTowers = 200 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all <;> omega

theorem castles_jeff_castles (m : SandcastlesModel) : m.jeffCastles = 60 := by
  have hPrev := castles_mark_towers m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all <;> omega

theorem castles_jeff_towers (m : SandcastlesModel) : m.jeffTowers = 300 := by
  have hPrev := castles_jeff_castles m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all <;> omega

theorem castles_solution (m : SandcastlesModel) : m.totalStructures = 580 := by
  have hPrev := castles_jeff_towers m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all <;> omega

structure LawnModel where
  highGrowth : ℕ
  lowGrowth : ℕ
  annualGrowth : ℕ
  averageGrowth : ℕ
  hHigh : highGrowth = 6 * 15
  hLow : lowGrowth = 6 * 3
  hAnnual : annualGrowth = highGrowth + lowGrowth
  hAverage : 12 * averageGrowth = annualGrowth

theorem lawn_high (m : LawnModel) : m.highGrowth = 90 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all <;> omega

theorem lawn_low (m : LawnModel) : m.lowGrowth = 18 := by
  have hPrev := lawn_high m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all <;> omega

theorem lawn_annual (m : LawnModel) : m.annualGrowth = 108 := by
  have hPrev := lawn_low m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all <;> omega

theorem lawn_solution (m : LawnModel) : m.averageGrowth = 9 := by
  have hPrev := lawn_annual m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  dsimp at *
  simp_all <;> omega

structure CardsModel where
  uma : ℕ
  ekon : ℕ
  kelsey : ℕ
  hEkon : ekon + 17 = uma
  hKelsey : kelsey = ekon + 43
  hTotal : uma + ekon + kelsey = 411

theorem cards_uma (m : CardsModel) : m.uma = 134 := by
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  dsimp at *
  simp_all <;> omega

theorem cards_ekon (m : CardsModel) : m.ekon = 117 := by
  have hPrev := cards_uma m
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  dsimp at *
  simp_all <;> omega

theorem cards_solution (m : CardsModel) : m.kelsey = 160 := by
  have hPrev := cards_ekon m
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  dsimp at *
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A07P1
