import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A02R1

theorem two_month_tutoring_hours :
    (200 + 150 : ℕ) = 350 ∧
      200 + 350 = 550 ∧
      550 / 10 = 55 := by
  norm_num

theorem wardrobe_sale_total_dollars :
    (30 / 2 : ℕ) = 15 ∧
      30 + 15 = 45 ∧
      20 * 3 = 60 ∧
      15 * 5 = 75 ∧
      45 + 60 + 75 = 180 := by
  norm_num

theorem combined_book_writing_months :
    (3 * 12 / 2 : ℕ) = 18 ∧
      18 + 3 = 21 ∧
      18 + 21 = 39 := by
  norm_num

theorem remaining_book_pages :
    (40 + 10 : ℕ) = 50 ∧
      2 * 50 = 100 ∧
      50 + 100 = 150 ∧
      360 - 150 = 210 := by
  norm_num

theorem patrick_trout_count :
    (5 + 7 : ℕ) = 12 ∧
      12 - 4 = 8 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A02R1
