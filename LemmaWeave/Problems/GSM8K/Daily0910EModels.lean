import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0910E

def BookPages
    (inches pagesPerInch totalPages books averagePages : ℕ) : Prop :=
  inches = 12 ∧ pagesPerInch = 80 ∧ totalPages = inches * pagesPerInch ∧
  books = 6 ∧ averagePages * books = totalPages

def PartyPlates
    (invited halfInvited plusOnes attendees courses plates : ℕ) : Prop :=
  invited = 30 ∧ 2 * halfInvited = invited ∧ plusOnes = halfInvited ∧
  attendees = invited + plusOnes ∧ courses = 3 ∧ plates = attendees * courses

/-- 出生・死亡が毎月一定で、ほかの増減がないモデル。 -/
def LionPopulation
    (birthsPerMonth deathsPerMonth netPerMonth months increase final initial : ℕ) : Prop :=
  birthsPerMonth = 5 ∧ deathsPerMonth = 1 ∧
  netPerMonth = birthsPerMonth - deathsPerMonth ∧ months = 12 ∧
  increase = netPerMonth * months ∧ final = 148 ∧ final = initial + increase

def VolunteerHours
    (visitsPerMonth monthsPerYear visitsPerYear hoursPerVisit totalHours : ℕ) : Prop :=
  visitsPerMonth = 2 ∧ monthsPerYear = 12 ∧
  visitsPerYear = visitsPerMonth * monthsPerYear ∧
  hoursPerVisit = 3 ∧ totalHours = visitsPerYear * hoursPerVisit

def VacationSavings
    (monthly monthsPerYear years months totalSaved repair left : ℕ) : Prop :=
  monthly = 25 ∧ monthsPerYear = 12 ∧ years = 2 ∧
  months = years * monthsPerYear ∧ totalSaved = monthly * months ∧
  repair = 400 ∧ totalSaved = left + repair

def FieldTripGirls
    (vans studentsPerVan totalStudents boys girls : ℕ) : Prop :=
  vans = 5 ∧ studentsPerVan = 28 ∧ totalStudents = vans * studentsPerVan ∧
  boys = 60 ∧ totalStudents = boys + girls

/-- 毎年の「50%増」を、前年の150%になる複利的増加として表す。 -/
def ToyCars
    (initial percentBase afterGrowthPercent year1 year2 year3 : ℕ) : Prop :=
  initial = 16 ∧ percentBase = 100 ∧ afterGrowthPercent = 150 ∧
  percentBase * year1 = afterGrowthPercent * initial ∧
  percentBase * year2 = afterGrowthPercent * year1 ∧
  percentBase * year3 = afterGrowthPercent * year2

def AnnualExpenseIncrease
    (oldRent rentPercent percentBase rentIncrease oldFood foodPercent foodIncrease
     oldInsurance insuranceMultiplier newInsurance insuranceIncrease monthlyIncrease
     months annualIncrease : ℕ) : Prop :=
  oldRent = 1000 ∧ rentPercent = 30 ∧ percentBase = 100 ∧
  percentBase * rentIncrease = rentPercent * oldRent ∧
  oldFood = 200 ∧ foodPercent = 50 ∧
  percentBase * foodIncrease = foodPercent * oldFood ∧
  oldInsurance = 100 ∧ insuranceMultiplier = 3 ∧
  newInsurance = insuranceMultiplier * oldInsurance ∧
  insuranceIncrease = newInsurance - oldInsurance ∧
  monthlyIncrease = rentIncrease + foodIncrease + insuranceIncrease ∧
  months = 12 ∧ annualIncrease = monthlyIncrease * months

/-- 1年を52週、毎年2週休み、残る週の平日5日をすべて練習日とする。 -/
def PianoPractice
    (currentAge targetAge years totalHours annualHours weeksPerYear vacationWeeks
     practiceWeeks daysPerWeek practiceDays dailyHours : ℕ) : Prop :=
  currentAge = 12 ∧ targetAge = 20 ∧ years = targetAge - currentAge ∧
  totalHours = 10000 ∧ annualHours * years = totalHours ∧
  weeksPerYear = 52 ∧ vacationWeeks = 2 ∧
  practiceWeeks = weeksPerYear - vacationWeeks ∧ daysPerWeek = 5 ∧
  practiceDays = practiceWeeks * daysPerWeek ∧ dailyHours * practiceDays = annualHours

def TomatoSeeds
    (mikeMorning tedMultiplier tedMorning morningTotal mikeAfternoon fewer
     tedAfternoon afternoonTotal total : ℕ) : Prop :=
  mikeMorning = 50 ∧ tedMultiplier = 2 ∧ tedMorning = tedMultiplier * mikeMorning ∧
  morningTotal = mikeMorning + tedMorning ∧ mikeAfternoon = 60 ∧ fewer = 20 ∧
  tedAfternoon = mikeAfternoon - fewer ∧
  afternoonTotal = mikeAfternoon + tedAfternoon ∧ total = morningTotal + afternoonTotal

end LemmaWeave.Problems.GSM8K.Daily0910E
