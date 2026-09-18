import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0912C

def MassageVibrations
    (base percent increase high minutes seconds total : ℕ) : Prop :=
  base = 1600 ∧ percent = 60 ∧ 100 * increase = percent * base ∧
  high = base + increase ∧ minutes = 5 ∧ seconds = minutes * 60 ∧
  total = high * seconds

def ShowSchedule
    (episodes minutesEach totalMinutes minutesPerHour totalHours days hoursPerDay : ℕ) : Prop :=
  episodes = 20 ∧ minutesEach = 30 ∧ totalMinutes = episodes * minutesEach ∧
  minutesPerHour = 60 ∧ totalMinutes = minutesPerHour * totalHours ∧
  days = 5 ∧ totalHours = days * hoursPerDay

def MinibusAttendance
    (assigned boys initialGirls attendingGirls absentGirls : ℕ) : Prop :=
  assigned = 18 ∧ boys = 8 ∧ assigned = boys + initialGirls ∧
  attendingGirls = boys ∧ initialGirls = attendingGirls + absentGirls

def TuitionPayment
    (tuition scholarshipPercent scholarship afterScholarship monthly months earnings remaining : ℕ) : Prop :=
  tuition = 90 ∧ scholarshipPercent = 30 ∧
  100 * scholarship = scholarshipPercent * tuition ∧
  tuition = scholarship + afterScholarship ∧ monthly = 15 ∧ months = 3 ∧
  earnings = monthly * months ∧ afterScholarship = earnings + remaining

/-- 「3 times more expensive」の全体倍率を引数にした条件付きモデル。 -/
def GymMemberships
    (multiplier months cheapMonthly cheapSignup cheapAnnual expensiveMonthly expensiveSignup
     expensiveAnnual total : ℕ) : Prop :=
  months = 12 ∧ cheapMonthly = 10 ∧ cheapSignup = 50 ∧
  cheapAnnual = months * cheapMonthly + cheapSignup ∧
  expensiveMonthly = multiplier * cheapMonthly ∧
  expensiveSignup = 4 * expensiveMonthly ∧
  expensiveAnnual = months * expensiveMonthly + expensiveSignup ∧
  total = cheapAnnual + expensiveAnnual

def ModelCars (chevys fords buicks total : ℕ) : Prop :=
  total = 301 ∧ fords = 2 * chevys + 3 ∧ buicks = 4 * fords ∧
  total = chevys + fords + buicks

def EggTrip
    (dozens perDozen totalEggs adults adultEach adultEggs girls girlEach boys boyEach : ℕ) : Prop :=
  dozens = 3 ∧ perDozen = 12 ∧ totalEggs = dozens * perDozen ∧
  adults = 3 ∧ adultEach = 3 ∧ adultEggs = adults * adultEach ∧
  girls = 7 ∧ girlEach = 1 ∧ boyEach = girlEach + 1 ∧
  totalEggs = adultEggs + girls * girlEach + boys * boyEach

def FuelUse
    (thisWeek percent reduction lastWeek total : ℕ) : Prop :=
  thisWeek = 15 ∧ percent = 20 ∧ 100 * reduction = percent * thisWeek ∧
  thisWeek = lastWeek + reduction ∧ total = thisWeek + lastWeek

def ScarfKnitting
    (perYarn red blue yellow totalYarns totalScarves : ℕ) : Prop :=
  perYarn = 3 ∧ red = 2 ∧ blue = 6 ∧ yellow = 4 ∧
  totalYarns = red + blue + yellow ∧ totalScarves = perYarn * totalYarns

def OperaTime (singing practice tantrums total : ℕ) : Prop :=
  singing = 6 ∧ practice = 3 * singing ∧ tantrums = 5 * singing ∧
  total = practice + tantrums + singing

end LemmaWeave.Problems.GSM8K.Daily0912C
