import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A01P3

structure MothersRosesModel where
  lastYear thisYear target needed price spend : ℕ
  hLastYear : lastYear = 12
  hThisYear : 2 * thisYear = lastYear
  hTarget : target = 2 * lastYear
  hNeeded : thisYear + needed = target
  hPrice : price = 3
  hSpend : spend = needed * price

theorem mothers_roses_this_year (m : MothersRosesModel) : m.thisYear = 6 := by
  cases m <;> omega

theorem mothers_roses_target (m : MothersRosesModel) : m.target = 24 := by
  cases m <;> omega

theorem mothers_roses_needed (m : MothersRosesModel) : m.needed = 18 := by
  have h1 := mothers_roses_this_year m
  have h2 := mothers_roses_target m
  cases m <;> omega

theorem mothers_roses_spend (m : MothersRosesModel) : m.spend = 54 := by
  have h := mothers_roses_needed m
  cases m <;> omega

structure PensModel where
  robert julia dorothy total costPerPenCents totalCostCents : ℕ
  hRobert : robert = 4
  hJulia : julia = 3 * robert
  hDorothy : 2 * dorothy = julia
  hTotal : total = robert + julia + dorothy
  hCost : costPerPenCents = 150
  hTotalCost : totalCostCents = total * costPerPenCents

theorem pens_julia (m : PensModel) : m.julia = 12 := by
  cases m <;> omega

theorem pens_dorothy (m : PensModel) : m.dorothy = 6 := by
  have h := pens_julia m
  cases m <;> omega

theorem pens_total (m : PensModel) : m.total = 22 := by
  have h1 := pens_julia m
  have h2 := pens_dorothy m
  cases m <;> omega

theorem pens_total_cost (m : PensModel) : m.totalCostCents = 3300 := by
  have h := pens_total m
  cases m <;> omega

structure ShuffleboardModel where
  jerry dave ken totalGames : ℕ
  hJerry : jerry = 7
  hDave : dave = jerry + 3
  hKen : ken = dave + 5
  hNoDrawCount : totalGames = jerry + dave + ken

theorem shuffleboard_dave (m : ShuffleboardModel) : m.dave = 10 := by
  cases m <;> omega

theorem shuffleboard_ken (m : ShuffleboardModel) : m.ken = 15 := by
  have h := shuffleboard_dave m
  cases m <;> omega

theorem shuffleboard_total (m : ShuffleboardModel) : m.totalGames = 32 := by
  have h1 := shuffleboard_dave m
  have h2 := shuffleboard_ken m
  cases m <;> omega

structure PatioModel where
  total table chairs chairCost : ℕ
  hTotal : total = 135
  hTable : table = 55
  hChairs : chairs = 4
  hSplit : table + chairs * chairCost = total

theorem patio_chairs_total (m : PatioModel) : m.chairs * m.chairCost = 80 := by
  cases m <;> omega

theorem patio_each_chair (m : PatioModel) : m.chairCost = 20 := by
  have h := patio_chairs_total m
  cases m <;> omega

structure MedicationModel where
  months visits visitCost doctorCost pillsPerDay pillCost dailyRetail dailyPatient days medicationCost total : ℕ
  hMonths : months = 12
  hVisits : 6 * visits = months
  hVisitCost : visitCost = 400
  hDoctorCost : doctorCost = visits * visitCost
  hPills : pillsPerDay = 2
  hPillCost : pillCost = 5
  hDailyRetail : dailyRetail = pillsPerDay * pillCost
  hPatientShare : 5 * dailyPatient = dailyRetail
  hDays : days = 365
  hMedication : medicationCost = dailyPatient * days
  hTotal : total = doctorCost + medicationCost

theorem medication_visits (m : MedicationModel) : m.visits = 2 := by
  cases m <;> omega

theorem medication_doctor_cost (m : MedicationModel) : m.doctorCost = 800 := by
  have h := medication_visits m
  cases m <;> omega

theorem medication_daily_retail (m : MedicationModel) : m.dailyRetail = 10 := by
  cases m <;> omega

theorem medication_daily_patient (m : MedicationModel) : m.dailyPatient = 2 := by
  have h := medication_daily_retail m
  cases m <;> omega

theorem medication_yearly_cost (m : MedicationModel) : m.medicationCost = 730 := by
  have h := medication_daily_patient m
  cases m <;> omega

theorem medication_total (m : MedicationModel) : m.total = 1530 := by
  have h1 := medication_doctor_cost m
  have h2 := medication_yearly_cost m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A01P3
