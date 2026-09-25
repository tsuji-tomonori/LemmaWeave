import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0922A11

structure Height where
  gain : ℕ
  inches : ℕ
  feet : ℕ
 hGain : gain=2*3
 hInches : inches=66+gain
 hFeet : feet*12=inches
theorem height_gain (m:Height) : m.gain=6 := by rw [m.hGain] <;> norm_num
theorem height_inches (m:Height) : m.inches=72 := by rw [m.hInches, height_gain m] <;> norm_num
theorem height_solution (m:Height) : m.feet=6 := by
  have h:=m.hFeet; rw [height_inches m] at h; omega

structure Hockey where
  girlPercent : ℕ
  girls : ℕ
  juniors : ℕ
 hPercent : girlPercent+60=100
 hGirls : girls*100=50*girlPercent
 hJuniors : juniors*2=girls
theorem hockey_girl_percent (m:Hockey) : m.girlPercent=40 := by omega
theorem hockey_girls (m:Hockey) : m.girls=20 := by
  have h:=m.hGirls; rw [hockey_girl_percent m] at h; omega
theorem hockey_solution (m:Hockey) : m.juniors=10 := by
  have h:=m.hJuniors; rw [hockey_girls m] at h; omega

structure Drawings where
  page2 : ℕ
  page3 : ℕ
  page4 : ℕ
  page5 : ℕ
  total : ℕ
 h2 : page2=5+5
 h3 : page3=page2+5
 h4 : page4=page3+5
 h5 : page5=page4+5
 hTotal : total=5+page2+page3+page4+page5
theorem drawings_page2 (m:Drawings) : m.page2=10 := by rw [m.h2] <;> norm_num
theorem drawings_page3 (m:Drawings) : m.page3=15 := by rw [m.h3, drawings_page2 m] <;> norm_num
theorem drawings_page4 (m:Drawings) : m.page4=20 := by rw [m.h4, drawings_page3 m] <;> norm_num
theorem drawings_page5 (m:Drawings) : m.page5=25 := by rw [m.h5, drawings_page4 m] <;> norm_num
theorem drawings_solution (m:Drawings) : m.total=75 := by
  rw [m.hTotal, drawings_page2 m, drawings_page3 m, drawings_page4 m, drawings_page5 m]
  norm_num

structure Bonus where
  customers : ℕ
  points : ℕ
 hCustomers : customers=10*8
 hPoints : points*100=customers*20
theorem bonus_customers (m:Bonus) : m.customers=80 := by rw [m.hCustomers] <;> norm_num
theorem bonus_solution (m:Bonus) : m.points=16 := by
  have h:=m.hPoints; rw [bonus_customers m] at h; omega

structure PetsAge where
  rabbit : ℕ
  dog : ℕ
 hRabbit : rabbit*2=8
 hDog : dog=3*rabbit
theorem pets_rabbit (m:PetsAge) : m.rabbit=4 := by omega
theorem pets_solution (m:PetsAge) : m.dog=12 := by rw [m.hDog, pets_rabbit m] <;> norm_num

structure Vegetables where
  peeling : ℕ
  total : ℕ
 hPeeling : peeling=3*10
 hTotal : total=10+peeling
theorem vegetables_peeling (m:Vegetables) : m.peeling=30 := by rw [m.hPeeling] <;> norm_num
theorem vegetables_solution (m:Vegetables) : m.total=40 := by rw [m.hTotal, vegetables_peeling m] <;> norm_num

structure Weights where
  brad : ℕ
  billy : ℕ
 hBrad : brad=145+5
 hBilly : billy=brad+9
theorem weights_brad (m:Weights) : m.brad=150 := by rw [m.hBrad] <;> norm_num
theorem weights_solution (m:Weights) : m.billy=159 := by rw [m.hBilly, weights_brad m] <;> norm_num

structure SalaryRatio where
  ratioTotal : ℕ
  salary : ℕ
 hRatio : ratioTotal=4+11
 hSalary : salary*ratioTotal=3000*4
theorem salary_ratio_total (m:SalaryRatio) : m.ratioTotal=15 := by rw [m.hRatio] <;> norm_num
theorem salary_ratio_solution (m:SalaryRatio) : m.salary=800 := by
  have h:=m.hSalary; rw [salary_ratio_total m] at h; omega

structure Fruit where
  chosen : ℕ
  oranges : ℕ
 hChosen : chosen=3+4
 hOranges : oranges+chosen=12
theorem fruit_chosen (m:Fruit) : m.chosen=7 := by rw [m.hChosen] <;> norm_num
theorem fruit_solution (m:Fruit) : m.oranges=5 := by
  have h:=m.hOranges; rw [fruit_chosen m] at h; omega

structure CupcakeTypes where
  glutenContaining : ℕ
  veganGluten : ℕ
  nonVeganGluten : ℕ
 hGluten : glutenContaining*2=80
 hVeganGluten : veganGluten*2=24
 hPartition : nonVeganGluten+veganGluten=glutenContaining
theorem cupcake_gluten (m:CupcakeTypes) : m.glutenContaining=40 := by omega
theorem cupcake_vegan_gluten (m:CupcakeTypes) : m.veganGluten=12 := by omega
theorem cupcake_types_solution (m:CupcakeTypes) : m.nonVeganGluten=28 := by
  have h:=m.hPartition
  rw [cupcake_gluten m, cupcake_vegan_gluten m] at h
  omega

structure WeekendWork where
  hours : ℕ
  earnings : ℕ
 hHours : hours=10+6+14
 hEarnings : earnings=hours*15
theorem weekend_hours (m:WeekendWork) : m.hours=30 := by rw [m.hHours] <;> norm_num
theorem weekend_solution (m:WeekendWork) : m.earnings=450 := by rw [m.hEarnings, weekend_hours m] <;> norm_num

structure Cookies where
  mother : ℕ
  brother : ℕ
  eaten : ℕ
  remaining : ℕ
 hMother : mother*2=10
 hBrother : brother=mother+2
 hEaten : eaten=10+mother+brother
 hRemaining : remaining+eaten=30
theorem cookies_mother (m:Cookies) : m.mother=5 := by omega
theorem cookies_brother (m:Cookies) : m.brother=7 := by rw [m.hBrother, cookies_mother m] <;> norm_num
theorem cookies_eaten (m:Cookies) : m.eaten=22 := by
  rw [m.hEaten, cookies_mother m, cookies_brother m] <;> norm_num
theorem cookies_solution (m:Cookies) : m.remaining=8 := by
  have h:=m.hRemaining; rw [cookies_eaten m] at h; omega

structure CameraFrames where
  cameraCost : ℕ
  framesCost : ℕ
  subtotal : ℕ
  discount : ℕ
  paid : ℕ
 hCamera : cameraCost=2*110
 hFrames : framesCost=3*120
 hSubtotal : subtotal=cameraCost+framesCost
 hDiscount : discount*100=subtotal*5
 hPaid : paid+discount=subtotal
theorem camera_cost (m:CameraFrames) : m.cameraCost=220 := by rw [m.hCamera] <;> norm_num
theorem frames_cost (m:CameraFrames) : m.framesCost=360 := by rw [m.hFrames] <;> norm_num
theorem purchase_subtotal (m:CameraFrames) : m.subtotal=580 := by
  rw [m.hSubtotal, camera_cost m, frames_cost m] <;> norm_num
theorem purchase_discount (m:CameraFrames) : m.discount=29 := by
  have h:=m.hDiscount; rw [purchase_subtotal m] at h; omega
theorem purchase_solution (m:CameraFrames) : m.paid=551 := by
  have h:=m.hPaid
  rw [purchase_subtotal m, purchase_discount m] at h
  omega

structure Bread where
  batches : ℕ
  eggs : ℕ
 hBatches : batches*2=6
 hEggs : eggs=batches*3
theorem bread_batches (m:Bread) : m.batches=3 := by omega
theorem bread_solution (m:Bread) : m.eggs=9 := by rw [m.hEggs, bread_batches m] <;> norm_num

structure Stove where
  wall : ℕ
  total : ℕ
 hWall : wall*6=1200
 hTotal : total=1200+wall
theorem stove_wall (m:Stove) : m.wall=200 := by omega
theorem stove_solution (m:Stove) : m.total=1400 := by rw [m.hTotal, stove_wall m] <;> norm_num

end LemmaWeave.Problems.GSM8K.Sprint0922A11
