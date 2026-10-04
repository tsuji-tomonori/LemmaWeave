import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0929A13P1

structure ClaireModel where
  dayHours : ℕ
  cleaning : ℕ
  cooking : ℕ
  crafting : ℕ
  tailoring : ℕ
  sleeping : ℕ
  hDay : dayHours = 24
  hCleaning : cleaning = 4
  hCooking : cooking = 2
  hSleeping : sleeping = 8
  hTotal : dayHours = cleaning + cooking + crafting + tailoring + sleeping
  hEqual : crafting = tailoring

theorem claire_shared_time (m : ClaireModel) : m.crafting + m.tailoring = 10 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  simp_all <;> omega

theorem claire_solution (m : ClaireModel) : m.crafting = 5 := by
  have hPrev := claire_shared_time m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  simp_all <;> omega

structure CrayonsModel where
  initial : ℕ
  lost : ℕ
  remaining : ℕ
  purchased : ℕ
  total : ℕ
  hInitial : initial = 18
  hLost : 2 * lost = initial
  hRemaining : remaining + lost = initial
  hPurchased : purchased = 20
  hTotal : total = remaining + purchased

theorem crayons_lost (m : CrayonsModel) : m.lost = 9 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  simp_all <;> omega

theorem crayons_remaining (m : CrayonsModel) : m.remaining = 9 := by
  have hPrev := crayons_lost m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  simp_all <;> omega

theorem crayons_solution (m : CrayonsModel) : m.total = 29 := by
  have hPrev := crayons_remaining m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  simp_all

structure ChargesModel where
  treats : ℕ
  toys : ℕ
  bones : ℕ
  totalItems : ℕ
  cards : ℕ
  itemsPerCharge : ℕ
  hTreats : treats = 8
  hToys : toys = 2
  hBones : bones = 10
  hTotal : totalItems = treats + toys + bones
  hCards : cards = 4
  hSplit : totalItems = 4 * itemsPerCharge

theorem charges_total (m : ChargesModel) : m.totalItems = 20 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  simp_all

theorem charges_solution (m : ChargesModel) : m.itemsPerCharge = 5 := by
  have hPrev := charges_total m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  simp_all <;> omega

structure CandyJarModel where
  greenInitial : ℕ
  greenEaten : ℕ
  greenRemaining : ℕ
  redInitial : ℕ
  redRemaining : ℕ
  yellowAdded : ℕ
  total : ℕ
  greenPercent : ℕ
  hGreenInitial : greenInitial = 20
  hGreenEaten : greenEaten = 12
  hGreenRemaining : greenRemaining + greenEaten = greenInitial
  hRedInitial : redInitial = 20
  hRedRemaining : 2 * redRemaining = redInitial
  hYellow : yellowAdded = 14
  hTotal : total = greenRemaining + redRemaining + yellowAdded
  hPercent : greenPercent * total = 100 * greenRemaining

theorem candy_green (m : CandyJarModel) : m.greenRemaining = 8 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  simp_all <;> omega

theorem candy_red (m : CandyJarModel) : m.redRemaining = 10 := by
  have hPrev := candy_green m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  simp_all <;> omega

theorem candy_total (m : CandyJarModel) : m.total = 32 := by
  have hPrev := candy_red m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  simp_all

theorem candy_solution (m : CandyJarModel) : m.greenPercent = 25 := by
  have hPrev := candy_total m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  simp_all <;> omega

structure FundraiserModel where
  barsPerBox : ℕ
  boxes : ℕ
  bars : ℕ
  saleCents : ℕ
  costCents : ℕ
  profitPerBarCents : ℕ
  totalProfitCents : ℕ
  totalProfitDollars : ℕ
  hBarsPerBox : barsPerBox = 10
  hBoxes : boxes = 5
  hBars : bars = barsPerBox * boxes
  hSale : saleCents = 150
  hCost : costCents = 100
  hUnitProfit : profitPerBarCents + costCents = saleCents
  hTotalProfit : totalProfitCents = bars * profitPerBarCents
  hDollars : totalProfitCents = 100 * totalProfitDollars

theorem fundraiser_bars (m : FundraiserModel) : m.bars = 50 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  simp_all

theorem fundraiser_unit_profit (m : FundraiserModel) : m.profitPerBarCents = 50 := by
  have hPrev := fundraiser_bars m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  simp_all <;> omega

theorem fundraiser_total_cents (m : FundraiserModel) : m.totalProfitCents = 2500 := by
  have hPrev := fundraiser_unit_profit m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  simp_all

theorem fundraiser_solution (m : FundraiserModel) : m.totalProfitDollars = 25 := by
  have hPrev := fundraiser_total_cents m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A13P1
