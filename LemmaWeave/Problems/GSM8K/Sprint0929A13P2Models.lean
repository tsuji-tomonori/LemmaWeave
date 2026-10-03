import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0929A13P2

structure AgesModel where
  currentEmily : ℕ
  currentRachel : ℕ
  gap : ℕ
  targetEmily : ℕ
  targetRachel : ℕ
  hEmily : currentEmily = 20
  hRachel : currentRachel = 24
  hGap : currentEmily + gap = currentRachel
  hTargetGap : targetEmily + gap = targetRachel
  hHalf : 2 * targetEmily = targetRachel

theorem ages_gap (m : AgesModel) : m.gap = 4 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  simp_all <;> omega

theorem ages_solution (m : AgesModel) : m.targetRachel = 8 := by
  have hPrev := ages_gap m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  simp_all <;> omega

structure BooksModel where
  initial : ℕ
  donors : ℕ
  perDonor : ℕ
  donated : ℕ
  totalAfter : ℕ
  borrowed : ℕ
  remaining : ℕ
  hInitial : initial = 300
  hDonors : donors = 10
  hPerDonor : perDonor = 5
  hDonated : donated = donors * perDonor
  hAfter : totalAfter = initial + donated
  hBorrowed : borrowed = 140
  hRemaining : remaining + borrowed = totalAfter

theorem books_donated (m : BooksModel) : m.donated = 50 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  dsimp at *
  simp_all

theorem books_total (m : BooksModel) : m.totalAfter = 350 := by
  have hPrev := books_donated m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  dsimp at *
  simp_all

theorem books_solution (m : BooksModel) : m.remaining = 210 := by
  have hPrev := books_total m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  dsimp at *
  simp_all <;> omega

structure WeightLossModel where
  barbiMonthlyHalfKg : ℕ
  months : ℕ
  barbiTotalHalfKg : ℕ
  lucaYearlyHalfKg : ℕ
  years : ℕ
  lucaTotalHalfKg : ℕ
  differenceHalfKg : ℕ
  differenceKg : ℕ
  hBarbiRate : barbiMonthlyHalfKg = 3
  hMonths : months = 12
  hBarbiTotal : barbiTotalHalfKg = barbiMonthlyHalfKg * months
  hLucaRate : lucaYearlyHalfKg = 18
  hYears : years = 11
  hLucaTotal : lucaTotalHalfKg = lucaYearlyHalfKg * years
  hDifference : differenceHalfKg + barbiTotalHalfKg = lucaTotalHalfKg
  hKg : 2 * differenceKg = differenceHalfKg

theorem weight_barbi (m : WeightLossModel) : m.barbiTotalHalfKg = 36 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  simp_all

theorem weight_luca (m : WeightLossModel) : m.lucaTotalHalfKg = 198 := by
  have hPrev := weight_barbi m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  simp_all

theorem weight_difference_half (m : WeightLossModel) : m.differenceHalfKg = 162 := by
  have hPrev := weight_luca m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  simp_all <;> omega

theorem weight_solution (m : WeightLossModel) : m.differenceKg = 81 := by
  have hPrev := weight_difference_half m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  simp_all <;> omega

structure JeansModel where
  finalCents : ℕ
  wedDiscountCents : ℕ
  afterSummerCents : ℕ
  originalCents : ℕ
  originalDollars : ℕ
  hFinal : finalCents = 1450
  hWedDiscount : wedDiscountCents = 1000
  hAfterSummer : afterSummerCents = finalCents + wedDiscountCents
  hHalfPrice : originalCents = 2 * afterSummerCents
  hDollars : originalCents = 100 * originalDollars

theorem jeans_after_summer (m : JeansModel) : m.afterSummerCents = 2450 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  simp_all

theorem jeans_original_cents (m : JeansModel) : m.originalCents = 4900 := by
  have hPrev := jeans_after_summer m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  simp_all

theorem jeans_solution (m : JeansModel) : m.originalDollars = 49 := by
  have hPrev := jeans_original_cents m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  simp_all <;> omega

structure FishModel where
  initial : ℕ
  years : ℕ
  addedPerYear : ℕ
  diedPerYear : ℕ
  added : ℕ
  died : ℕ
  final : ℕ
  hInitial : initial = 2
  hYears : years = 5
  hAddedRate : addedPerYear = 2
  hDiedRate : diedPerYear = 1
  hAdded : added = addedPerYear * years
  hDied : died = diedPerYear * years
  hFinal : final + died = initial + added

theorem fish_changes (m : FishModel) : m.added = 10 ∧ m.died = 5 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  dsimp at *
  simp_all

theorem fish_solution (m : FishModel) : m.final = 7 := by
  have hPrev := fish_changes m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  dsimp at *
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A13P2
