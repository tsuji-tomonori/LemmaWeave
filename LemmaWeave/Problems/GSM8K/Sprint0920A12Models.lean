namespace LemmaWeave.Problems.GSM8K.Sprint0920A12

def BallGames
    (students basketball volleyball both union neither : Nat) : Prop :=
  basketball * 2 = students ∧ volleyball * 5 = students * 2 ∧
  both * 10 = students ∧ union + both = basketball + volleyball ∧
  students = union + neither

def PokemonCards
    (michael difference mark multiplier lloyd current goal needed : Nat) : Prop :=
  michael = mark + difference ∧ mark = multiplier * lloyd ∧
  current = michael + mark + lloyd ∧ goal = current + needed

def GrandchildGifts
    (grandchildren cardsPerYear dollarsPerCard perChild total : Nat) : Prop :=
  perChild = cardsPerYear * dollarsPerCard ∧ total = grandchildren * perChild

def TreadmillMiles
    (averageHalfHours minutesPerHour minutesPerMovie movies totalMinutes minutesPerMile miles : Nat) : Prop :=
  minutesPerMovie * 2 = averageHalfHours * minutesPerHour ∧
  totalMinutes = movies * minutesPerMovie ∧ totalMinutes = miles * minutesPerMile

def DonutFundraiser
    (donutsPerDozen costPerDozenCents salePriceCents revenuePerDozenCents profitPerDozenCents
      goalCents dozens : Nat) : Prop :=
  revenuePerDozenCents = donutsPerDozen * salePriceCents ∧
  revenuePerDozenCents = costPerDozenCents + profitPerDozenCents ∧
  goalCents = dozens * profitPerDozenCents

end LemmaWeave.Problems.GSM8K.Sprint0920A12
