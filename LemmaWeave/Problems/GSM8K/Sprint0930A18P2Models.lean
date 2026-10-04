import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0930A18P2

structure DogsModel where
  samShepherds : ℕ
  samBulldogs : ℕ
  peterShepherds : ℕ
  peterBulldogs : ℕ
  peterTotal : ℕ
  hSamShepherds : samShepherds = 3
  hSamBulldogs : samBulldogs = 4
  hPeterShepherds : peterShepherds = 3 * samShepherds
  hPeterBulldogs : peterBulldogs = 2 * samBulldogs
  hTotal : peterTotal = peterShepherds + peterBulldogs

theorem dogs_shepherds (m : DogsModel) : m.peterShepherds = 9 := by
  omega
theorem dogs_bulldogs (m : DogsModel) : m.peterBulldogs = 8 := by
  omega
theorem dogs_total (m : DogsModel) : m.peterTotal = 17 := by
  have h1 := dogs_shepherds m
  have h2 := dogs_bulldogs m
  omega
structure PuzzlesModel where
  puzzleCount : ℕ
  piecesEach : ℕ
  totalPieces : ℕ
  ratePieces : ℕ
  rateMinutes : ℕ
  totalMinutes : ℕ
  hPuzzleCount : puzzleCount = 2
  hPiecesEach : piecesEach = 2000
  hTotalPieces : totalPieces = puzzleCount * piecesEach
  hRatePieces : ratePieces = 100
  hRateMinutes : rateMinutes = 10
  hTime : ratePieces * totalMinutes = totalPieces * rateMinutes

theorem puzzles_total_pieces (m : PuzzlesModel) : m.totalPieces = 4000 := by
  omega
theorem puzzles_minutes (m : PuzzlesModel) : m.totalMinutes = 400 := by
  have h := puzzles_total_pieces m
  omega
structure ChickensModel where
  coop : ℕ
  run : ℕ
  freeRange : ℕ
  hCoop : coop = 14
  hRun : run = 2 * coop
  hFreeRange : freeRange + 4 = 2 * run

theorem chickens_run (m : ChickensModel) : m.run = 28 := by
  omega
theorem chickens_free_range (m : ChickensModel) : m.freeRange = 52 := by
  have h := chickens_run m
  omega
structure LarryModel where
  lunch : ℕ
  brother : ℕ
  spent : ℕ
  current : ℕ
  initial : ℕ
  hLunch : lunch = 5
  hBrother : brother = 2
  hSpent : spent = lunch + brother
  hCurrent : current = 15
  hInitial : initial = current + spent

theorem larry_spent (m : LarryModel) : m.spent = 7 := by
  omega
theorem larry_initial (m : LarryModel) : m.initial = 22 := by
  have h := larry_spent m
  omega
structure MojaveModel where
  original : ℕ
  conventionalCurrent : ℕ
  conventionalFuture : ℕ
  literalCurrent : ℕ
  literalFuture : ℕ
  hOriginal : original = 4000
  hConventionalCurrent : conventionalCurrent = 3 * original
  hConventionalFuture : 100 * conventionalFuture = 140 * conventionalCurrent
  hLiteralCurrent : literalCurrent = original + 3 * original
  hLiteralFuture : 100 * literalFuture = 140 * literalCurrent

theorem mojave_conventional_current (m : MojaveModel) : m.conventionalCurrent = 12000 := by
  omega
theorem mojave_conventional_future (m : MojaveModel) : m.conventionalFuture = 16800 := by
  have h := mojave_conventional_current m
  omega
theorem mojave_literal_current (m : MojaveModel) : m.literalCurrent = 16000 := by
  omega
theorem mojave_literal_future (m : MojaveModel) : m.literalFuture = 22400 := by
  have h := mojave_literal_current m
  omega
theorem mojave_readings_differ (m : MojaveModel) :
    m.conventionalFuture ≠ m.literalFuture := by
  have h1 := mojave_conventional_future m
  have h2 := mojave_literal_future m
  omega

end LemmaWeave.Problems.GSM8K.Sprint0930A18P2
