namespace LemmaWeave.Problems.GSM8K.Sprint0919A15

def ShellCollection
    (initial edLimpet edOyster edConch edFound jacobExtra jacobFound total : Nat) : Prop :=
  initial = 2 ∧ edLimpet = 7 ∧ edOyster = 2 ∧ edConch = 4 ∧
  edFound = edLimpet + edOyster + edConch ∧ jacobExtra = 2 ∧
  jacobFound = edFound + jacobExtra ∧ total = initial + edFound + jacobFound

def Bananas (grandTotal lydia dawnExtra dawn donna : Nat) : Prop :=
  grandTotal = 200 ∧ lydia = 60 ∧ dawnExtra = 40 ∧ dawn = lydia + dawnExtra ∧
  donna + dawn + lydia = grandTotal

/-- All work durations are in half-hours until the final minute conversion. -/
def WorkMinutes
    (biancaHalfHours celesteMultiplier celesteHalfHours mcClainLessHalfHours
      mcClainHalfHours totalHalfHours minutesPerHalfHour totalMinutes : Nat) : Prop :=
  biancaHalfHours = 25 ∧ celesteMultiplier = 2 ∧
  celesteHalfHours = celesteMultiplier * biancaHalfHours ∧ mcClainLessHalfHours = 17 ∧
  mcClainHalfHours + mcClainLessHalfHours = celesteHalfHours ∧
  totalHalfHours = biancaHalfHours + celesteHalfHours + mcClainHalfHours ∧
  minutesPerHalfHour = 30 ∧ totalMinutes = totalHalfHours * minutesPerHalfHour

def PokerCards
    (deckSize halfDeck fullDecks halfDecks fullCards halfCards beforeTrash trash remaining : Nat) : Prop :=
  deckSize = 52 ∧ halfDeck * 2 = deckSize ∧ fullDecks = 3 ∧ halfDecks = 3 ∧
  fullCards = fullDecks * deckSize ∧ halfCards = halfDecks * halfDeck ∧
  beforeTrash = fullCards + halfCards ∧ trash = 34 ∧ remaining + trash = beforeTrash

def VegetableMinimum
    (days daily weekly eaten elapsed remainingDays cupsLeft neededPerDay : Nat) : Prop :=
  days = 7 ∧ daily = 2 ∧ weekly = days * daily ∧ eaten = 8 ∧ elapsed = 5 ∧
  elapsed + remainingDays = days ∧ cupsLeft + eaten = weekly ∧
  neededPerDay * remainingDays = cupsLeft

end LemmaWeave.Problems.GSM8K.Sprint0919A15
