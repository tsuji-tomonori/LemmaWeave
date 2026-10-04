import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A13P2

theorem curry_points :
    (2 * 12 : ℕ) = 24 := by
  norm_num

theorem durant_points :
    (2 * 9 : ℕ) = 18 := by
  norm_num

theorem klay_points :
    (12 / 2 : ℕ) = 6 := by
  norm_num

theorem team_total_points :
    (2 * 12 : ℕ) = 24 ∧
      2 * 9 = 18 ∧
      12 / 2 = 6 ∧
      12 + 24 + 9 + 18 + 6 = 69 := by
  exact ⟨curry_points, durant_points, klay_points, by norm_num⟩

theorem tourists_after_anacondas :
    (30 - 2 : ℕ) = 28 := by
  norm_num

theorem tourists_poisoned :
    (28 / 2 : ℕ) = 14 := by
  norm_num

theorem tourists_recovered :
    (14 / 7 : ℕ) = 2 := by
  norm_num

theorem tourists_left :
    (30 - 2 : ℕ) = 28 ∧
      28 / 2 = 14 ∧
      28 - 14 = 14 ∧
      14 / 7 = 2 ∧
      14 + 2 = 16 := by
  exact ⟨tourists_after_anacondas, tourists_poisoned, by norm_num,
    tourists_recovered, by norm_num⟩

theorem kirill_brother_height
    (kirill brother : ℕ)
    (hGap : kirill + 14 = brother)
    (hTotal : kirill + brother = 112) :
    brother = 63 := by
  omega

theorem kirill_height
    (kirill brother : ℕ)
    (hGap : kirill + 14 = brother)
    (hTotal : kirill + brother = 112) :
    kirill = 49 := by
  have hBrother := kirill_brother_height kirill brother hGap hTotal
  omega

theorem listening_minutes_per_day :
    (2 * 60 : ℕ) = 120 := by
  norm_num

theorem beats_per_day :
    (200 * 120 : ℕ) = 24000 := by
  norm_num

theorem beats_per_week :
    (2 * 60 : ℕ) = 120 ∧
      200 * 120 = 24000 ∧
      24000 * 7 = 168000 := by
  exact ⟨listening_minutes_per_day, beats_per_day, by norm_num⟩

theorem sticks_per_carton :
    (5 * 3 : ℕ) = 15 := by
  norm_num

theorem cartons_in_boxes :
    (8 * 4 : ℕ) = 32 := by
  norm_num

theorem gum_sticks_total :
    (5 * 3 : ℕ) = 15 ∧
      8 * 4 = 32 ∧
      32 * 15 = 480 := by
  exact ⟨sticks_per_carton, cartons_in_boxes, by norm_num⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A13P2
