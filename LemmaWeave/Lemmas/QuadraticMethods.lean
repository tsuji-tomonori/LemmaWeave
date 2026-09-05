import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring

/-! Reusable school-level methods. These statements quantify over real parameters;
    no problem-specific answer is assumed. Arithmetic normalization is confined to
    algebraic bridge lemmas. -/
namespace LemmaWeave.Lemmas.QuadraticMethods

/-- Completing the square, without division or a nonzero-denominator assumption. -/
theorem completing_square (a h c x : ℝ) :
    a * x ^ 2 - 2 * a * h * x + c =
      a * (x - h) ^ 2 + (c - a * h ^ 2) := by
  ring

/-- A nonnegative multiple of a square gives a lower bound. -/
theorem vertex_lower_bound (a h k x : ℝ) (ha : 0 ≤ a) :
    k ≤ a * (x - h) ^ 2 + k := by
  exact le_add_of_nonneg_left (mul_nonneg ha (sq_nonneg (x - h)))

/-- The lower bound is attained at the vertex. -/
theorem vertex_value (a h k : ℝ) : a * (h - h) ^ 2 + k = k := by
  simp

/-- The vertex in the interval is a minimum, including attainment. -/
theorem minimum_at_vertex_on_interval (a h k l u : ℝ) (ha : 0 ≤ a)
    (hl : l ≤ h) (hu : h ≤ u) :
    (∀ x : ℝ, l ≤ x ∧ x ≤ u → k ≤ a * (x - h) ^ 2 + k) ∧
      (l ≤ h ∧ h ≤ u) ∧ a * (h - h) ^ 2 + k = k := by
  exact ⟨fun x _ => vertex_lower_bound a h k x ha, ⟨hl, hu⟩,
    vertex_value a h k⟩

/-- Difference of two function values, factored by the difference of arguments. -/
theorem vertex_difference_factor (a h k x y : ℝ) :
    (a * (x - h) ^ 2 + k) - (a * (y - h) ^ 2 + k) =
      a * (x - y) * (x + y - 2 * h) := by
  ring

/-- If the interval midpoint lies to the left of the vertex, the left endpoint
    is at least as high as every point of the interval. -/
theorem upper_bound_at_left_endpoint (a h k l u x : ℝ) (ha : 0 ≤ a)
    (hmid : u + l ≤ 2 * h) (hl : l ≤ x) (hu : x ≤ u) :
    a * (x - h) ^ 2 + k ≤ a * (l - h) ^ 2 + k := by
  apply sub_nonpos.mp
  rw [vertex_difference_factor]
  apply mul_nonpos_of_nonneg_of_nonpos
  · exact mul_nonneg ha (sub_nonneg.mpr hl)
  · exact sub_nonpos.mpr (le_trans (add_le_add_right hu l) hmid)

/-- The symmetric endpoint rule applies when the midpoint is to the right. -/
theorem upper_bound_at_right_endpoint (a h k l u x : ℝ) (ha : 0 ≤ a)
    (hmid : 2 * h ≤ l + u) (hl : l ≤ x) (hu : x ≤ u) :
    a * (x - h) ^ 2 + k ≤ a * (u - h) ^ 2 + k := by
  apply sub_nonpos.mp
  rw [vertex_difference_factor]
  apply mul_nonpos_of_nonpos_of_nonneg
  · exact mul_nonpos_of_nonneg_of_nonpos ha (sub_nonpos.mpr hu)
  · exact sub_nonneg.mpr (le_trans hmid (add_le_add_right hl u))

/-- Endpoint comparison selects the larger endpoint without testing interval points. -/
theorem upper_bound_by_endpoints (a h k l u x : ℝ) (ha : 0 ≤ a)
    (hl : l ≤ x) (hu : x ≤ u) :
    a * (x - h) ^ 2 + k ≤
      max (a * (l - h) ^ 2 + k) (a * (u - h) ^ 2 + k) := by
  rcases le_total (u + l) (2 * h) with hmid | hmid
  · exact le_trans (upper_bound_at_left_endpoint a h k l u x ha hmid hl hu)
      (le_max_left _ _)
  · have hmid' : 2 * h ≤ l + u := by simpa [add_comm] using hmid
    exact le_trans (upper_bound_at_right_endpoint a h k l u x ha hmid' hl hu)
      (le_max_right _ _)

end LemmaWeave.Lemmas.QuadraticMethods
