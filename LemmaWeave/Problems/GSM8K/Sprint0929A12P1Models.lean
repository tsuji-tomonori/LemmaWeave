import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A12P1

structure BowlModel where
  emptyWeight : ℕ
  dailyFood : ℕ
  fillDays : ℕ
  foodAdded : ℕ
  fullWeight : ℕ
  eaten : ℕ
  currentWeight : ℕ
  hEmpty : emptyWeight = 420
  hDaily : dailyFood = 60
  hDays : fillDays = 3
  hFood : foodAdded = dailyFood * fillDays
  hFull : fullWeight = emptyWeight + foodAdded
  hEaten : eaten = 14
  hCurrent : currentWeight + eaten = fullWeight

theorem bowl_food (m : BowlModel) : m.foodAdded = 180 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all

theorem bowl_full (m : BowlModel) : m.fullWeight = 600 := by
  have hPrev := bowl_food m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all

theorem bowl_solution (m : BowlModel) : m.currentWeight = 586 := by
  have hPrev := bowl_full m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all <;> omega

structure MargoModel where
  benjieNow : ℕ
  ageGap : ℕ
  margoNow : ℕ
  yearsAhead : ℕ
  margoFuture : ℕ
  hBenjie : benjieNow = 6
  hGap : ageGap = 5
  hNow : margoNow + ageGap = benjieNow
  hAhead : yearsAhead = 3
  hFuture : margoFuture = margoNow + yearsAhead

theorem margo_now (m : MargoModel) : m.margoNow = 1 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all <;> omega

theorem margo_solution (m : MargoModel) : m.margoFuture = 4 := by
  have hPrev := margo_now m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all

structure BonesModel where
  monthly : ℕ
  months : ℕ
  total : ℕ
  available : ℕ
  buried : ℕ
  hMonthly : monthly = 10
  hMonths : months = 5
  hTotal : total = monthly * months
  hAvailable : available = 8
  hBuried : buried + available = total

theorem bones_total (m : BonesModel) : m.total = 50 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all

theorem bones_solution (m : BonesModel) : m.buried = 42 := by
  have hPrev := bones_total m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all <;> omega

structure DogsModel where
  brown : ℕ
  black : ℕ
  white : ℕ
  grey : ℕ
  total : ℕ
  average : ℕ
  hBrown : brown = 4
  hBlack : black = brown + 1
  hWhite : white = 2 * brown
  hGrey : grey + 2 = black
  hTotal : total = brown + black + white + grey
  hAverage : total = 4 * average

theorem dogs_black (m : DogsModel) : m.black = 5 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all

theorem dogs_white (m : DogsModel) : m.white = 8 := by
  have hPrev := dogs_black m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all

theorem dogs_grey (m : DogsModel) : m.grey = 3 := by
  have hPrev := dogs_white m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

theorem dogs_total (m : DogsModel) : m.total = 20 := by
  have hPrev := dogs_grey m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all

theorem dogs_solution (m : DogsModel) : m.average = 5 := by
  have hPrev := dogs_total m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

structure CoalModel where
  originalPeople : ℕ
  originalDays : ℕ
  originalPounds : ℕ
  perPersonDaily : ℕ
  newPeople : ℕ
  newPounds : ℕ
  dailyRate : ℕ
  newDays : ℕ
  hOriginalPeople : originalPeople = 10
  hOriginalDays : originalDays = 10
  hOriginalPounds : originalPounds = 10000
  hPerPerson : 100 * perPersonDaily = originalPounds
  hNewPeople : newPeople = 5
  hNewPounds : newPounds = 40000
  hDailyRate : dailyRate = 100 * newPeople
  hNewDays : 500 * newDays = newPounds

theorem coal_per_person (m : CoalModel) : m.perPersonDaily = 100 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  simp_all <;> omega

theorem coal_daily (m : CoalModel) : m.dailyRate = 500 := by
  have hPrev := coal_per_person m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  simp_all

theorem coal_solution (m : CoalModel) : m.newDays = 80 := by
  have hPrev := coal_daily m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A12P1
