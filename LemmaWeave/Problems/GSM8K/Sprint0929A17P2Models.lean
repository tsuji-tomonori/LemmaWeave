import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0929A17P2

structure PizzaModel where
  totalSlices : ℚ
  perPerson : ℚ
  people : ℚ
  eaten : ℚ
  remaining : ℚ
  hTotal : totalSlices = 8
  hPerPerson : perPerson = (3 : ℚ) / 2
  hPeople : people = 2
  hEaten : eaten = perPerson * people
  hRemaining : totalSlices = eaten + remaining

theorem pizza_eaten (m : PizzaModel) : m.eaten = 3 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  (try simp_all) <;> norm_num at *

theorem pizza_solution (m : PizzaModel) : m.remaining = 5 := by
  have h := m.hRemaining
  rw [m.hTotal, pizza_eaten m] at h
  linarith

structure BasketsModel where
  pointsPerBasket : ℕ
  mattPoints : ℕ
  shawnPoints : ℕ
  mattBaskets : ℕ
  shawnBaskets : ℕ
  totalBaskets : ℕ
  hPoints : pointsPerBasket = 3
  hMattPoints : mattPoints = 9
  hShawnPoints : shawnPoints = 6
  hMatt : mattPoints = mattBaskets * pointsPerBasket
  hShawn : shawnPoints = shawnBaskets * pointsPerBasket
  hTotal : totalBaskets = mattBaskets + shawnBaskets

theorem baskets_matt (m : BasketsModel) : m.mattBaskets = 3 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  (try simp_all) <;> norm_num at * <;> omega

theorem baskets_shawn (m : BasketsModel) : m.shawnBaskets = 2 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  (try simp_all) <;> norm_num at * <;> omega

theorem baskets_solution (m : BasketsModel) : m.totalBaskets = 5 := by
  have hMatt := baskets_matt m
  have hShawn := baskets_shawn m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  (try simp_all) <;> omega

structure WaterSevenConsumedFillsModel where
  target : ℕ
  bottleCapacity : ℕ
  consumedFills : ℕ
  consumed : ℕ
  remaining : ℕ
  hTarget : target = 100
  hCapacity : bottleCapacity = 12
  hFills : consumedFills = 7
  hConsumed : consumed = bottleCapacity * consumedFills
  hRemaining : target = consumed + remaining

theorem water_consumed_under_seven_fills (m : WaterSevenConsumedFillsModel) : m.consumed = 84 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  (try simp_all) <;> norm_num at *

theorem water_solution_under_seven_consumed_fills (m : WaterSevenConsumedFillsModel) : m.remaining = 16 := by
  have hConsumed := water_consumed_under_seven_fills m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  (try simp_all) <;> omega

theorem water_literal_seven_refills_after_initial_fill :
    (100 : ℕ) - 12 * (1 + 7) = 4 := by
  norm_num

structure NicoleClothesModel where
  nicoleInitial : ℕ
  firstSister : ℕ
  nextSister : ℕ
  youngestThreeTotal : ℕ
  oldestSister : ℕ
  finalTotal : ℕ
  hInitial : nicoleInitial = 10
  hFirstHalf : nicoleInitial = 2 * firstSister
  hNext : nextSister = nicoleInitial + 2
  hYoungestThree : youngestThreeTotal = nicoleInitial + firstSister + nextSister
  hOldestAverage : youngestThreeTotal = 3 * oldestSister
  hFinal : finalTotal = youngestThreeTotal + oldestSister

theorem nicole_first_sister (m : NicoleClothesModel) : m.firstSister = 5 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  (try simp_all) <;> norm_num at * <;> omega

theorem nicole_next_sister (m : NicoleClothesModel) : m.nextSister = 12 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  (try simp_all) <;> omega

theorem nicole_youngest_three (m : NicoleClothesModel) : m.youngestThreeTotal = 27 := by
  have hFirst := nicole_first_sister m
  have hNext := nicole_next_sister m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  (try simp_all) <;> omega

theorem nicole_oldest_sister (m : NicoleClothesModel) : m.oldestSister = 9 := by
  have h := m.hOldestAverage
  rw [nicole_youngest_three m] at h
  omega

theorem nicole_solution (m : NicoleClothesModel) : m.finalTotal = 36 := by
  have hYoungest := nicole_youngest_three m
  have hOldest := nicole_oldest_sister m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  (try simp_all) <;> omega

structure VanHelsingModel where
  vampireRate : ℕ
  werewolfRate : ℕ
  werewolvesRemoved : ℕ
  earned : ℕ
  vampireEarnings : ℕ
  werewolfEarnings : ℕ
  vampiresRemoved : ℕ
  totalVampires : ℕ
  totalWerewolves : ℕ
  percentWerewolvesRemoved : ℕ
  hVampireRate : vampireRate = 5
  hWerewolfRate : werewolfRate = 10
  hWerewolvesRemoved : werewolvesRemoved = 8
  hEarned : earned = 105
  hWerewolfEarnings : werewolfEarnings = werewolvesRemoved * werewolfRate
  hVampireEarnings : earned = werewolfEarnings + vampireEarnings
  hVampiresRemoved : vampireEarnings = vampiresRemoved * vampireRate
  hHalfVampires : totalVampires = 2 * vampiresRemoved
  hFourTimes : totalWerewolves = 4 * totalVampires
  hPercent : 100 * werewolvesRemoved = percentWerewolvesRemoved * totalWerewolves

theorem van_werewolf_earnings (m : VanHelsingModel) : m.werewolfEarnings = 80 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  dsimp at *
  (try simp_all) <;> norm_num at *

theorem van_vampires_removed (m : VanHelsingModel) : m.vampiresRemoved = 5 := by
  have hWolf := van_werewolf_earnings m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  dsimp at *
  (try simp_all) <;> norm_num at * <;> omega

theorem van_total_vampires (m : VanHelsingModel) : m.totalVampires = 10 := by
  have hRemoved := van_vampires_removed m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  dsimp at *
  (try simp_all) <;> omega

theorem van_total_werewolves (m : VanHelsingModel) : m.totalWerewolves = 40 := by
  rw [m.hFourTimes, van_total_vampires m]

theorem van_solution (m : VanHelsingModel) : m.percentWerewolvesRemoved = 20 := by
  have h := m.hPercent
  rw [m.hWerewolvesRemoved, van_total_werewolves m] at h
  omega

end LemmaWeave.Problems.GSM8K.Sprint0929A17P2
