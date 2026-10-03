import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1001A19P2

structure FruitModel where
  appleUnit : ℕ
  orangeUnit : ℕ
  totalCost : ℕ
  hAppleBundle : 10 * appleUnit = 200
  hOrangeBundle : 5 * orangeUnit = 150
  hTotalCost : totalCost = 12 * appleUnit

theorem apple_unit_price (m : FruitModel) : m.appleUnit = 20 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem orange_unit_price (m : FruitModel) : m.orangeUnit = 30 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem apples_are_cheaper (m : FruitModel) : m.appleUnit < m.orangeUnit := by
  have h1 := apple_unit_price m
  have h2 := orange_unit_price m
  omega
theorem fruit_cost (m : FruitModel) : m.totalCost = 240 := by
  have h1 := apple_unit_price m
  have h2 := apples_are_cheaper m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure DeliveryModel where
  first : ℕ
  second : ℕ
  third : ℕ
  totalMiles : ℕ
  pay : ℕ
  perMile : ℕ
  hFirst : first = 10
  hSecond : second = 28
  hThird : 2 * third = second
  hTotal : totalMiles = first + second + third
  hPay : pay = totalMiles * perMile
  hPayAmount : pay = 104

theorem third_delivery_distance (m : DeliveryModel) : m.third = 14 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem delivery_total_distance (m : DeliveryModel) : m.totalMiles = 52 := by
  have h := third_delivery_distance m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem delivery_pay_per_mile (m : DeliveryModel) : m.perMile = 2 := by
  have h := delivery_total_distance m
  have hp := m.hPay
  rw [h, m.hPayAmount] at hp
  omega

structure WaterModel where
  initial : ℕ
  firstTaken : ℕ
  endTaken : ℕ
  used : ℕ
  remaining : ℕ
  hInitial : initial = 4 * 12
  hFirstTaken : firstTaken = 11 * 2
  hEndTaken : endTaken = 11
  hUsed : used = firstTaken + endTaken
  hRemaining : initial = used + remaining

theorem initial_water_bottles (m : WaterModel) : m.initial = 48 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem first_break_bottles (m : WaterModel) : m.firstTaken = 22 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem used_water_bottles (m : WaterModel) : m.used = 33 := by
  have h1 := first_break_bottles m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem remaining_water_bottles (m : WaterModel) : m.remaining = 15 := by
  have h1 := initial_water_bottles m
  have h2 := used_water_bottles m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure AudienceModel where
  total : ℕ
  first : ℕ
  second : ℕ
  overlap : ℕ
  union : ℕ
  neither : ℕ
  hTotal : total = 50
  hFirst : 100 * first = 40 * total
  hSecond : 100 * second = 34 * total
  hOverlapFirst : overlap ≤ first
  hOverlapSecond : overlap ≤ second
  hUnion : union + overlap = first + second
  hPartition : total = union + neither

theorem first_team_supporters (m : AudienceModel) : m.first = 20 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem second_team_supporters (m : AudienceModel) : m.second = 17 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem audience_neither_formula (m : AudienceModel) : m.neither = 13 + m.overlap := by
  have h1 := first_team_supporters m
  have h2 := second_team_supporters m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem audience_neither_range (m : AudienceModel) : 13 ≤ m.neither ∧ m.neither ≤ 30 := by
  have h1 := audience_neither_formula m
  have h2 := second_team_supporters m
  have ho := m.hOverlapSecond
  omega

theorem audience_disjoint_neither (m : AudienceModel) (h : m.overlap = 0) : m.neither = 13 := by
  have hf := audience_neither_formula m
  omega
theorem audience_max_overlap_neither (m : AudienceModel) (h : m.overlap = 17) : m.neither = 30 := by
  have hf := audience_neither_formula m
  omega
theorem audience_result (m : AudienceModel) :
    (13 ≤ m.neither ∧ m.neither ≤ 30) ∧
    (m.overlap = 0 → m.neither = 13) ∧
    (m.overlap = 17 → m.neither = 30) := by
  have hr := audience_neither_range m
  have hd := audience_disjoint_neither m
  have hm := audience_max_overlap_neither m
  exact ⟨hr, hd, hm⟩

structure SchoolModel where
  daily : ℕ
  weekly : ℕ
  allocated : ℕ
  hDaily : daily = 5 * 4
  hWeekly : weekly = 5 * daily
  hAllocated : 4 * allocated = 3 * weekly

theorem daily_earnings (m : SchoolModel) : m.daily = 20 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem weekly_earnings (m : SchoolModel) : m.weekly = 100 := by
  have h := daily_earnings m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem school_allocation (m : SchoolModel) : m.allocated = 75 := by
  have h := weekly_earnings m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A19P2
