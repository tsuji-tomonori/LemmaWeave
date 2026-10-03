import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1001A11P3

structure CarriageModel where
  distance : ℕ
  speed : ℕ
  hours : ℕ
  hourlyRate : ℕ
  flatFee : ℕ
  cost : ℕ
  hDistance : distance = 20
  hSpeed : speed = 10
  hTravel : distance = 10 * hours
  hRate : hourlyRate = 30
  hFlat : flatFee = 20
  hCost : cost = 30 * hours + flatFee

theorem carriage_hours (m : CarriageModel) : m.hours = 2 := by
  cases m <;> dsimp at * <;> omega

theorem carriage_cost (m : CarriageModel) : m.cost = 80 := by
  have h := carriage_hours m
  cases m <;> dsimp at * <;> omega

structure PensModel where
  pencils : ℕ
  blue : ℕ
  black : ℕ
  red : ℕ
  totalPens : ℕ
  hPencils : pencils = 8
  hBlue : blue = 2 * pencils
  hBlack : black = blue + 10
  hRed : red + 2 = pencils
  hTotal : totalPens = blue + black + red

theorem pens_blue (m : PensModel) : m.blue = 16 := by
  cases m <;> dsimp at * <;> omega

theorem pens_black_and_red (m : PensModel) : m.black = 26 ∧ m.red = 6 := by
  have h := pens_blue m
  cases m <;> dsimp at * <;> omega

theorem pens_total (m : PensModel) : m.totalPens = 48 := by
  have h1 := pens_blue m
  have h2 := pens_black_and_red m
  cases m <;> dsimp at * <;> omega

structure CardsModel where
  students : ℕ
  each : ℕ
  distributed : ℕ
  left : ℕ
  original : ℕ
  hStudents : students = 15
  hEach : each = 23
  hDistributed : distributed = 23 * students
  hLeft : left = 12
  hOriginal : original = distributed + left

theorem cards_distributed (m : CardsModel) : m.distributed = 345 := by
  cases m <;> dsimp at * <;> omega

theorem cards_original (m : CardsModel) : m.original = 357 := by
  have h := cards_distributed m
  cases m <;> dsimp at * <;> omega

structure InstallmentModel where
  inheritance : ℕ
  price : ℕ
  upfront : ℕ
  remaining : ℕ
  months : ℕ
  monthly : ℕ
  hInheritance : inheritance = 20000
  hPrice : price = 18000
  hUpfront : upfront = 3000
  hBalance : price = upfront + remaining
  hMonths : months = 6
  hInstallments : remaining = 6 * monthly

theorem installments_remaining (m : InstallmentModel) : m.remaining = 15000 := by
  cases m <;> dsimp at * <;> omega

theorem installments_monthly (m : InstallmentModel) : m.monthly = 2500 := by
  have h := installments_remaining m
  cases m <;> dsimp at * <;> omega

structure TankModel where
  capacity : ℕ
  initial : ℕ
  removed : ℕ
  remaining : ℕ
  added : ℕ
  final : ℕ
  hCapacity : capacity = 8000
  hInitial : 4 * initial = 3 * capacity
  hRemoved : 100 * removed = 40 * initial
  hRemaining : initial = removed + remaining
  hAdded : 100 * added = 30 * remaining
  hFinal : final = remaining + added

theorem tank_initial (m : TankModel) : m.initial = 6000 := by
  cases m <;> dsimp at * <;> omega

theorem tank_removed (m : TankModel) : m.removed = 2400 := by
  have h := tank_initial m
  cases m <;> dsimp at * <;> omega

theorem tank_remaining (m : TankModel) : m.remaining = 3600 := by
  have h1 := tank_initial m
  have h2 := tank_removed m
  cases m <;> dsimp at * <;> omega

theorem tank_added (m : TankModel) : m.added = 1080 := by
  have h := tank_remaining m
  cases m <;> dsimp at * <;> omega

theorem tank_final (m : TankModel) : m.final = 4680 := by
  have h1 := tank_remaining m
  have h2 := tank_added m
  cases m <;> dsimp at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A11P3
