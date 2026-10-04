import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1001A19P3

structure NigelModel where
  original : ℕ
  now : ℕ
  mother : ℕ
  before : ℕ
  given : ℕ
  hOriginal : original = 45
  hNow : now = 2 * original + 10
  hMother : mother = 80
  hBefore : before + mother = now
  hGiven : before + given = original

theorem nigel_now (m : NigelModel) : m.now = 100 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem nigel_before_mother (m : NigelModel) : m.before = 20 := by
  have h := nigel_now m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem nigel_given_away (m : NigelModel) : m.given = 25 := by
  have h := nigel_before_mother m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure SandwichModel where
  sandwiches : ℕ
  afterFirst : ℕ
  portions : ℕ
  perPerson : ℕ
  people : ℕ
  hSandwiches : sandwiches = 20
  hAfterFirst : afterFirst = 2 * sandwiches
  hPortions : portions = 2 * afterFirst
  hPerPerson : perPerson = 8
  hPeople : portions = people * perPerson

theorem sandwich_first_cut (m : SandwichModel) : m.afterFirst = 40 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem sandwich_portions (m : SandwichModel) : m.portions = 80 := by
  have h := sandwich_first_cut m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem sandwich_people (m : SandwichModel) : m.people = 10 := by
  have h := sandwich_portions m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure SquareModel where
  sideA : ℕ
  sideB : ℕ
  difference : ℕ
  hAreaA : sideA * sideA = 25
  hAreaB : sideB * sideB = 81
  hDifference : sideB = sideA + difference

theorem square_a_side (m : SquareModel) : m.sideA = 5 := by
  nlinarith [m.hAreaA]
theorem square_b_side (m : SquareModel) : m.sideB = 9 := by
  nlinarith [m.hAreaB]
theorem square_side_difference (m : SquareModel) : m.difference = 4 := by
  have h1 := square_a_side m
  have h2 := square_b_side m
  have hd := m.hDifference
  omega

structure CoinModel where
  quarters : ℕ
  dimes : ℕ
  nickels : ℕ
  total : ℕ
  hDimes : dimes = quarters + 3
  hNickels : nickels + 6 = quarters
  hTotal : total = quarters + dimes + nickels
  hTotalCount : total = 63

theorem coin_balance (m : CoinModel) : 3 * m.quarters = 66 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem coin_quarters (m : CoinModel) : m.quarters = 22 := by
  have h := coin_balance m
  omega

structure HairModel where
  initial : ℕ
  afterHalf : ℕ
  afterGrow : ℕ
  final : ℕ
  hInitial : initial = 24
  hHalf : 2 * afterHalf = initial
  hGrow : afterGrow = afterHalf + 4
  hFinal : final + 2 = afterGrow

theorem hair_after_half (m : HairModel) : m.afterHalf = 12 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem hair_after_growth (m : HairModel) : m.afterGrow = 16 := by
  have h := hair_after_half m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem hair_final_length (m : HairModel) : m.final = 14 := by
  have h := hair_after_growth m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A19P3
