namespace LemmaWeave.Problems.GSM8K.Daily0918C

def StickerSharing (total boy afterBoy givenFriends remaining : Nat) : Prop :=
  total = 100 ∧ boy = 10 ∧ afterBoy + boy = total ∧
  2 * givenFriends = afterBoy ∧ remaining + givenFriends = afterBoy

/-- The numerical answer 24% uses the additional assumption that the skid chance at 32°F is 0%.
    Percentage quantities are represented by integers from 0 through 100. -/
def IceRiskConditional
    (freezing temperature drop degreesPerStep steps increasePerStep addedSkidRisk recovery
      seriousAfterSkid accidentRisk : Nat) : Prop :=
  freezing = 32 ∧ temperature = 8 ∧ drop + temperature = freezing ∧
  degreesPerStep = 3 ∧ degreesPerStep * steps = drop ∧
  increasePerStep = 5 ∧ addedSkidRisk = steps * increasePerStep ∧
  recovery = 40 ∧ seriousAfterSkid + recovery = 100 ∧
  100 * accidentRisk = addedSkidRisk * seriousAfterSkid

/-- The unspecified baseline skid chance changes the answer.  `baseline ≤ 60` keeps
    the resulting skid percentage at most 100. -/
def IceRiskWithBaseline
    (baseline totalSkidRisk seriousAfterSkid accidentRisk : Nat) : Prop :=
  baseline ≤ 60 ∧ totalSkidRisk = baseline + 40 ∧ seriousAfterSkid = 60 ∧
  100 * accidentRisk = totalSkidRisk * seriousAfterSkid

/-- “two/three times more” is here read as two/three times as much, matching the
    dataset's reference interpretation. -/
def HomeworkMultiplicative (biology history geography total : Nat) : Prop :=
  biology = 20 ∧ history = 2 * biology ∧ geography = 3 * history ∧
  total = biology + history + geography

/-- A literal additive reading of “n times more” adds n copies to the original. -/
def HomeworkLiteralMore (biology history geography total : Nat) : Prop :=
  biology = 20 ∧ history = biology + 2 * biology ∧
  geography = history + 3 * history ∧ total = biology + history + geography

def BikeRide (morning multiplier evening total : Nat) : Prop :=
  morning = 2 ∧ multiplier = 5 ∧ evening = multiplier * morning ∧
  total = morning + evening

def MarbleShare (selma difference pairTotal elliot multiplier merill : Nat) : Prop :=
  selma = 50 ∧ difference = 5 ∧ pairTotal + difference = selma ∧
  multiplier = 2 ∧ merill = multiplier * elliot ∧ elliot + merill = pairTotal

/-- The textbook convention of exactly 52 Saturday/Sunday pairs is explicit.
    Money is represented in cents until the final dollar conversion. -/
def CroissantYear
    (regularCents almondCents weeklyCents weeks annualCents annualDollars : Nat) : Prop :=
  regularCents = 350 ∧ almondCents = 550 ∧
  weeklyCents = regularCents + almondCents ∧ weeks = 52 ∧
  annualCents = weeks * weeklyCents ∧ 100 * annualDollars = annualCents

def RockLayers
    (total limestone afterLimestone sandstone afterSandstone quartz afterQuartz shale
      singletonLayers singletonKinds : Nat) : Prop :=
  total = 25 ∧ limestone = 5 ∧ afterLimestone + limestone = total ∧
  2 * sandstone = afterLimestone ∧ afterSandstone + sandstone = afterLimestone ∧
  quartz = 4 ∧ afterQuartz + quartz = afterSandstone ∧
  2 * shale = afterQuartz ∧ singletonLayers + shale = afterQuartz ∧
  singletonKinds = singletonLayers

def StrawberryShare (dozens perDozen picked eaten remaining : Nat) : Prop :=
  dozens = 2 ∧ perDozen = 12 ∧ picked = dozens * perDozen ∧
  eaten = 6 ∧ remaining + eaten = picked

def OwlCount (statedHoots fewer heard perOwl owls : Nat) : Prop :=
  statedHoots = 20 ∧ fewer = 5 ∧ heard + fewer = statedHoots ∧
  perOwl = 5 ∧ perOwl * owls = heard

def LaundryPacks (loadsPerWeek weeks pods packSize packs : Nat) : Prop :=
  loadsPerWeek = 3 ∧ weeks = 52 ∧ pods = loadsPerWeek * weeks ∧
  packSize = 39 ∧ packSize * packs = pods

end LemmaWeave.Problems.GSM8K.Daily0918C
