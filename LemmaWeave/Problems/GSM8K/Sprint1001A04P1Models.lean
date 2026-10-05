import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A04P1

structure RubberBandModel where
  pack : ℕ
  smallBands : ℕ
  largeBands : ℕ
  smallBalls : ℕ
  used : ℕ
  remaining : ℕ
  largeBalls : ℕ
  hPack : pack = 5000
  hSmallBands : smallBands = 50
  hLargeBands : largeBands = 300
  hSmallBalls : smallBalls = 22
  hUsed : used = smallBalls * smallBands
  hRemaining : remaining + used = pack
  hLargeBalls : largeBalls * largeBands = remaining

theorem rubber_used (m : RubberBandModel) : m.used = 1100 := by
  cases m <;> simp_all <;> omega

theorem rubber_remaining (m : RubberBandModel) : m.remaining = 3900 := by
  have h := rubber_used m
  cases m <;> simp_all <;> omega

theorem rubber_large_balls (m : RubberBandModel) : m.largeBalls = 13 := by
  have h := rubber_remaining m
  cases m <;> simp_all <;> omega

structure MusiciansModel where
  orchestraMale : ℕ
  orchestraFemale : ℕ
  orchestra : ℕ
  band : ℕ
  choirMale : ℕ
  choirFemale : ℕ
  choir : ℕ
  total : ℕ
  hOMale : orchestraMale = 11
  hOFemale : orchestraFemale = 12
  hOrchestra : orchestra = orchestraMale + orchestraFemale
  hBand : band = 2 * orchestra
  hCMale : choirMale = 12
  hCFemale : choirFemale = 17
  hChoir : choir = choirMale + choirFemale
  hTotal : total = orchestra + band + choir

theorem musicians_orchestra (m : MusiciansModel) : m.orchestra = 23 := by
  cases m <;> simp_all <;> omega

theorem musicians_band (m : MusiciansModel) : m.band = 46 := by
  have h := musicians_orchestra m
  cases m <;> simp_all <;> omega

theorem musicians_choir (m : MusiciansModel) : m.choir = 29 := by
  cases m <;> simp_all <;> omega

theorem musicians_total (m : MusiciansModel) : m.total = 98 := by
  have h1 := musicians_orchestra m
  have h2 := musicians_band m
  have h3 := musicians_choir m
  cases m <;> simp_all <;> omega

structure CatsModel where
  lions : ℕ
  tigers : ℕ
  combined : ℕ
  cougars : ℕ
  total : ℕ
  hLions : lions = 12
  hTigers : tigers = 14
  hCombined : combined = lions + tigers
  hCougars : 2 * cougars = combined
  hTotal : total = combined + cougars

theorem cats_combined (m : CatsModel) : m.combined = 26 := by
  cases m <;> simp_all <;> omega

theorem cats_cougars (m : CatsModel) : m.cougars = 13 := by
  have h := cats_combined m
  cases m <;> simp_all <;> omega

theorem cats_total (m : CatsModel) : m.total = 39 := by
  have h1 := cats_combined m
  have h2 := cats_cougars m
  cases m <;> simp_all <;> omega

structure PostageModel where
  standardPerLetter : ℕ
  letters : ℕ
  internationalLetters : ℕ
  standardTotal : ℕ
  paid : ℕ
  internationalTotal : ℕ
  extraPerInternational : ℕ
  hStandard : standardPerLetter = 108
  hLetters : letters = 4
  hInternationalLetters : internationalLetters = 2
  hStandardTotal : standardTotal = standardPerLetter * letters
  hPaid : paid = 460
  hSplit : standardTotal + internationalTotal = paid
  hExtra : internationalTotal = internationalLetters * extraPerInternational

theorem postage_standard_total (m : PostageModel) : m.standardTotal = 432 := by
  cases m <;> simp_all <;> omega

theorem postage_international_total (m : PostageModel) : m.internationalTotal = 28 := by
  have h := postage_standard_total m
  cases m <;> simp_all <;> omega

theorem postage_extra_each (m : PostageModel) : m.extraPerInternational = 14 := by
  have h := postage_international_total m
  cases m <;> simp_all <;> omega

structure AudienceModel where
  total : ℕ
  secondBand : ℕ
  underThirty : ℕ
  women : ℕ
  men : ℕ
  hSecondBand : 3 * secondBand = 2 * total
  hUnderThirty : 2 * underThirty = secondBand
  hWomen : 5 * women = 3 * underThirty
  hSplit : underThirty = women + men
  hMen : men = 20

theorem audience_under_thirty (m : AudienceModel) : m.underThirty = 50 := by
  cases m <;> simp_all <;> omega

theorem audience_second_band (m : AudienceModel) : m.secondBand = 100 := by
  have h := audience_under_thirty m
  cases m <;> simp_all <;> omega

theorem audience_total (m : AudienceModel) : m.total = 150 := by
  have h := audience_second_band m
  cases m <;> simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A04P1
