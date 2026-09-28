import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A03

structure TylenolModel where
  tabletsPerDose : ℕ
  mgPerTablet : ℕ
  doses : ℕ
  mgPerDose : ℕ
  totalMg : ℕ
  totalGrams : ℕ
  hTablets : tabletsPerDose = 2
  hTabletMg : mgPerTablet = 500
  hDoses : doses = 3
  hDoseMg : mgPerDose = 2 * 500
  hTotalMg : totalMg = 3 * 1000
  hGrams : totalMg = 1000 * totalGrams

theorem tylenol_dose_mg (m : TylenolModel) : m.mgPerDose = 1000 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega
theorem tylenol_total_mg (m : TylenolModel) : m.totalMg = 3000 := by
  have hPrev := tylenol_dose_mg m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega
theorem tylenol_solution (m : TylenolModel) : m.totalGrams = 3 := by
  have hPrev := tylenol_total_mg m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega
theorem tylenol_four_dose_interpretation : 4 * (2 * 500) = 4000 := by norm_num
theorem tylenol_readings_differ : (3 : ℕ) ≠ 4 := by decide

structure BenchModel where
  dave : ℕ
  craig : ℕ
  mark : ℕ
  hDave : dave = 3 * 175
  hCraig : 100 * craig = 20 * dave
  hMark : mark + 50 = craig

theorem bench_dave (m : BenchModel) : m.dave = 525 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem bench_craig (m : BenchModel) : m.craig = 105 := by
  have hPrev := bench_dave m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem bench_solution (m : BenchModel) : m.mark = 55 := by
  have hPrev := bench_craig m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure SalaryModel where
  johnMonthly : ℕ
  karenMonthly : ℕ
  karenThreeMonths : ℕ
  months : ℕ
  hJohn : johnMonthly = 3000
  hRatio : 3 * karenMonthly = 4 * johnMonthly
  hKarenTotal : karenThreeMonths = 3 * karenMonthly
  hTime : karenThreeMonths = 3000 * months

theorem salary_karen_monthly (m : SalaryModel) : m.karenMonthly = 4000 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem salary_karen_total (m : SalaryModel) : m.karenThreeMonths = 12000 := by
  have hPrev := salary_karen_monthly m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem salary_solution (m : SalaryModel) : m.months = 4 := by
  have hPrev := salary_karen_total m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

structure DetergentModel where
  totalCents : ℕ
  totalLoads : ℕ
  centsPerLoad : ℕ
  hCost : totalCents = 2 * 2000
  hLoads : totalLoads = 2 * 80
  hRate : totalCents = centsPerLoad * 160

theorem detergent_cost (m : DetergentModel) : m.totalCents = 4000 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem detergent_loads (m : DetergentModel) : m.totalLoads = 160 := by
  have hPrev := detergent_cost m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem detergent_solution (m : DetergentModel) : m.centsPerLoad = 25 := by
  have hPrev := detergent_loads m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure BunniesModel where
  given : ℕ
  remaining : ℕ
  kittens : ℕ
  current : ℕ
  hGiven : 5 * given = 2 * 30
  hRemain : remaining + given = 30
  hKittens : kittens = 2 * remaining
  hCurrent : current = remaining + kittens

theorem bunnies_given (m : BunniesModel) : m.given = 12 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem bunnies_remaining (m : BunniesModel) : m.remaining = 18 := by
  have hPrev := bunnies_given m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem bunnies_kittens (m : BunniesModel) : m.kittens = 36 := by
  have hPrev := bunnies_remaining m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem bunnies_solution (m : BunniesModel) : m.current = 54 := by
  have hPrev := bunnies_kittens m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

structure FliesModel where
  weekly : ℕ
  caught : ℕ
  kept : ℕ
  needed : ℕ
  hWeekly : weekly = 2 * 7
  hCaught : caught = 5 + 6
  hKept : kept + 1 = caught
  hNeeded : needed + kept = weekly

theorem flies_weekly (m : FliesModel) : m.weekly = 14 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem flies_kept (m : FliesModel) : m.kept = 10 := by
  have hPrev := flies_weekly m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem flies_solution (m : FliesModel) : m.needed = 4 := by
  have hPrev := flies_kept m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

structure FurnitureModel where
  chair : ℕ
  table : ℕ
  couch : ℕ
  total : ℕ
  hTotal : total = 380
  hTable : table = 3 * chair
  hCouch : couch = 5 * table
  hSum : total = chair + table + couch

theorem furniture_chair (m : FurnitureModel) : m.chair = 20 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem furniture_solution (m : FurnitureModel) : m.couch = 300 := by
  have hPrev := furniture_chair m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

structure StuffyModel where
  kept : ℕ
  given : ℕ
  janet : ℕ
  hKept : 3 * kept = 60
  hGiven : given + kept = 60
  hJanet : 4 * janet = given

theorem stuffy_kept (m : StuffyModel) : m.kept = 20 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem stuffy_given (m : StuffyModel) : m.given = 40 := by
  have hPrev := stuffy_kept m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem stuffy_solution (m : StuffyModel) : m.janet = 10 := by
  have hPrev := stuffy_given m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure ChessModel where
  proficiency : ℕ
  combined : ℕ
  mastery : ℕ
  total : ℕ
  hProf : proficiency = 49 * 2
  hCombined : combined = 2 + proficiency
  hMastery : mastery = 100 * combined
  hTotal : total = combined + mastery

theorem chess_proficiency (m : ChessModel) : m.proficiency = 98 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem chess_combined (m : ChessModel) : m.combined = 100 := by
  have hPrev := chess_proficiency m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem chess_mastery (m : ChessModel) : m.mastery = 10000 := by
  have hPrev := chess_combined m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem chess_solution (m : ChessModel) : m.total = 10100 := by
  have hPrev := chess_mastery m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

structure EraserModel where
  red : ℕ
  halfRed : ℕ
  rachel : ℕ
  hanna : ℕ
  hRed : 2 * red = 20
  hHalf : 2 * halfRed = red
  hRachel : rachel + 3 = halfRed
  hHanna : hanna = 2 * rachel

theorem eraser_red (m : EraserModel) : m.red = 10 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem eraser_rachel (m : EraserModel) : m.rachel = 2 := by
  have hPrev := eraser_red m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem eraser_solution (m : EraserModel) : m.hanna = 4 := by
  have hPrev := eraser_rachel m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

structure FenceModel where
  newFences : ℕ
  total : ℕ
  hMinutes : 30 * newFences = 8 * 60
  hTotal : total = 10 + newFences

theorem fence_new (m : FenceModel) : m.newFences = 16 := by
  rcases m with ⟨a,b,h1,h2⟩
  omega
theorem fence_solution (m : FenceModel) : m.total = 26 := by
  have hPrev := fence_new m
  rcases m with ⟨a,b,h1,h2⟩
  omega

structure JumpModel where
  betsy : ℕ
  tina : ℕ
  difference : ℕ
  hBetsy : 2 * betsy = 12
  hTina : tina = 3 * betsy
  hDifference : difference + 12 = tina

theorem jump_betsy (m : JumpModel) : m.betsy = 6 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem jump_tina (m : JumpModel) : m.tina = 18 := by
  have hPrev := jump_betsy m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem jump_solution (m : JumpModel) : m.difference = 6 := by
  have hPrev := jump_tina m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure ShirtModel where
  discountCents : ℕ
  paidCents : ℕ
  eachCents : ℕ
  hDiscount : 100 * discountCents = 40 * 6000
  hPaid : paidCents + discountCents = 6000
  hEach : 3 * eachCents = paidCents

theorem shirt_discount (m : ShirtModel) : m.discountCents = 2400 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem shirt_paid (m : ShirtModel) : m.paidCents = 3600 := by
  have hPrev := shirt_discount m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem shirt_solution (m : ShirtModel) : m.eachCents = 1200 := by
  have hPrev := shirt_paid m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure GuitarModel where
  steve : ℕ
  barbeck : ℕ
  davey : ℕ
  hBarbeck : barbeck = 2 * steve
  hDavey : davey = 3 * barbeck
  hTotal : steve + barbeck + davey = 27

theorem guitar_steve (m : GuitarModel) : m.steve = 3 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem guitar_barbeck (m : GuitarModel) : m.barbeck = 6 := by
  have hPrev := guitar_steve m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem guitar_solution (m : GuitarModel) : m.davey = 18 := by
  have hPrev := guitar_barbeck m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure RewardsModel where
  buyers : ℕ
  given : ℕ
  remaining : ℕ
  hBuyers : 2 * buyers = 20
  hGiven : given = 4 * buyers
  hRemaining : remaining + given = 70

theorem rewards_buyers (m : RewardsModel) : m.buyers = 10 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem rewards_given (m : RewardsModel) : m.given = 40 := by
  have hPrev := rewards_buyers m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem rewards_solution (m : RewardsModel) : m.remaining = 30 := by
  have hPrev := rewards_given m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

end LemmaWeave.Problems.GSM8K.Sprint0929A03
