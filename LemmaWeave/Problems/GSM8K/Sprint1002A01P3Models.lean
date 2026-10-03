import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1002A01P3

structure BooksModel where
  novel : ℕ
  science : ℕ
  hNovel : 2 * novel = 300
  hScience : science = 4 * novel

theorem novel_pages (m : BooksModel) : m.novel = 150 := by cases m <;> dsimp at * <;> omega
theorem science_pages (m : BooksModel) : m.science = 600 := by
  have h := novel_pages m
  cases m <;> dsimp at * <;> omega

structure StampsModel where
  cj : ℕ
  kj : ℕ
  aj : ℕ
  hKJ : 2 * kj = aj
  hCJ : cj = 2 * kj + 5
  hTotal : cj + kj + aj = 930

theorem kj_stamps (m : StampsModel) : m.kj = 185 := by cases m <;> dsimp at * <;> omega
theorem cj_stamps (m : StampsModel) : m.cj = 375 := by
  have h := kj_stamps m
  cases m <;> dsimp at * <;> omega
theorem aj_stamps (m : StampsModel) : m.aj = 370 := by
  have ht := m.hTotal
  rw [cj_stamps m, kj_stamps m] at ht
  omega

structure FruitModel where
  blue : ℕ
  red : ℕ
  hBlue : blue = 12 + 4
  hRed : 2 * red = blue

theorem blue_fruits (m : FruitModel) : m.blue = 16 := by cases m <;> dsimp at * <;> omega
theorem red_fruits (m : FruitModel) : m.red = 8 := by
  have h := blue_fruits m
  cases m <;> dsimp at * <;> omega

structure CostPercentModel where
  part : ℕ
  total : ℕ
  percent : ℕ
  hPart : part = 50 + 150
  hTotal : total = part + 200
  hPercentScale : 4 * percent = 100 * 2

theorem ham_bread_cost (m : CostPercentModel) : m.part = 200 := by cases m <;> dsimp at * <;> omega
theorem purchase_total_cost (m : CostPercentModel) : m.total = 400 := by
  have h := ham_bread_cost m
  cases m <;> dsimp at * <;> omega
theorem ham_bread_half_total (m : CostPercentModel) : 2 * m.part = m.total := by
  have h1 := ham_bread_cost m
  have h2 := purchase_total_cost m
  omega
theorem ham_bread_percent (m : CostPercentModel) : m.percent = 50 := by
  have h := ham_bread_half_total m
  cases m <;> dsimp at * <;> omega

structure PatioModel where
  width : ℕ
  length : ℕ
  perimeter : ℕ
  hLength : length = 4 * width
  hPerimeter : perimeter = 2 * width + 2 * length
  hHundred : perimeter = 100

theorem patio_width (m : PatioModel) : m.width = 10 := by cases m <;> dsimp at * <;> omega
theorem patio_length (m : PatioModel) : m.length = 40 := by
  have h := patio_width m
  cases m <;> dsimp at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1002A01P3
