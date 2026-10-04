import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0930A00P1

structure EggModel where
  gertrude : ℕ
  blanche : ℕ
  nancy : ℕ
  martha : ℕ
  collected : ℕ
  dropped : ℕ
  left : ℕ
  hGertrude : gertrude = 4
  hBlanche : blanche = 3
  hNancy : nancy = 2
  hMartha : martha = 2
  hCollected : collected = gertrude + blanche + nancy + martha
  hDropped : dropped = 2
  hLeft : collected = left + dropped

theorem eggs_collected (m : EggModel) : m.collected = 11 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  subst_vars <;> norm_num at * <;> omega

theorem eggs_solution (m : EggModel) : m.left = 9 := by
  have h := eggs_collected m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  subst_vars <;> norm_num at * <;> omega

structure MarbleModel where
  mineBefore : ℕ
  mineAfter : ℕ
  brotherAfter : ℕ
  friendAfter : ℕ
  totalAfter : ℕ
  hGive : mineBefore = mineAfter + 2
  hDouble : mineAfter = 2 * brotherAfter
  hTriple : friendAfter = 3 * mineAfter
  hTotal : totalAfter = mineAfter + brotherAfter + friendAfter
  hTotalValue : totalAfter = 63

theorem marbles_after_gift (m : MarbleModel) : m.mineAfter = 14 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega

theorem marbles_solution (m : MarbleModel) : m.mineBefore = 16 := by
  have h := marbles_after_gift m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega

structure PizzaModel where
  pizzas : ℕ
  slicesPerPizza : ℕ
  totalSlices : ℕ
  cheeseLeft : ℕ
  onionLeft : ℕ
  leftovers : ℕ
  eaten : ℕ
  slicesPerStudent : ℕ
  students : ℕ
  hPizzas : pizzas = 6
  hSlicesPerPizza : slicesPerPizza = 18
  hTotalSlices : totalSlices = pizzas * slicesPerPizza
  hCheeseLeft : cheeseLeft = 8
  hOnionLeft : onionLeft = 4
  hLeftovers : leftovers = cheeseLeft + onionLeft
  hBalance : totalSlices = eaten + leftovers
  hPerStudent : slicesPerStudent = 3
  hEaten : eaten = students * slicesPerStudent

theorem pizza_total_slices (m : PizzaModel) : m.totalSlices = 108 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  subst_vars <;> norm_num at * <;> omega

theorem pizza_leftovers (m : PizzaModel) : m.leftovers = 12 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  subst_vars <;> norm_num at * <;> omega

theorem pizza_eaten (m : PizzaModel) : m.eaten = 96 := by
  have hTotal := pizza_total_slices m
  have hLeft := pizza_leftovers m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  subst_vars <;> norm_num at * <;> omega

theorem pizza_solution (m : PizzaModel) : m.students = 32 := by
  have h := pizza_eaten m
  rcases m with ⟨a,b,c,d,e,f,g,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  subst_vars <;> norm_num at * <;> omega

structure StampModel where
  bought : ℕ
  before : ℕ
  totalAfter : ℕ
  hBought : bought = 300
  hHalf : bought = 2 * before
  hTotal : totalAfter = before + bought

theorem stamps_before (m : StampModel) : m.before = 150 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

theorem stamps_solution (m : StampModel) : m.totalAfter = 450 := by
  have h := stamps_before m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure AgeModel where
  taliaNow : ℕ
  taliaInSeven : ℕ
  motherNow : ℕ
  fatherNow : ℕ
  fatherInThree : ℕ
  hTaliaFuture : taliaInSeven = 20
  hSeven : taliaInSeven = taliaNow + 7
  hMother : motherNow = 3 * taliaNow
  hFatherFuture : fatherInThree = fatherNow + 3
  hSameAge : fatherInThree = motherNow

theorem ages_talia_now (m : AgeModel) : m.taliaNow = 13 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega

theorem ages_mother_now (m : AgeModel) : m.motherNow = 39 := by
  have h := ages_talia_now m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega

theorem ages_solution (m : AgeModel) : m.fatherNow = 36 := by
  have h1 := ages_talia_now m
  have h2 := ages_mother_now m
  rcases m with ⟨a,b,c,d,e,p1,p2,p3,p4,p5⟩
  omega

end LemmaWeave.Problems.GSM8K.Sprint0930A00P1
