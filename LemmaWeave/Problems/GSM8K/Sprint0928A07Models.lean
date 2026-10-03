import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0928A07

structure FrogModel where
  eggs : Nat
  dried : Nat
  eaten : Nat
  remaining : Nat
  hatched : Nat
  hEggs : eggs = 800
  hDried : 10 * dried = eggs
  hEaten : 10 * eaten = 7 * eggs
  hRemaining : remaining + dried + eaten = eggs
  hHatched : 4 * hatched = remaining

theorem frog_losses (m : FrogModel) : m.dried = 80 ∧ m.eaten = 560 := by
  have h_model_0 := m.hatched
  have h_model_1 := m.hEggs
  have h_model_2 := m.hDried
  have h_model_3 := m.hEaten
  have h_model_4 := m.hRemaining
  have h_model_5 := m.hHatched
  constructor <;> omega

theorem frog_remaining (m : FrogModel) : m.remaining = 160 := by
  have h_model_0 := m.hatched
  have h_model_1 := m.hEggs
  have h_model_2 := m.hDried
  have h_model_3 := m.hEaten
  have h_model_4 := m.hRemaining
  have h_model_5 := m.hHatched
  rcases frog_losses m with ⟨hd, he⟩
  omega

theorem frog_hatched (m : FrogModel) : m.hatched = 40 := by
  have h_model_0 := m.hatched
  have h_model_1 := m.hEggs
  have h_model_2 := m.hDried
  have h_model_3 := m.hEaten
  have h_model_4 := m.hRemaining
  have h_model_5 := m.hHatched
  have hr := frog_remaining m
  omega

theorem frog_solution (m : FrogModel) : m.hatched = 40 := frog_hatched m

structure AlbumModel where
  totalMinutes : Nat
  recordingMinutes : Nat
  editingMinutes : Nat
  writingMinutes : Nat
  perSongWriting : Nat
  hTotal : totalMinutes = 5 * 60
  hRecording : recordingMinutes = 10 * 12
  hEditing : editingMinutes = 30
  hWriting : writingMinutes + recordingMinutes + editingMinutes = totalMinutes
  hPerSong : 10 * perSongWriting = writingMinutes

theorem album_fixed_times (m : AlbumModel) :
    m.totalMinutes = 300 ∧ m.recordingMinutes = 120 ∧ m.editingMinutes = 30 := by
  have h_model_0 := m.hTotal
  have h_model_1 := m.hRecording
  have h_model_2 := m.hEditing
  have h_model_3 := m.hWriting
  have h_model_4 := m.hPerSong
  constructor
  · omega
  · constructor <;> omega

theorem album_writing_total (m : AlbumModel) : m.writingMinutes = 150 := by
  have h_model_0 := m.hTotal
  have h_model_1 := m.hRecording
  have h_model_2 := m.hEditing
  have h_model_3 := m.hWriting
  have h_model_4 := m.hPerSong
  rcases album_fixed_times m with ⟨ht, hr, he⟩
  omega

theorem album_per_song (m : AlbumModel) : m.perSongWriting = 15 := by
  have h_model_0 := m.hTotal
  have h_model_1 := m.hRecording
  have h_model_2 := m.hEditing
  have h_model_3 := m.hWriting
  have h_model_4 := m.hPerSong
  have hw := album_writing_total m
  omega

theorem album_solution (m : AlbumModel) : m.perSongWriting = 15 := album_per_song m

structure MarksModel where
  science : Nat
  music : Nat
  socialStudies : Nat
  physics : Nat
  total : Nat
  hScience : science = 70
  hMusic : music = 80
  hSocial : socialStudies = 85
  hPhysics : 2 * physics = music
  hTotal : total = science + music + socialStudies + physics

theorem marks_physics (m : MarksModel) : m.physics = 40 := by
  have h_model_0 := m.hScience
  have h_model_1 := m.hMusic
  have h_model_2 := m.hSocial
  have h_model_3 := m.hPhysics
  have h_model_4 := m.hTotal
  omega

theorem marks_total (m : MarksModel) : m.total = 275 := by
  have h_model_0 := m.hScience
  have h_model_1 := m.hMusic
  have h_model_2 := m.hSocial
  have h_model_3 := m.hPhysics
  have h_model_4 := m.hTotal
  have hp := marks_physics m
  omega

theorem marks_solution (m : MarksModel) : m.total = 275 := marks_total m

structure ChaptersModel where
  firstThree : Nat
  fourth : Nat
  total : Nat
  hFirstThree : firstThree = 20 + 2 * 15
  hFourth : 2 * fourth = firstThree
  hTotal : total = firstThree + fourth

theorem chapters_first_fourth (m : ChaptersModel) :
    m.firstThree = 50 ∧ m.fourth = 25 := by
  have h_model_0 := m.hFirstThree
  have h_model_1 := m.hFourth
  have h_model_2 := m.hTotal
  constructor <;> omega

theorem chapters_total (m : ChaptersModel) : m.total = 75 := by
  have h_model_0 := m.hFirstThree
  have h_model_1 := m.hFourth
  have h_model_2 := m.hTotal
  rcases chapters_first_fourth m with ⟨h3, h4⟩
  omega

theorem chapters_solution (m : ChaptersModel) : m.total = 75 := chapters_total m

structure SpotsModel where
  left : Nat
  right : Nat
  total : Nat
  hLeft : left = 16
  hRight : right = 3 * left + 7
  hTotal : total = left + right

theorem spots_right (m : SpotsModel) : m.right = 55 := by
  have h_model_0 := m.hLeft
  have h_model_1 := m.hRight
  have h_model_2 := m.hTotal
  omega

theorem spots_total (m : SpotsModel) : m.total = 71 := by
  have h_model_0 := m.hLeft
  have h_model_1 := m.hRight
  have h_model_2 := m.hTotal
  have hr := spots_right m
  omega

theorem spots_solution (m : SpotsModel) : m.total = 71 := spots_total m

structure SteaksModel where
  ounces : Nat
  steaks : Nat
  hOunces : ounces = 15 * 16
  hSteaks : 12 * steaks = ounces

theorem steaks_ounces (m : SteaksModel) : m.ounces = 240 := by
  have h_model_0 := m.hOunces
  have h_model_1 := m.hSteaks
  omega

theorem steaks_count (m : SteaksModel) : m.steaks = 20 := by
  have h_model_0 := m.hOunces
  have h_model_1 := m.hSteaks
  have ho := steaks_ounces m
  omega

theorem steaks_solution (m : SteaksModel) : m.steaks = 20 := steaks_count m

structure SisterAgeModel where
  jenniferFuture : Nat
  jordanaFuture : Nat
  jordanaNow : Nat
  hJenniferFuture : jenniferFuture = 30
  hJordanaFuture : jordanaFuture = 3 * jenniferFuture
  hElapsed : jordanaNow + 10 = jordanaFuture

theorem sister_future (m : SisterAgeModel) : m.jordanaFuture = 90 := by
  have h_model_0 := m.hJenniferFuture
  have h_model_1 := m.hJordanaFuture
  have h_model_2 := m.hElapsed
  omega

theorem sister_now (m : SisterAgeModel) : m.jordanaNow = 80 := by
  have h_model_0 := m.hJenniferFuture
  have h_model_1 := m.hJordanaFuture
  have h_model_2 := m.hElapsed
  have hf := sister_future m
  omega

theorem sister_solution (m : SisterAgeModel) : m.jordanaNow = 80 := sister_now m

structure ApplesModel where
  boxes : Nat
  apples : Nat
  leftApples : Nat
  leftBoxes : Nat
  hBoxes : boxes = 50 + 25
  hApples : apples = 10 * boxes
  hSold : leftApples + 720 = apples
  hLeftBoxes : 10 * leftBoxes = leftApples

theorem apples_initial (m : ApplesModel) : m.boxes = 75 ∧ m.apples = 750 := by
  have h_model_0 := m.hBoxes
  have h_model_1 := m.hApples
  have h_model_2 := m.hSold
  have h_model_3 := m.hLeftBoxes
  constructor <;> omega

theorem apples_left (m : ApplesModel) : m.leftApples = 30 ∧ m.leftBoxes = 3 := by
  have h_model_0 := m.hBoxes
  have h_model_1 := m.hApples
  have h_model_2 := m.hSold
  have h_model_3 := m.hLeftBoxes
  rcases apples_initial m with ⟨hb, ha⟩
  constructor <;> omega

theorem apples_solution (m : ApplesModel) : m.leftBoxes = 3 := (apples_left m).2

structure TacoModel where
  tacos : Nat
  profitPerTacoCents : Nat
  totalProfitCents : Nat
  hTacos : tacos = 100 * 4
  hUnitProfit : profitPerTacoCents + 150 = 200
  hTotalProfit : totalProfitCents = profitPerTacoCents * tacos

theorem taco_counts (m : TacoModel) :
    m.tacos = 400 ∧ m.profitPerTacoCents = 50 := by
  have h_model_0 := m.hTacos
  have h_model_1 := m.hUnitProfit
  have h_model_2 := m.hTotalProfit
  constructor <;> omega

theorem taco_total_cents (m : TacoModel) : m.totalProfitCents = 20000 := by
  have h_model_0 := m.hTacos
  have h_model_1 := m.hUnitProfit
  have h_model_2 := m.hTotalProfit
  rcases taco_counts m with ⟨ht, hp⟩
  have h := m.hTotalProfit
  rw [ht, hp] at h
  norm_num at h ⊢
  exact h

theorem taco_profit_dollars (m : TacoModel) : m.totalProfitCents = 100 * 200 := by
  have h_model_0 := m.hTacos
  have h_model_1 := m.hUnitProfit
  have h_model_2 := m.hTotalProfit
  have h := taco_total_cents m
  omega

theorem taco_solution (m : TacoModel) : m.totalProfitCents = 100 * 200 := taco_profit_dollars m

structure LotModel where
  soldPartValue : Nat
  ownedShareValue : Nat
  wholeLotValue : Nat
  hSold : soldPartValue = 460
  hOwned : ownedShareValue = 10 * soldPartValue
  hWhole : wholeLotValue = 2 * ownedShareValue

theorem lot_owned_share (m : LotModel) : m.ownedShareValue = 4600 := by
  have h_model_0 := m.hSold
  have h_model_1 := m.hOwned
  have h_model_2 := m.hWhole
  omega

theorem lot_whole (m : LotModel) : m.wholeLotValue = 9200 := by
  have h_model_0 := m.hSold
  have h_model_1 := m.hOwned
  have h_model_2 := m.hWhole
  have ho := lot_owned_share m
  omega

theorem lot_solution (m : LotModel) : m.wholeLotValue = 9200 := lot_whole m

structure LoanModel where
  months : Nat
  payments : Nat
  financedWithDownPayment : Nat
  hMonths : months = 5 * 12
  hPayments : payments = 600 * months
  hTotal : financedWithDownPayment = 10000 + payments

theorem loan_term_payments (m : LoanModel) : m.months = 60 ∧ m.payments = 36000 := by
  have h_model_0 := m.hMonths
  have h_model_1 := m.hPayments
  have h_model_2 := m.hTotal
  constructor <;> omega

theorem loan_total (m : LoanModel) : m.financedWithDownPayment = 46000 := by
  have h_model_0 := m.hMonths
  have h_model_1 := m.hPayments
  have h_model_2 := m.hTotal
  rcases loan_term_payments m with ⟨hm, hp⟩
  omega

theorem loan_solution (m : LoanModel) : m.financedWithDownPayment = 46000 := loan_total m

structure HospitalAgeModel where
  grantFuture : Nat
  hospitalFuture : Nat
  hospitalNow : Nat
  hGrantFuture : grantFuture = 25 + 5
  hRatio : 3 * grantFuture = 2 * hospitalFuture
  hElapsed : hospitalNow + 5 = hospitalFuture

theorem hospital_future (m : HospitalAgeModel) : m.hospitalFuture = 45 := by
  have h_model_0 := m.hospitalFuture
  have h_model_1 := m.hospitalNow
  have h_model_2 := m.hGrantFuture
  have h_model_3 := m.hRatio
  have h_model_4 := m.hElapsed
  omega

theorem hospital_now (m : HospitalAgeModel) : m.hospitalNow = 40 := by
  have h_model_0 := m.hospitalFuture
  have h_model_1 := m.hospitalNow
  have h_model_2 := m.hGrantFuture
  have h_model_3 := m.hRatio
  have h_model_4 := m.hElapsed
  have hf := hospital_future m
  omega

theorem hospital_solution (m : HospitalAgeModel) : m.hospitalNow = 40 := hospital_now m

structure MagnetsModel where
  given : Nat
  remaining : Nat
  peter : Nat
  hGiven : 3 * given = 18
  hRemaining : remaining + given = 18
  hPeter : peter = 2 * remaining

theorem magnets_adam_remaining (m : MagnetsModel) :
    m.given = 6 ∧ m.remaining = 12 := by
  have h_model_0 := m.hGiven
  have h_model_1 := m.hRemaining
  have h_model_2 := m.hPeter
  constructor <;> omega

theorem magnets_peter (m : MagnetsModel) : m.peter = 24 := by
  have h_model_0 := m.hGiven
  have h_model_1 := m.hRemaining
  have h_model_2 := m.hPeter
  rcases magnets_adam_remaining m with ⟨hg, hr⟩
  omega

theorem magnets_solution (m : MagnetsModel) : m.peter = 24 := magnets_peter m

structure ReadingModel where
  plannedMinutes : Nat
  actualMinutes : Nat
  pages : Nat
  hPlanned : plannedMinutes = 3 * 60
  hActual : 4 * actualMinutes = 3 * plannedMinutes
  hPages : 15 * pages = actualMinutes

theorem reading_times (m : ReadingModel) :
    m.plannedMinutes = 180 ∧ m.actualMinutes = 135 := by
  have h_model_0 := m.hPlanned
  have h_model_1 := m.hActual
  have h_model_2 := m.hPages
  constructor <;> omega

theorem reading_pages (m : ReadingModel) : m.pages = 9 := by
  have h_model_0 := m.hPlanned
  have h_model_1 := m.hActual
  have h_model_2 := m.hPages
  rcases reading_times m with ⟨hp, ha⟩
  omega

theorem reading_solution (m : ReadingModel) : m.pages = 9 := reading_pages m

structure AllowanceModel where
  jan : Nat
  feb : Nat
  mar : Nat
  apr : Nat
  may : Nat
  jun : Nat
  jul : Nat
  aug : Nat
  sep : Nat
  oct : Nat
  nov : Nat
  dec : Nat
  totalSaved : Nat
  hJan : jan = 2
  hFeb : feb = 2 * jan
  hMar : mar = 2 * feb
  hApr : apr = 2 * mar
  hMay : may = 2 * apr
  hJun : jun = 2 * may
  hJul : jul = 2 * jun
  hAug : aug = 2 * jul
  hSep : sep = 2 * aug
  hOct : oct = 2 * sep
  hNov : nov = 2 * oct
  hDec : dec = 2 * nov
  hTotal : totalSaved = jan + feb + mar + apr + may + jun + jul + aug + sep + oct + nov + dec

theorem allowance_midyear (m : AllowanceModel) :
    m.apr = 16 ∧ m.may = 32 ∧ m.jun = 64 := by
  have h_model_0 := m.hJan
  have h_model_1 := m.hFeb
  have h_model_2 := m.hMar
  have h_model_3 := m.hApr
  have h_model_4 := m.hMay
  have h_model_5 := m.hJun
  have h_model_6 := m.hJul
  have h_model_7 := m.hAug
  have h_model_8 := m.hSep
  have h_model_9 := m.hOct
  have h_model_10 := m.hNov
  have h_model_11 := m.hDec
  have h_model_12 := m.hTotal
  constructor
  · omega
  · constructor <;> omega

theorem allowance_december (m : AllowanceModel) : m.dec = 4096 := by
  have hJun := (allowance_midyear m).2.2
  have hJul := m.hJul
  have hAug := m.hAug
  have hSep := m.hSep
  have hOct := m.hOct
  have hNov := m.hNov
  have hDec := m.hDec
  omega

theorem allowance_cumulative (m : AllowanceModel) : m.totalSaved = 8190 := by
  have hDecember := allowance_december m
  have hFeb := m.hFeb
  have hMar := m.hMar
  have hApr := m.hApr
  have hMay := m.hMay
  have hJun := m.hJun
  have hJul := m.hJul
  have hAug := m.hAug
  have hSep := m.hSep
  have hOct := m.hOct
  have hNov := m.hNov
  have hDec := m.hDec
  have hTotal := m.hTotal
  omega

theorem allowance_solution (m : AllowanceModel) :
    m.dec = 4096 ∧ m.totalSaved = 8190 := by
  have h_model_0 := m.hJan
  have h_model_1 := m.hFeb
  have h_model_2 := m.hMar
  have h_model_3 := m.hApr
  have h_model_4 := m.hMay
  have h_model_5 := m.hJun
  have h_model_6 := m.hJul
  have h_model_7 := m.hAug
  have h_model_8 := m.hSep
  have h_model_9 := m.hOct
  have h_model_10 := m.hNov
  have h_model_11 := m.hDec
  have h_model_12 := m.hTotal
  exact ⟨allowance_december m, allowance_cumulative m⟩

end LemmaWeave.Problems.GSM8K.Sprint0928A07
