import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0909E

def SimpleInterest
    (daniella difference principal annualInterest years totalInterest final : ℕ) : Prop :=
  daniella = 400 ∧ difference = 200 ∧ principal = daniella + difference ∧
  100 * annualInterest = 10 * principal ∧ years = 2 ∧
  totalInterest = years * annualInterest ∧ final = principal + totalInterest

def MangoHarvest
    (totalKg marketKg afterMarket communityKg remainingKg perKg mangoes : ℕ) : Prop :=
  totalKg = 60 ∧ marketKg = 20 ∧ afterMarket = totalKg - marketKg ∧
  2 * communityKg = afterMarket ∧ remainingKg = afterMarket - communityKg ∧
  perKg = 8 ∧ mangoes = remainingKg * perKg

def TripFood
    (sandwich juice subtotal milk total : ℕ) : Prop :=
  sandwich = 4 ∧ juice = 2 * sandwich ∧ subtotal = sandwich + juice ∧
  100 * milk = 75 * subtotal ∧ total = subtotal + milk

def BeadRemoval
    (blue yellow total parts each doubled left removed : ℕ) : Prop :=
  blue = 23 ∧ yellow = 16 ∧ total = blue + yellow ∧ parts = 3 ∧
  parts * each = total ∧ doubled = 6 ∧ 2 * left = doubled ∧ removed = each - left

def BicycleTrip
    (goal daily days prior finalDay : ℕ) : Prop :=
  goal = 150 ∧ daily = 12 ∧ days = 12 ∧ prior = daily * days ∧
  finalDay = goal - prior

def WeekendHaircut (weekday increase weekend : ℕ) : Prop :=
  weekday = 18 ∧ 2 * increase = weekday ∧ weekend = weekday + increase

def BlockParty
    (otherPeople people burgerPounds burgerPrice burgerCost supplies nonAlcohol
     share alcohol total : ℕ) : Prop :=
  otherPeople = 3 ∧ people = otherPeople + 1 ∧ burgerPounds = 100 ∧
  burgerPrice = 3 ∧ burgerCost = burgerPounds * burgerPrice ∧ supplies = 80 ∧
  nonAlcohol = burgerCost + supplies ∧ people * share = nonAlcohol ∧
  alcohol = 200 ∧ total = share + alcohol

def TownBudget
    (budget policing education used publicSpaces : ℕ) : Prop :=
  budget = 32 ∧ 2 * policing = budget ∧ education = 12 ∧
  used = policing + education ∧ publicSpaces = budget - used

def VideoGames
    (total premium premiumCost rest mid midCost low lowCost totalCost : ℕ) : Prop :=
  total = 346 ∧ premium = 80 ∧ premiumCost = premium * 12 ∧
  rest = total - premium ∧ 2 * mid = rest ∧ midCost = mid * 7 ∧
  low = rest - mid ∧ lowCost = low * 3 ∧
  totalCost = premiumCost + midCost + lowCost

def FootballRecord
    (touchdownsPerGame touchdownPoints games pointsPerGame touchdownTotal
     conversions conversionPoints total record beatenBy : ℕ) : Prop :=
  touchdownsPerGame = 4 ∧ touchdownPoints = 6 ∧ games = 15 ∧
  pointsPerGame = touchdownsPerGame * touchdownPoints ∧
  touchdownTotal = games * pointsPerGame ∧ conversions = 6 ∧
  conversionPoints = 2 * conversions ∧ total = touchdownTotal + conversionPoints ∧
  record = 300 ∧ beatenBy = total - record

end LemmaWeave.Problems.GSM8K.Daily0909E
