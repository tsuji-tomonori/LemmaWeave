import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A20P1

structure LemonadeModel where
  katya : ℕ
  ricky : ℕ
  combined : ℕ
  tina : ℕ
  more : ℕ
  hKatya : katya = 8
  hRicky : ricky = 9
  hCombined : combined = katya + ricky
  hTina : tina = 2 * combined
  hMore : katya + more = tina

theorem lemonade_combined (m : LemonadeModel) : m.combined = 17 := by omega
theorem tina_lemonade (m : LemonadeModel) : m.tina = 34 := by
  have h := lemonade_combined m
  omega
theorem tina_more_than_katya (m : LemonadeModel) : m.more = 26 := by
  have h := tina_lemonade m
  omega
structure QuiltModel where
  perQuilt : ℕ
  required : ℕ
  hUnit : 7 * perQuilt = 21
  hRequired : required = 12 * perQuilt

theorem quilt_yards_each (m : QuiltModel) : m.perQuilt = 3 := by omega
theorem quilt_yards_required (m : QuiltModel) : m.required = 36 := by
  have h := quilt_yards_each m
  omega
structure TripModel where
  first : ℕ
  second : ℕ
  third : ℕ
  fourth : ℕ
  total : ℕ
  charges : ℕ
  hFirst : first = 135
  hSecond : second = first + 124
  hThird : third = 159
  hFourth : fourth = 189
  hTotal : total = first + second + third + fourth
  hCharges : total = 106 * charges

theorem trip_second_day (m : TripModel) : m.second = 259 := by omega
theorem trip_total_miles (m : TripModel) : m.total = 742 := by
  have h := trip_second_day m
  omega
theorem phone_charges (m : TripModel) : m.charges = 7 := by
  have h := trip_total_miles m
  omega
structure OlderPhraseModel where
  peter : ℕ
  conventional : ℕ
  literal : ℕ
  hPeter : peter = 10
  hConventional : 2 * conventional = 7 * peter
  hLiteral : 2 * literal = 9 * peter

theorem conventional_older_age (m : OlderPhraseModel) : m.conventional = 35 := by omega
theorem literal_older_age (m : OlderPhraseModel) : m.literal = 45 := by omega
theorem older_phrase_ambiguous (m : OlderPhraseModel) :
    m.conventional = 35 ∧ m.literal = 45 ∧ m.conventional ≠ m.literal := by
  have h1 := conventional_older_age m
  have h2 := literal_older_age m
  omega

structure BaseballModel where
  cubs : ℕ
  cardinals : ℕ
  more : ℕ
  hCubs : cubs = 2 + 1 + 2
  hCardinals : cardinals = 1 + 1
  hMore : cardinals + more = cubs

theorem cubs_home_runs (m : BaseballModel) : m.cubs = 5 := by omega
theorem cardinals_home_runs (m : BaseballModel) : m.cardinals = 2 := by omega
theorem cubs_more_home_runs (m : BaseballModel) : m.more = 3 := by
  have h1 := cubs_home_runs m
  have h2 := cardinals_home_runs m
  omega
end LemmaWeave.Problems.GSM8K.Sprint1001A20P1
