import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1001A10P2

structure PlatesModel where
  initial : ℕ
  plateOunces : ℕ
  limitPounds : ℕ
  limitOunces : ℕ
  remaining : ℕ
  removed : ℕ
  hInitial : initial = 38
  hPlate : plateOunces = 10
  hLimitPounds : limitPounds = 20
  hLimitOunces : limitOunces = 20 * 16
  hAccept : remaining * 10 ≤ limitOunces
  hPreviousHeavy : limitOunces < (remaining + 1) * 10
  hRemoved : remaining + removed = initial

theorem plates_limit (m : PlatesModel) : m.limitOunces = 320 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem plates_remaining (m : PlatesModel) : m.remaining = 32 := by
  have h := plates_limit m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem plates_removed (m : PlatesModel) : m.removed = 6 := by
  have h := plates_remaining m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure DanceModel where
  nancy : ℕ
  jason : ℕ
  total : ℕ
  hNancy : nancy = 3 * jason
  hTotal : nancy + jason = 32

theorem dance_relation (m : DanceModel) : m.nancy = 3 * m.jason := by
  exact m.hNancy

theorem dance_jason (m : DanceModel) : m.jason = 8 := by
  have h := dance_relation m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure RecordsModel where
  initial : ℕ
  gifts : ℕ
  bought : ℕ
  total : ℕ
  daysPerRecord : ℕ
  days : ℕ
  hInitial : initial = 8
  hGifts : gifts = 12
  hBought : bought = 30
  hTotal : total = initial + gifts + bought
  hDaysPer : daysPerRecord = 2
  hDays : days = total * daysPerRecord

theorem records_total (m : RecordsModel) : m.total = 50 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem records_days (m : RecordsModel) : m.days = 100 := by
  have h := records_total m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure AnimalsModel where
  goats : ℕ
  sheep : ℕ
  total : ℕ
  soldGoats : ℕ
  soldSheep : ℕ
  goatIncome : ℕ
  sheepIncome : ℕ
  income : ℕ
  hTotal : goats + sheep = 360
  hRatio : 7 * goats = 5 * sheep
  hSoldGoats : 2 * soldGoats = goats
  hSoldSheep : 3 * soldSheep = 2 * sheep
  hGoatIncome : goatIncome = 40 * soldGoats
  hSheepIncome : sheepIncome = 30 * soldSheep
  hIncome : income = goatIncome + sheepIncome

theorem animals_counts (m : AnimalsModel) : m.goats = 150 ∧ m.sheep = 210 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem animals_sold (m : AnimalsModel) : m.soldGoats = 75 ∧ m.soldSheep = 140 := by
  have h := animals_counts m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem animals_incomes (m : AnimalsModel) : m.goatIncome = 3000 ∧ m.sheepIncome = 4200 := by
  have h := animals_sold m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem animals_total_income (m : AnimalsModel) : m.income = 7200 := by
  have h := animals_incomes m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem animals_reference_8600_is_wrong : (7200 : ℕ) ≠ 8600 := by
  norm_num

structure ScoresModel where
  average : ℕ
  percent : ℕ
  reduction : ℕ
  marco : ℕ
  margaret : ℕ
  hAverage : average = 90
  hPercent : percent = 10
  hReduction : 100 * reduction = 10 * 90
  hMarco : marco + reduction = average
  hMargaret : margaret = marco + 5

theorem scores_reduction (m : ScoresModel) : m.reduction = 9 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem scores_marco (m : ScoresModel) : m.marco = 81 := by
  have h := scores_reduction m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem scores_margaret (m : ScoresModel) : m.margaret = 86 := by
  have h := scores_marco m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A10P2
