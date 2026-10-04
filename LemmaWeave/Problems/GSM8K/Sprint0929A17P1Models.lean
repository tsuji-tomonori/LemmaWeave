import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A17P1

structure AirplaneModel where
  startPassengers : ℕ
  texasOff : ℕ
  texasOn : ℕ
  afterTexas : ℕ
  northCarolinaOff : ℕ
  northCarolinaOn : ℕ
  finalPassengers : ℕ
  crew : ℕ
  totalPeople : ℕ
  hStart : startPassengers = 124
  hTexasOff : texasOff = 58
  hTexasOn : texasOn = 24
  hTexasBalance : startPassengers + texasOn = texasOff + afterTexas
  hNorthCarolinaOff : northCarolinaOff = 47
  hNorthCarolinaOn : northCarolinaOn = 14
  hNorthCarolinaBalance : afterTexas + northCarolinaOn = northCarolinaOff + finalPassengers
  hCrew : crew = 10
  hTotal : totalPeople = finalPassengers + crew

theorem airplane_after_texas (m : AirplaneModel) : m.afterTexas = 90 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  omega

theorem airplane_final_passengers (m : AirplaneModel) : m.finalPassengers = 57 := by
  have hTexas := airplane_after_texas m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  omega

theorem airplane_solution (m : AirplaneModel) : m.totalPeople = 67 := by
  have hFinal := airplane_final_passengers m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  omega

structure SingerModel where
  hours : ℕ
  hourlyRate : ℕ
  baseCost : ℕ
  tipPercent : ℕ
  tip : ℕ
  totalPaid : ℕ
  hHours : hours = 3
  hRate : hourlyRate = 15
  hBase : baseCost = hours * hourlyRate
  hPercent : tipPercent = 20
  hTip : 100 * tip = tipPercent * baseCost
  hTotal : totalPaid = baseCost + tip

theorem singer_base_cost (m : SingerModel) : m.baseCost = 45 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  norm_num at * <;> omega

theorem singer_tip (m : SingerModel) : m.tip = 9 := by
  have hBase := singer_base_cost m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  norm_num at * <;> omega

theorem singer_solution (m : SingerModel) : m.totalPaid = 54 := by
  have hBase := singer_base_cost m
  have hTip := singer_tip m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega

structure CarLoanModel where
  carPrice : ℕ
  downPayment : ℕ
  loan : ℕ
  months : ℕ
  basePayment : ℕ
  interestPercent : ℕ
  interest : ℕ
  monthlyTotal : ℕ
  hPrice : carPrice = 32000
  hDown : downPayment = 8000
  hLoan : carPrice = downPayment + loan
  hMonths : months = 48
  hBasePayment : loan = months * basePayment
  hInterestPercent : interestPercent = 5
  hInterest : 100 * interest = interestPercent * basePayment
  hTotal : monthlyTotal = basePayment + interest

theorem car_loan_amount (m : CarLoanModel) : m.loan = 24000 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  omega

theorem car_base_payment (m : CarLoanModel) : m.basePayment = 500 := by
  have hLoan := car_loan_amount m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  norm_num at * <;> omega

theorem car_monthly_interest (m : CarLoanModel) : m.interest = 25 := by
  have hBase := car_base_payment m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  norm_num at * <;> omega

theorem car_solution (m : CarLoanModel) : m.monthlyTotal = 525 := by
  have hBase := car_base_payment m
  have hInterest := car_monthly_interest m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  omega

structure CansModel where
  canCount : ℕ
  beforeEach : ℕ
  beforeTotal : ℕ
  afterPercent : ℕ
  afterTotal : ℕ
  hCount : canCount = 60
  hBeforeEach : beforeEach = 30
  hBeforeTotal : beforeTotal = canCount * beforeEach
  hPercent : afterPercent = 20
  hAfterTotal : 100 * afterTotal = afterPercent * beforeTotal

theorem cans_before_total (m : CansModel) : m.beforeTotal = 1800 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  norm_num at * <;> omega

theorem cans_solution (m : CansModel) : m.afterTotal = 360 := by
  have hBefore := cans_before_total m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  norm_num at * <;> omega

structure SoapModel where
  soapsPerPackage : ℕ
  boxCount : ℕ
  packagesPerBox : ℕ
  soapsPerBox : ℕ
  totalSoaps : ℕ
  hPerPackage : soapsPerPackage = 192
  hBoxes : boxCount = 2
  hPackagesPerBox : packagesPerBox = 6
  hPerBox : soapsPerBox = soapsPerPackage * packagesPerBox
  hTotal : totalSoaps = boxCount * soapsPerBox

theorem soap_per_box (m : SoapModel) : m.soapsPerBox = 1152 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  norm_num at *

theorem soap_solution (m : SoapModel) : m.totalSoaps = 2304 := by
  have hPerBox := soap_per_box m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  norm_num at *

end LemmaWeave.Problems.GSM8K.Sprint0929A17P1
