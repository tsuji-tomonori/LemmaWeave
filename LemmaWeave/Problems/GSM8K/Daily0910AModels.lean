import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0910A

def CardWeek (monday tuesday wednesday thursdayPurchase thursday : ℕ) : Prop :=
  monday = 30 ∧ 2 * tuesday = monday ∧ wednesday = tuesday + 12 ∧
  3 * thursdayPurchase = tuesday ∧ thursday = wednesday + thursdayPurchase

def BusTour
    (outbound extra returnMiles totalMiles minutesPerMile travelMinutes
     minutesPerHour travelHours stayHours totalHours : ℕ) : Prop :=
  outbound = 55 ∧ extra = 10 ∧ returnMiles = outbound + extra ∧
  totalMiles = outbound + returnMiles ∧ minutesPerMile = 2 ∧
  travelMinutes = totalMiles * minutesPerMile ∧ minutesPerHour = 60 ∧
  minutesPerHour * travelHours = travelMinutes ∧ stayHours = 2 ∧
  totalHours = travelHours + stayHours

def MovieMarathon
    (duration tuesdayHours tuesdayExtraMinutes tuesdayMinutes tuesdayMovies
     wednesdayMovies totalMovies : ℕ) : Prop :=
  duration = 90 ∧ tuesdayHours = 4 ∧ tuesdayExtraMinutes = 30 ∧
  tuesdayMinutes = 60 * tuesdayHours + tuesdayExtraMinutes ∧
  duration * tuesdayMovies = tuesdayMinutes ∧
  wednesdayMovies = 2 * tuesdayMovies ∧ totalMovies = tuesdayMovies + wednesdayMovies

def FilmProduction
    (previousHours previousMinutes percent increase newMinutes oldCostPerMinute
     newCostPerMinute totalCost : ℕ) : Prop :=
  previousHours = 2 ∧ previousMinutes = 60 * previousHours ∧ percent = 60 ∧
  100 * increase = percent * previousMinutes ∧ newMinutes = previousMinutes + increase ∧
  oldCostPerMinute = 50 ∧ newCostPerMinute = 2 * oldCostPerMinute ∧
  totalCost = newMinutes * newCostPerMinute

def BakeryOrder
    (quiches quichePrice quicheCost croissants croissantPrice croissantCost
     biscuits biscuitPrice biscuitCost subtotal threshold discountPercent discount total : ℕ) : Prop :=
  quiches = 2 ∧ quichePrice = 15 ∧ quicheCost = quiches * quichePrice ∧
  croissants = 6 ∧ croissantPrice = 3 ∧ croissantCost = croissants * croissantPrice ∧
  biscuits = 6 ∧ biscuitPrice = 2 ∧ biscuitCost = biscuits * biscuitPrice ∧
  subtotal = quicheCost + croissantCost + biscuitCost ∧ threshold = 50 ∧
  threshold < subtotal ∧ discountPercent = 10 ∧
  100 * discount = discountPercent * subtotal ∧ total = subtotal - discount

def GrapeProduction
    (halfYearKg periods baseline percent increase total : ℕ) : Prop :=
  halfYearKg = 90 ∧ periods = 2 ∧ baseline = periods * halfYearKg ∧
  percent = 20 ∧ 100 * increase = percent * baseline ∧ total = baseline + increase

def AgeDifference (dozen dozens katherine difference mel : ℕ) : Prop :=
  dozen = 12 ∧ dozens = 2 ∧ katherine = dozens * dozen ∧
  difference = 3 ∧ mel = katherine - difference

def SeedPlanting
    (sourceTrees plantsPerTree totalPlants seedsPerPlant totalSeeds percent plantedSeeds : ℕ) : Prop :=
  sourceTrees = 2 ∧ plantsPerTree = 20 ∧ totalPlants = sourceTrees * plantsPerTree ∧
  seedsPerPlant = 1 ∧ totalSeeds = totalPlants * seedsPerPlant ∧ percent = 60 ∧
  100 * plantedSeeds = percent * totalSeeds

def SeedTreeOutcome (plantedSeeds newTrees : ℕ) : Prop :=
  plantedSeeds = 24 ∧ newTrees ≤ plantedSeeds

def AllPlantedSeedsBecomeTrees
    (sourceTrees plantsPerTree totalPlants seedsPerPlant totalSeeds percent plantedSeeds newTrees : ℕ) : Prop :=
  SeedPlanting sourceTrees plantsPerTree totalPlants seedsPerPlant totalSeeds percent plantedSeeds ∧
  newTrees = plantedSeeds

def OrigamiBottles (initial added totalBottles capacity stars : ℕ) : Prop :=
  initial = 2 ∧ added = 3 ∧ totalBottles = initial + added ∧
  capacity = 15 ∧ stars = totalBottles * capacity

def PetRace
    (distance hareSpeed turtleSpeed hareTime turtleTime headStart : ℕ) : Prop :=
  distance = 20 ∧ hareSpeed = 10 ∧ turtleSpeed = 1 ∧
  hareSpeed * hareTime = distance ∧ turtleSpeed * turtleTime = distance ∧
  headStart = turtleTime - hareTime

end LemmaWeave.Problems.GSM8K.Daily0910A
