import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0930A19P2

structure LemonsModel where
  total : ℕ
  given : ℕ
  left : ℕ
  hTotal : total = 12
  hQuarter : total = 4 * given
  hLeft : total = given + left

theorem lemons_total (m : LemonsModel) : m.total = 12 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem lemons_given (m : LemonsModel) : m.given = 3 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem lemons_left (m : LemonsModel) : m.left = 9 := by
  have h := lemons_given m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure MoneyModel where
  received : ℕ
  given : ℕ
  afterGift : ℕ
  groceries : ℕ
  remaining : ℕ
  hReceived : received = 100
  hQuarter : received = 4 * given
  hAfterGift : received = given + afterGift
  hGroceries : groceries = 40
  hRemaining : afterGift = groceries + remaining

theorem money_given (m : MoneyModel) : m.given = 25 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem money_after_gift (m : MoneyModel) : m.afterGift = 75 := by
  have h := money_given m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem money_remaining (m : MoneyModel) : m.remaining = 35 := by
  have h := money_after_gift m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure StallModel where
  day1 : ℕ
  increment : ℕ
  day2 : ℕ
  day3 : ℕ
  day4 : ℕ
  day5 : ℕ
  total : ℕ
  hDay1 : day1 = 10
  hIncrement : increment = 4
  hDay2 : day2 = day1 + increment
  hDay3 : day3 = day2 + increment
  hDay4 : day4 = day3 + increment
  hDay5 : day5 = day4 + increment
  hTotal : total = day1 + day2 + day3 + day4 + day5

theorem stall_day2 (m : StallModel) : m.day2 = 14 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem stall_day3 (m : StallModel) : m.day3 = 18 := by
  have h := stall_day2 m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem stall_day4 (m : StallModel) : m.day4 = 22 := by
  have h := stall_day3 m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem stall_day5 (m : StallModel) : m.day5 = 26 := by
  have h := stall_day4 m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem stall_total (m : StallModel) : m.total = 90 := by
  have h2 := stall_day2 m
  have h3 := stall_day3 m
  have h4 := stall_day4 m
  have h5 := stall_day5 m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure ScavengerModel where
  tanya : ℕ
  samantha : ℕ
  lewis : ℕ
  hTanya : tanya = 4
  hSamantha : samantha = 4 * tanya
  hLewis : lewis = samantha + 4

theorem scavenger_samantha (m : ScavengerModel) : m.samantha = 16 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem scavenger_lewis (m : ScavengerModel) : m.lewis = 20 := by
  have h := scavenger_samantha m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure GroceriesModel where
  pastaKg : ℕ
  pastaUnitCents : ℕ
  conventionalPastaCents : ℕ
  literalPastaCents : ℕ
  beefCents : ℕ
  sauceJars : ℕ
  sauceCentsEach : ℕ
  sauceCents : ℕ
  quesadillaCents : ℕ
  conventionalTotalCents : ℕ
  literalTotalCents : ℕ
  hPastaKg : pastaKg = 2
  hPastaUnit : pastaUnitCents = 150
  hConventionalPasta : conventionalPastaCents = pastaKg * pastaUnitCents
  hLiteralPasta : literalPastaCents = 150
  hBeefQuarter : 4 * beefCents = 800
  hSauceJars : sauceJars = 2
  hSauceEach : sauceCentsEach = 200
  hSauce : sauceCents = sauceJars * sauceCentsEach
  hQuesadilla : quesadillaCents = 600
  hConventionalTotal : conventionalTotalCents =
    conventionalPastaCents + beefCents + sauceCents + quesadillaCents
  hLiteralTotal : literalTotalCents =
    literalPastaCents + beefCents + sauceCents + quesadillaCents

theorem groceries_conventional_pasta (m : GroceriesModel) : m.conventionalPastaCents = 300 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem groceries_literal_pasta (m : GroceriesModel) : m.literalPastaCents = 150 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem groceries_beef (m : GroceriesModel) : m.beefCents = 200 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem groceries_sauce (m : GroceriesModel) : m.sauceCents = 400 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem groceries_conventional_total (m : GroceriesModel) : m.conventionalTotalCents = 1500 := by
  have hp := groceries_conventional_pasta m
  have hb := groceries_beef m
  have hs := groceries_sauce m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem groceries_literal_total (m : GroceriesModel) : m.literalTotalCents = 1350 := by
  have hp := groceries_literal_pasta m
  have hb := groceries_beef m
  have hs := groceries_sauce m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem groceries_totals_differ (m : GroceriesModel) :
    m.conventionalTotalCents ≠ m.literalTotalCents := by
  have h1 := groceries_conventional_total m
  have h2 := groceries_literal_total m
  omega

end LemmaWeave.Problems.GSM8K.Sprint0930A19P2
