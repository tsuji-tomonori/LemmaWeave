import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A07P2

structure FrogsModel where
  alster : ℕ
  quinn : ℕ
  bret : ℕ
  hAlster : alster = 2
  hQuinn : quinn = 2 * alster
  hBret : bret = 3 * quinn

theorem frogs_quinn (m : FrogsModel) : m.quinn = 4 := by
  cases m <;> simp_all <;> omega

theorem frogs_bret (m : FrogsModel) : m.bret = 12 := by
  have h := frogs_quinn m
  cases m <;> simp_all <;> omega

structure PlugsModel where
  mittenPairs : ℕ
  initialPlugPairs : ℕ
  addedPairs : ℕ
  finalPlugPairs : ℕ
  plugs : ℕ
  hMittens : mittenPairs = 150
  hInitial : initialPlugPairs = mittenPairs + 20
  hAdded : addedPairs = 30
  hFinal : finalPlugPairs = initialPlugPairs + addedPairs
  hPlugs : plugs = 2 * finalPlugPairs

theorem plugs_initial_pairs (m : PlugsModel) : m.initialPlugPairs = 170 := by
  cases m <;> simp_all <;> omega

theorem plugs_final_pairs (m : PlugsModel) : m.finalPlugPairs = 200 := by
  have h := plugs_initial_pairs m
  cases m <;> simp_all <;> omega

theorem plugs_count (m : PlugsModel) : m.plugs = 400 := by
  have h := plugs_final_pairs m
  cases m <;> simp_all <;> omega

structure PagesModel where
  total : ℕ
  writtenFirst : ℕ
  remainingFirst : ℕ
  writtenSecond : ℕ
  remainingSecond : ℕ
  damaged : ℕ
  available : ℕ
  hTotal : total = 500
  hFirst : writtenFirst = 150
  hRemainingFirst : writtenFirst + remainingFirst = total
  hSecondRate : 10 * writtenSecond = 3 * remainingFirst
  hRemainingSecond : writtenSecond + remainingSecond = remainingFirst
  hDamageRate : 5 * damaged = remainingSecond
  hAvailable : damaged + available = remainingSecond

theorem pages_after_first (m : PagesModel) : m.remainingFirst = 350 := by
  cases m <;> simp_all <;> omega

theorem pages_after_second (m : PagesModel) : m.remainingSecond = 245 := by
  have h := pages_after_first m
  cases m <;> simp_all <;> omega

theorem pages_available (m : PagesModel) : m.available = 196 := by
  have h := pages_after_second m
  cases m <;> simp_all <;> omega

theorem fruit_literal_no_natural_solution :
    ¬ ∃ apples oranges : ℕ, apples = 15 ∧ apples = 4 * oranges := by
  omega

structure ReferenceFruitModel where
  apples : ℕ
  oranges : ℕ
  eatenApples : ℕ
  eatenOranges : ℕ
  totalEaten : ℕ
  hApples : apples = 15
  hReversedRelation : oranges = 4 * apples
  hEatenApples : 3 * eatenApples = 2 * apples
  hEatenOranges : 3 * eatenOranges = 2 * oranges
  hTotal : totalEaten = eatenApples + eatenOranges

theorem fruit_reference_components (m : ReferenceFruitModel) :
    m.oranges = 60 ∧ m.eatenApples = 10 ∧ m.eatenOranges = 40 := by
  cases m <;> simp_all <;> omega

theorem fruit_reference_total (m : ReferenceFruitModel) : m.totalEaten = 50 := by
  have h := fruit_reference_components m
  cases m <;> simp_all <;> omega

theorem fruit_resolution :
    (¬ ∃ apples oranges : ℕ, apples = 15 ∧ apples = 4 * oranges) ∧
    (∀ m : ReferenceFruitModel, m.totalEaten = 50) := by
  exact ⟨fruit_literal_no_natural_solution, fruit_reference_total⟩

structure PiesModel where
  pies : ℕ
  price : ℕ
  revenue : ℕ
  ingredients : ℕ
  remaining : ℕ
  hPies : pies = 200
  hPrice : price = 20
  hRevenue : revenue = pies * price
  hIngredients : 5 * ingredients = 3 * revenue
  hRemaining : ingredients + remaining = revenue

theorem pies_revenue (m : PiesModel) : m.revenue = 4000 := by
  cases m <;> simp_all <;> omega

theorem pies_ingredients (m : PiesModel) : m.ingredients = 2400 := by
  have h := pies_revenue m
  cases m <;> simp_all <;> omega

theorem pies_remaining (m : PiesModel) : m.remaining = 1600 := by
  have h1 := pies_revenue m
  have h2 := pies_ingredients m
  cases m <;> simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A07P2
