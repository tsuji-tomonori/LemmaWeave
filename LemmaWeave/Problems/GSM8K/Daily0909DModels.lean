import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0909D

def GroundBeef
    (packageWeight firstPackages secondPackages thirdPackages totalWeight
     firstWeight secondWeight knownWeight remainingWeight : ℕ) : Prop :=
  packageWeight = 4 ∧ firstPackages = 10 ∧ secondPackages = 7 ∧ totalWeight = 100 ∧
  firstWeight = firstPackages * packageWeight ∧
  secondWeight = secondPackages * packageWeight ∧
  knownWeight = firstWeight + secondWeight ∧
  remainingWeight = totalWeight - knownWeight ∧
  remainingWeight = thirdPackages * packageWeight

def Television
    (jeopardyMinutes jeopardyEpisodes wheelMinutes wheelEpisodes
     jeopardyTotal wheelTotal totalMinutes hours : ℕ) : Prop :=
  jeopardyMinutes = 20 ∧ jeopardyEpisodes = 2 ∧
  wheelMinutes = 2 * jeopardyMinutes ∧ wheelEpisodes = 2 ∧
  jeopardyTotal = jeopardyEpisodes * jeopardyMinutes ∧
  wheelTotal = wheelEpisodes * wheelMinutes ∧
  totalMinutes = jeopardyTotal + wheelTotal ∧ 60 * hours = totalMinutes

def RoomCleaning
    (richard cory blake oneSession sessions weekly : ℕ) : Prop :=
  richard = 22 ∧ cory = richard + 3 ∧ blake + 4 = cory ∧
  oneSession = richard + cory + blake ∧ sessions = 2 ∧ weekly = oneSession * sessions

def Crayons
    (green blue givenGreen givenBlue initial given left : ℕ) : Prop :=
  green = 5 ∧ blue = 8 ∧ givenGreen = 3 ∧ givenBlue = 1 ∧
  initial = green + blue ∧ given = givenGreen + givenBlue ∧ left = initial - given

def LotteryTakeHome
    (prize tax fee afterTax takeHome : ℕ) : Prop :=
  prize = 50 ∧ 100 * tax = 20 * prize ∧ fee = 5 ∧
  afterTax = prize - tax ∧ takeHome = afterTax - fee

def FutureAges
    (years ernestoNow ernestoFuture jaydenNow jaydenFuture : ℕ) : Prop :=
  years = 3 ∧ ernestoNow = 11 ∧ ernestoFuture = ernestoNow + years ∧
  2 * jaydenFuture = ernestoFuture ∧ jaydenFuture = jaydenNow + years

def MessengerDeliveries (meals packages total : ℕ) : Prop :=
  packages = 8 * meals ∧ total = meals + packages ∧ total = 27

def TextMessages (lastWeek thisWeek combined : ℕ) : Prop :=
  lastWeek = 111 ∧ thisWeek = 2 * lastWeek - 50 ∧ combined = lastWeek + thisWeek

def NewspaperSubscription (regular discount discounted : ℕ) : Prop :=
  regular = 80 ∧ 100 * discount = 45 * regular ∧ discounted = regular - discount

def MedicalPayments
    (doctor doctorCovered doctorPaid cat catCovered catPaid totalPaid : ℕ) : Prop :=
  doctor = 300 ∧ 4 * doctorCovered = 3 * doctor ∧
  doctorPaid = doctor - doctorCovered ∧ cat = 120 ∧ catCovered = 60 ∧
  catPaid = cat - catCovered ∧ totalPaid = doctorPaid + catPaid

end LemmaWeave.Problems.GSM8K.Daily0909D
