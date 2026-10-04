import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0929A12P2

structure TutoringModel where
  firstHours : ℕ
  secondHours : ℕ
  totalHours : ℕ
  hourlyDollars : ℕ
  earnings : ℕ
  spent : ℕ
  saved : ℕ
  hFirst : firstHours = 35
  hSecond : secondHours = firstHours + 5
  hTotal : totalHours = firstHours + secondHours
  hRate : hourlyDollars = 10
  hEarnings : earnings = 10 * totalHours
  hSpent : 5 * spent = 4 * earnings
  hSaved : saved + spent = earnings

theorem tutoring_second (m : TutoringModel) : m.secondHours = 40 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  dsimp at *
  simp_all

theorem tutoring_earnings (m : TutoringModel) : m.earnings = 750 := by
  have hPrev := tutoring_second m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  dsimp at *
  simp_all

theorem tutoring_solution (m : TutoringModel) : m.saved = 150 := by
  have hPrev := tutoring_earnings m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  dsimp at *
  simp_all <;> omega

structure SoupModel where
  vegetableHalfCups : ℕ
  brothHalfCups : ℕ
  servingHalfCups : ℕ
  servings : ℕ
  totalHalfCups : ℕ
  pints : ℕ
  hVegetables : vegetableHalfCups = 2
  hBroth : brothHalfCups = 5
  hServing : servingHalfCups = vegetableHalfCups + brothHalfCups
  hServings : servings = 8
  hTotal : totalHalfCups = 8 * servingHalfCups
  hPints : totalHalfCups = 4 * pints

theorem soup_per_serving (m : SoupModel) : m.servingHalfCups = 7 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  simp_all

theorem soup_total (m : SoupModel) : m.totalHalfCups = 56 := by
  have hPrev := soup_per_serving m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  simp_all

theorem soup_solution (m : SoupModel) : m.pints = 14 := by
  have hPrev := soup_total m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  simp_all <;> omega

structure RetirementModel where
  daughterThen : ℕ
  daughterNow : ℕ
  peter : ℕ
  robert : ℕ
  mike : ℕ
  tom : ℕ
  roger : ℕ
  remaining : ℕ
  hDaughterThen : daughterThen = 7
  hDaughterNow : daughterNow = 19
  hPeter : peter + daughterThen = daughterNow
  hRobert : robert + 4 = peter
  hMike : mike + 2 = robert
  hTom : tom = 2 * robert
  hRoger : roger = peter + robert + mike + tom
  hRemaining : remaining + roger = 50

theorem retirement_peter (m : RetirementModel) : m.peter = 12 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  simp_all <;> omega

theorem retirement_others (m : RetirementModel) :
    m.robert = 8 ∧ m.mike = 6 ∧ m.tom = 16 := by
  have hPrev := retirement_peter m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  simp_all <;> omega

theorem retirement_roger (m : RetirementModel) : m.roger = 42 := by
  have hPrev := retirement_others m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  simp_all

theorem retirement_solution (m : RetirementModel) : m.remaining = 8 := by
  have hPrev := retirement_roger m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  simp_all <;> omega

structure ToasterModel where
  msrp : ℕ
  insurance : ℕ
  preTax : ℕ
  tax : ℕ
  total : ℕ
  hMsrp : msrp = 30
  hInsurance : 5 * insurance = msrp
  hPreTax : preTax = msrp + insurance
  hTax : 2 * tax = preTax
  hTotal : total = preTax + tax

theorem toaster_insurance (m : ToasterModel) : m.insurance = 6 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  simp_all <;> omega

theorem toaster_pretax (m : ToasterModel) : m.preTax = 36 := by
  have hPrev := toaster_insurance m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  simp_all

theorem toaster_tax (m : ToasterModel) : m.tax = 18 := by
  have hPrev := toaster_pretax m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  simp_all <;> omega

theorem toaster_solution (m : ToasterModel) : m.total = 54 := by
  have hPrev := toaster_tax m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  simp_all

structure HandlesModel where
  originalPerHand : ℕ
  doubledPerHand : ℕ
  extraPerHand : ℕ
  finalPerHand : ℕ
  total : ℕ
  hOriginal : originalPerHand = 80
  hDoubled : doubledPerHand = 2 * originalPerHand
  hExtra : 10 * extraPerHand = doubledPerHand
  hFinal : finalPerHand = doubledPerHand + extraPerHand
  hTotal : total = 2 * finalPerHand

theorem handles_doubled (m : HandlesModel) : m.doubledPerHand = 160 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  simp_all

theorem handles_extra (m : HandlesModel) : m.extraPerHand = 16 := by
  have hPrev := handles_doubled m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  simp_all <;> omega

theorem handles_per_hand (m : HandlesModel) : m.finalPerHand = 176 := by
  have hPrev := handles_extra m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  simp_all

theorem handles_solution (m : HandlesModel) : m.total = 352 := by
  rw [m.hTotal, handles_per_hand m]

end LemmaWeave.Problems.GSM8K.Sprint0929A12P2
