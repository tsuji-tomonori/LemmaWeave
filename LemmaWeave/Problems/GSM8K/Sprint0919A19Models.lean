namespace LemmaWeave.Problems.GSM8K.Sprint0919A19

def Flyers (maisie multiplier extra donna : Nat) : Prop :=
  maisie = 33 ∧ multiplier = 2 ∧ extra = 5 ∧ donna = multiplier * maisie + extra

def BirthYear (brother sister siblingGap multiplier grandmaGap grandma : Nat) : Prop :=
  brother = 1932 ∧ sister = 1936 ∧ brother + siblingGap = sister ∧ multiplier = 2 ∧
  grandmaGap = multiplier * siblingGap ∧ grandma = sister + grandmaGap

def Balloons
    (minutes halfMinutes krisRate krisTotal firstMultiplier brotherFirstRate brotherFirst
      secondMultiplier brotherSecondRate brotherSecond brotherTotal total : Nat) : Prop :=
  minutes = 30 ∧ halfMinutes = 15 ∧ krisRate = 2 ∧ krisTotal = minutes * krisRate ∧
  firstMultiplier = 2 ∧ brotherFirstRate = firstMultiplier * krisRate ∧
  brotherFirst = halfMinutes * brotherFirstRate ∧ secondMultiplier = 2 ∧
  brotherSecondRate = secondMultiplier * brotherFirstRate ∧
  brotherSecond = halfMinutes * brotherSecondRate ∧
  brotherTotal = brotherFirst + brotherSecond ∧ total = krisTotal + brotherTotal

def SpeedingCost
    (speed limit over base perMph speedPenalty beforeDouble schoolMultiplier fine
      court lawyerRate lawyerHours lawyer total : Nat) : Prop :=
  speed = 75 ∧ limit = 30 ∧ limit + over = speed ∧ base = 50 ∧ perMph = 2 ∧
  speedPenalty = perMph * over ∧ beforeDouble = base + speedPenalty ∧
  schoolMultiplier = 2 ∧ fine = schoolMultiplier * beforeDouble ∧ court = 300 ∧
  lawyerRate = 80 ∧ lawyerHours = 3 ∧ lawyer = lawyerRate * lawyerHours ∧
  total = fine + court + lawyer

/-- Additional condition: malaria-only and Zika-only mosquitoes are disjoint. Percentages are whole percents. -/
def VirusDisjoint
    (malariaMosquitoes zikaMosquitoes baselineTransmission vaccineReduction vaccinatedMalariaTransmission
      malariaRisk zikaRisk eitherRisk : Nat) : Prop :=
  malariaMosquitoes = 40 ∧ zikaMosquitoes = 20 ∧ baselineTransmission = 50 ∧
  vaccineReduction = 50 ∧ vaccinatedMalariaTransmission * 100 = baselineTransmission * (100 - vaccineReduction) ∧
  malariaRisk * 100 = malariaMosquitoes * vaccinatedMalariaTransmission ∧
  zikaRisk * 100 = zikaMosquitoes * baselineTransmission ∧ eitherRisk = malariaRisk + zikaRisk

/-- Counterexample condition: 20% are coinfected, all remaining malaria mosquitoes are malaria-only,
and malaria transmission on a coinfected bite is contained in the Zika transmission event. -/
def VirusCoinfectedNested
    (malariaOnly coinfected vaccinatedMalariaTransmission coinfectedEitherTransmission
      malariaOnlyRisk coinfectedRisk eitherRisk : Nat) : Prop :=
  malariaOnly = 20 ∧ coinfected = 20 ∧ vaccinatedMalariaTransmission = 25 ∧
  coinfectedEitherTransmission = 50 ∧
  malariaOnlyRisk * 100 = malariaOnly * vaccinatedMalariaTransmission ∧
  coinfectedRisk * 100 = coinfected * coinfectedEitherTransmission ∧
  eitherRisk = malariaOnlyRisk + coinfectedRisk

end LemmaWeave.Problems.GSM8K.Sprint0919A19
