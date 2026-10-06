import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A16P2

theorem eight_antler_deer : (920 * 10 / 100 : ℕ) = 92 := by norm_num
theorem albino_eight_antler_count : (92 / 4 : ℕ) = 23 := by norm_num

theorem albino_eight_antler_deer :
    (920 * 10 / 100 : ℕ) = 92 ∧
      (92 / 4 : ℕ) = 23 := by
  exact ⟨eight_antler_deer, albino_eight_antler_count⟩

theorem occupied_units : (100 * 3 / 4 : ℕ) = 75 := by norm_num
theorem monthly_rent : (75 * 400 : ℕ) = 30000 := by norm_num
theorem yearly_rent : (30000 * 12 : ℕ) = 360000 := by norm_num

theorem annual_rent_revenue :
    (100 * 3 / 4 : ℕ) = 75 ∧
      (75 * 400 : ℕ) = 30000 ∧
      (30000 * 12 : ℕ) = 360000 := by
  exact ⟨occupied_units, monthly_rent, yearly_rent⟩

theorem roll_dozens : (15 / 5 : ℕ) = 3 := by norm_num
theorem roll_count : (3 * 12 : ℕ) = 36 := by norm_num

theorem bakery_roll_count :
    (15 / 5 : ℕ) = 3 ∧
      (3 * 12 : ℕ) = 36 := by
  exact ⟨roll_dozens, roll_count⟩

theorem road_area : (2000 * 20 : ℕ) = 40000 := by norm_num
theorem truckload_count : (40000 / 800 : ℕ) = 50 := by norm_num
theorem asphalt_pre_tax : (50 * 75 : ℕ) = 3750 := by norm_num
theorem sales_tax : (3750 * 20 / 100 : ℕ) = 750 := by norm_num
theorem asphalt_total_cost : (3750 + 750 : ℕ) = 4500 := by norm_num

theorem asphalt_total_with_tax :
    (2000 * 20 : ℕ) = 40000 ∧
      (40000 / 800 : ℕ) = 50 ∧
      (50 * 75 : ℕ) = 3750 ∧
      (3750 * 20 / 100 : ℕ) = 750 ∧
      (3750 + 750 : ℕ) = 4500 := by
  exact ⟨road_area, truckload_count, asphalt_pre_tax, sales_tax, asphalt_total_cost⟩

theorem twice_yesterday : (70 * 2 : ℕ) = 140 := by norm_num
theorem ten_percent_reduction : (140 * 10 / 100 : ℕ) = 14 := by norm_num
theorem today_present : (140 - 14 : ℕ) = 126 := by norm_num
theorem registered_students : (126 + 30 : ℕ) = 156 := by norm_num

theorem course_registered_students :
    (70 * 2 : ℕ) = 140 ∧
      (140 * 10 / 100 : ℕ) = 14 ∧
      (140 - 14 : ℕ) = 126 ∧
      (126 + 30 : ℕ) = 156 := by
  exact ⟨twice_yesterday, ten_percent_reduction, today_present, registered_students⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A16P2
