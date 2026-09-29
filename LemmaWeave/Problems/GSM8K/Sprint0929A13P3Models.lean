import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A13P3

structure PatchesModel where
  oneSixthPea : ℕ
  peaArea : ℕ
  radishArea : ℕ
  hOneSixth : oneSixthPea = 5
  hPea : peaArea = 6 * oneSixthPea
  hTwice : peaArea = 2 * radishArea

theorem patches_pea (m : PatchesModel) : m.peaArea = 30 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  simp_all

theorem patches_solution (m : PatchesModel) : m.radishArea = 15 := by
  have hPrev := patches_pea m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  simp_all <;> omega

structure ShellsModel where
  dozen : ℕ
  mimi : ℕ
  kyle : ℕ
  leigh : ℕ
  hDozen : dozen = 12
  hMimi : mimi = 2 * dozen
  hKyle : kyle = 2 * mimi
  hLeigh : 3 * leigh = kyle

theorem shells_mimi (m : ShellsModel) : m.mimi = 24 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  simp_all

theorem shells_kyle (m : ShellsModel) : m.kyle = 48 := by
  have hPrev := shells_mimi m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  simp_all

theorem shells_solution (m : ShellsModel) : m.leigh = 16 := by
  have hPrev := shells_kyle m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  simp_all <;> omega

structure MarblesModel where
  total : ℕ
  white : ℕ
  black : ℕ
  colored : ℕ
  whiteCents : ℕ
  blackCents : ℕ
  coloredCents : ℕ
  totalCents : ℕ
  totalDollars : ℕ
  hTotal : total = 100
  hWhite : 100 * white = 20 * total
  hBlack : 100 * black = 30 * total
  hPartition : total = white + black + colored
  hWhiteCents : whiteCents = white * 5
  hBlackCents : blackCents = black * 10
  hColoredCents : coloredCents = colored * 20
  hTotalCents : totalCents = whiteCents + blackCents + coloredCents
  hDollars : totalCents = 100 * totalDollars

theorem marbles_counts (m : MarblesModel) : m.white = 20 ∧ m.black = 30 ∧ m.colored = 50 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all <;> omega

theorem marbles_revenue_parts (m : MarblesModel) :
    m.whiteCents = 100 ∧ m.blackCents = 300 ∧ m.coloredCents = 1000 := by
  have hPrev := marbles_counts m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all

theorem marbles_total_cents (m : MarblesModel) : m.totalCents = 1400 := by
  have hPrev := marbles_revenue_parts m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all

theorem marbles_solution (m : MarblesModel) : m.totalDollars = 14 := by
  have hPrev := marbles_total_cents m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all <;> omega

structure StrawberriesModel where
  pickedPerHandful : ℕ
  eatenPerHandful : ℕ
  basketPerHandful : ℕ
  capacity : ℕ
  handfuls : ℕ
  totalPicked : ℕ
  hPickedPer : pickedPerHandful = 5
  hEatenPer : eatenPerHandful = 1
  hBasketPer : basketPerHandful + eatenPerHandful = pickedPerHandful
  hCapacity : capacity = 60
  hFill : handfuls * basketPerHandful = capacity
  hPicked : totalPicked = handfuls * pickedPerHandful

theorem strawberries_basket_rate (m : StrawberriesModel) : m.basketPerHandful = 4 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

theorem strawberries_handfuls (m : StrawberriesModel) : m.handfuls = 15 := by
  have hPrev := strawberries_basket_rate m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

theorem strawberries_solution (m : StrawberriesModel) : m.totalPicked = 75 := by
  have hPrev := strawberries_handfuls m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all

structure CoinsModel where
  pennies : ℕ
  nickels : ℕ
  dimes : ℕ
  quarters : ℕ
  totalCents : ℕ
  totalDollars : ℕ
  hPennies : pennies = 120
  hNickels : pennies = 3 * nickels
  hDimes : nickels = 5 * dimes
  hQuarters : quarters = 2 * dimes
  hTotal : totalCents = pennies + 5 * nickels + 10 * dimes + 25 * quarters
  hDollars : totalCents = 100 * totalDollars

theorem coins_nickels (m : CoinsModel) : m.nickels = 40 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

theorem coins_dimes (m : CoinsModel) : m.dimes = 8 := by
  have hPrev := coins_nickels m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

theorem coins_quarters (m : CoinsModel) : m.quarters = 16 := by
  have hPrev := coins_dimes m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all

theorem coins_total_cents (m : CoinsModel) : m.totalCents = 800 := by
  have hPrev := coins_quarters m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all

theorem coins_solution (m : CoinsModel) : m.totalDollars = 8 := by
  have hPrev := coins_total_cents m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A13P3
