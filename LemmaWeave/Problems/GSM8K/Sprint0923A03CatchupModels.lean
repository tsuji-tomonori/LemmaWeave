import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup

structure CreditCard where
  afterPayment : ℕ
  interest : ℕ
  final : ℕ
  hAfter : afterPayment + 50 = 150
  hInterest : interest * 100 = afterPayment * 20
  hFinal : final = afterPayment + interest

theorem credit_after_payment (m : CreditCard) : m.afterPayment = 100 := by cases m <;> omega
theorem credit_interest (m : CreditCard) : m.interest = 20 := by
  have h := m.hInterest
  rw [credit_after_payment m] at h
  omega
theorem credit_solution (m : CreditCard) : m.final = 120 := by
  rw [m.hFinal, credit_after_payment m, credit_interest m]

structure DiscountedShoes where original : ℕ
  hPaid : original * 80 = 480 * 100

theorem shoes_paid_percent : 100 - 20 = 80 := by omega
theorem shoes_solution (m : DiscountedShoes) : m.original = 600 := by
  have h := m.hPaid
  omega

structure DogWeights where
  ivan : ℕ
  total : ℕ
  hIvan : ivan * 7 = 63
  hTotal : total = 63 + ivan

theorem dogs_ivan (m : DogWeights) : m.ivan = 9 := by cases m <;> omega
theorem dogs_solution (m : DogWeights) : m.total = 72 := by
  rw [m.hTotal, dogs_ivan m]

structure RaceAverage where
  speed2 : ℕ
  speed3 : ℕ
  time1 : ℕ
  time2 : ℕ
  time3 : ℕ
  totalTime : ℕ
  average : ℕ
  hSpeed2 : speed2 = 150 + 50
  hSpeed3 : speed3 = 2 * 150
  hTime1 : time1 * 150 = 3 * 3600
  hTime2 : time2 * speed2 = 2 * 3600
  hTime3 : time3 * speed3 = 1 * 3600
  hTotalTime : totalTime = time1 + time2 + time3
  hAverage : average * totalTime = 6 * 3600

theorem race_speeds (m : RaceAverage) : m.speed2 = 200 ∧ m.speed3 = 300 := by
  constructor <;> omega
theorem race_time1 (m : RaceAverage) : m.time1 = 72 := by cases m <;> omega
theorem race_time2 (m : RaceAverage) : m.time2 = 36 := by
  have h := m.hTime2
  rw [(race_speeds m).1] at h
  omega
theorem race_time3 (m : RaceAverage) : m.time3 = 12 := by
  have h := m.hTime3
  rw [(race_speeds m).2] at h
  omega
theorem race_total_time (m : RaceAverage) : m.totalTime = 120 := by
  rw [m.hTotalTime, race_time1 m, race_time2 m, race_time3 m]
theorem race_solution (m : RaceAverage) : m.average = 180 := by
  have h := m.hAverage
  rw [race_total_time m] at h
  omega

structure SharedMoney where
  howard : ℕ
  total : ℕ
  each : ℕ
  hHoward : howard + 30 = 150
  hTotal : total = 150 + howard
  hEach : each * 2 = total

theorem money_howard (m : SharedMoney) : m.howard = 120 := by cases m <;> omega
theorem money_total (m : SharedMoney) : m.total = 270 := by rw [m.hTotal, money_howard m]
theorem money_solution (m : SharedMoney) : m.each = 135 := by
  have h := m.hEach
  rw [money_total m] at h
  omega

structure Scrapbook where
  added : ℕ
  total : ℕ
  hAdded : added * 4 = 72
  hTotal : total = 18 + added

theorem stamps_added (m : Scrapbook) : m.added = 18 := by cases m <;> omega
theorem stamps_solution (m : Scrapbook) : m.total = 36 := by rw [m.hTotal, stamps_added m]

structure MedicalCosts where
  mri : ℕ
  total : ℕ
  covered : ℕ
  paid : ℕ
  hMri : mri = 3 * 250
  hTotal : total = 250 + mri
  hCovered : covered * 100 = total * 80
  hPaid : paid + covered = total

theorem medical_mri (m : MedicalCosts) : m.mri = 750 := by rw [m.hMri]
theorem medical_total (m : MedicalCosts) : m.total = 1000 := by rw [m.hTotal, medical_mri m]
theorem medical_covered (m : MedicalCosts) : m.covered = 800 := by
  have h := m.hCovered
  rw [medical_total m] at h
  omega
theorem medical_solution (m : MedicalCosts) : m.paid = 200 := by
  have h := m.hPaid
  rw [medical_total m, medical_covered m] at h
  omega

structure SchoolPopulation where
  female : ℕ
  male : ℕ
  foreignMale : ℕ
  nonForeignMale : ℕ
  hFemale : female * 3 = 300 * 2
  hMale : male + female = 300
  hForeign : foreignMale * 10 = male
  hNonForeign : nonForeignMale + foreignMale = male

theorem school_female (m : SchoolPopulation) : m.female = 200 := by cases m <;> omega
theorem school_male (m : SchoolPopulation) : m.male = 100 := by
  have h := m.hMale
  rw [school_female m] at h
  omega
theorem school_foreign_male (m : SchoolPopulation) : m.foreignMale = 10 := by
  have h := m.hForeign
  rw [school_male m] at h
  omega
theorem school_solution (m : SchoolPopulation) : m.nonForeignMale = 90 := by
  have h := m.hNonForeign
  rw [school_male m, school_foreign_male m] at h
  omega

structure SockProfit where
  firstEach : ℕ
  firstTotal : ℕ
  otherTotal : ℕ
  totalCents : ℕ
  totalDollars : ℕ
  hFirstEach : firstEach * 100 = 200 * 25
  hFirstTotal : firstTotal = 4 * firstEach
  hOtherTotal : otherTotal = 5 * 20
  hTotalCents : totalCents = firstTotal + otherTotal
  hDollars : totalCents = totalDollars * 100

theorem socks_first_each (m : SockProfit) : m.firstEach = 50 := by cases m <;> omega
theorem socks_first_total (m : SockProfit) : m.firstTotal = 200 := by
  rw [m.hFirstTotal, socks_first_each m]
theorem socks_other_total (m : SockProfit) : m.otherTotal = 100 := by rw [m.hOtherTotal]
theorem socks_total_cents (m : SockProfit) : m.totalCents = 300 := by
  rw [m.hTotalCents, socks_first_total m, socks_other_total m]
theorem socks_solution (m : SockProfit) : m.totalDollars = 3 := by
  have h := m.hDollars
  rw [socks_total_cents m] at h
  omega

structure Heights where
  kelly : ℕ
  jana : ℕ
  hKelly : kelly + 3 = 72
  hJana : jana = kelly + 5

theorem height_kelly (m : Heights) : m.kelly = 69 := by cases m <;> omega
theorem height_solution (m : Heights) : m.jana = 74 := by rw [m.hJana, height_kelly m]

structure BugCollection where
  crickets : ℕ
  caterpillars : ℕ
  total : ℕ
  hCrickets : crickets * 2 = 12
  hCaterpillars : caterpillars = 2 * 3
  hTotal : total = 12 + 3 + crickets + caterpillars

theorem bugs_crickets (m : BugCollection) : m.crickets = 6 := by cases m <;> omega
theorem bugs_caterpillars (m : BugCollection) : m.caterpillars = 6 := by rw [m.hCaterpillars]
theorem bugs_solution (m : BugCollection) : m.total = 27 := by
  rw [m.hTotal, bugs_crickets m, bugs_caterpillars m]

structure DoughnutSavings where
  singles : ℕ
  doubles : ℕ
  saving : ℕ
  hSingles : singles = 6 * 8
  hDoubles : doubles = 3 * 14
  hSaving : saving + doubles = singles

theorem doughnuts_singles (m : DoughnutSavings) : m.singles = 48 := by rw [m.hSingles]
theorem doughnuts_doubles (m : DoughnutSavings) : m.doubles = 42 := by rw [m.hDoubles]
theorem doughnuts_solution (m : DoughnutSavings) : m.saving = 6 := by
  have h := m.hSaving
  rw [doughnuts_singles m, doughnuts_doubles m] at h
  omega

structure LongJump where
  margaritaJump : ℕ
  margaritaTotal : ℕ
  farther : ℕ
  hJump : margaritaJump + 1 = 2 * 4
  hTotal : margaritaTotal = 18 + margaritaJump
  hFarther : farther + 24 = margaritaTotal

theorem longjump_jump (m : LongJump) : m.margaritaJump = 7 := by cases m <;> omega
theorem longjump_total (m : LongJump) : m.margaritaTotal = 25 := by rw [m.hTotal, longjump_jump m]
theorem longjump_solution (m : LongJump) : m.farther = 1 := by
  have h := m.hFarther
  rw [longjump_total m] at h
  omega

structure IceCream where
  chocolateUsed : ℕ
  vanillaUsed : ℕ
  strawberryUsed : ℕ
  used : ℕ
  remaining : ℕ
  hChocolate : chocolateUsed = 1 + 3 * 2
  hVanilla : vanillaUsed = 1 + 1 + 2
  hStrawberry : strawberryUsed = 1 + 2
  hUsed : used = chocolateUsed + vanillaUsed + strawberryUsed
  hRemaining : remaining + used = 3 * 10

theorem icecream_flavors (m : IceCream) :
    m.chocolateUsed = 7 ∧ m.vanillaUsed = 4 ∧ m.strawberryUsed = 3 := by
  constructor
  · rw [m.hChocolate]
  constructor
  · rw [m.hVanilla]
  · rw [m.hStrawberry]
theorem icecream_used (m : IceCream) : m.used = 14 := by
  obtain ⟨hc, hv, hs⟩ := icecream_flavors m
  rw [m.hUsed, hc, hv, hs]
theorem icecream_solution (m : IceCream) : m.remaining = 16 := by
  have h := m.hRemaining
  rw [icecream_used m] at h
  omega

/-- Intended reading: Adam keeps half of the 36 articles he had selected for donation. -/
structure WardrobeDonation where
  pajamas : ℕ
  adamSelected : ℕ
  friends : ℕ
  adamActual : ℕ
  total : ℕ
  hPajamas : pajamas = 4 * 2
  hAdamSelected : adamSelected = 4 + 4 + pajamas + 20
  hFriends : friends = 3 * adamSelected
  hAdamActual : adamActual * 2 = adamSelected
  hTotal : total = friends + adamActual

theorem wardrobe_pajamas (m : WardrobeDonation) : m.pajamas = 8 := by rw [m.hPajamas]
theorem wardrobe_adam_selected (m : WardrobeDonation) : m.adamSelected = 36 := by
  rw [m.hAdamSelected, wardrobe_pajamas m]
theorem wardrobe_friends (m : WardrobeDonation) : m.friends = 108 := by
  rw [m.hFriends, wardrobe_adam_selected m]
theorem wardrobe_adam_actual (m : WardrobeDonation) : m.adamActual = 18 := by
  have h := m.hAdamActual
  rw [wardrobe_adam_selected m] at h
  omega
theorem wardrobe_solution (m : WardrobeDonation) : m.total = 126 := by
  rw [m.hTotal, wardrobe_friends m, wardrobe_adam_actual m]

end LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup
