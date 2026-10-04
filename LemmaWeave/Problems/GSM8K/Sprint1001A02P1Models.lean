import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1001A02P1

structure SiblingAgesModel where
  kayAge : ℕ
  youngestAge : ℕ
  oldestAge : ℕ
  hKay : kayAge = 32
  hYoungest : 2 * (youngestAge + 5) = kayAge
  hOldest : oldestAge = 4 * youngestAge

theorem sibling_youngest (m : SiblingAgesModel) : m.youngestAge = 11 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem sibling_oldest (m : SiblingAgesModel) : m.oldestAge = 44 := by
  have h := sibling_youngest m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure PokemonCardsModel where
  nicole : ℕ
  cindy : ℕ
  combined : ℕ
  rex : ℕ
  rexShare : ℕ
  hNicole : nicole = 400
  hCindy : cindy = 2 * nicole
  hCombined : combined = nicole + cindy
  hRex : 2 * rex = combined
  hShare : 4 * rexShare = rex

theorem cards_cindy (m : PokemonCardsModel) : m.cindy = 800 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem cards_combined (m : PokemonCardsModel) : m.combined = 1200 := by
  have h := cards_cindy m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem cards_rex (m : PokemonCardsModel) : m.rex = 600 := by
  have h := cards_combined m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem cards_share (m : PokemonCardsModel) : m.rexShare = 150 := by
  have h := cards_rex m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure ChickensModel where
  hens : ℕ
  roosters : ℕ
  total : ℕ
  hTotalCount : total = 9000
  hRatio : roosters = 2 * hens
  hPartition : total = hens + roosters

theorem chickens_hens (m : ChickensModel) : m.hens = 3000 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem chickens_roosters (m : ChickensModel) : m.roosters = 6000 := by
  have h := chickens_hens m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure BicycleModel where
  firstMiles : ℕ
  secondMiles : ℕ
  thirdMiles : ℕ
  totalMiles : ℕ
  hFirst : 4 * firstMiles = 16
  hSecond : 4 * secondMiles = 12
  hThird : 4 * thirdMiles = 20
  hTotal : totalMiles = firstMiles + secondMiles + thirdMiles

theorem bicycle_first (m : BicycleModel) : m.firstMiles = 4 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem bicycle_second (m : BicycleModel) : m.secondMiles = 3 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem bicycle_third (m : BicycleModel) : m.thirdMiles = 5 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem bicycle_total (m : BicycleModel) : m.totalMiles = 12 := by
  have h1 := bicycle_first m
  have h2 := bicycle_second m
  have h3 := bicycle_third m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure MoviesModel where
  dvdCount : ℕ
  dvdPrice : ℕ
  blurayCount : ℕ
  blurayPrice : ℕ
  movieCount : ℕ
  totalCost : ℕ
  averagePrice : ℕ
  hDvdCount : dvdCount = 8
  hDvdPrice : dvdPrice = 12
  hBlurayCount : blurayCount = 4
  hBlurayPrice : blurayPrice = 18
  hCount : movieCount = dvdCount + blurayCount
  hCost : totalCost = dvdCount * dvdPrice + blurayCount * blurayPrice
  hAverage : averagePrice * movieCount = totalCost

theorem movies_count (m : MoviesModel) : m.movieCount = 12 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem movies_cost (m : MoviesModel) : m.totalCost = 168 := by
  rw [m.hCost, m.hDvdCount, m.hDvdPrice, m.hBlurayCount, m.hBlurayPrice]

theorem movies_average (m : MoviesModel) : m.averagePrice = 14 := by
  have h1 := movies_count m
  have h2 := movies_cost m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A02P1
