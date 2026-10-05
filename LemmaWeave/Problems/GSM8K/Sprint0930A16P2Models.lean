import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0930A16P2

structure VacationTripModel where
  totalDays : ℕ
  travelDays : ℕ
  grandparentsDays : ℕ
  brotherDays : ℕ
  sisterDays : ℕ
  hTotal : totalDays = 3 * 7
  hTravel : travelDays = 1 + 1 + 2 + 2
  hGrandparents : grandparentsDays = 5
  hBrother : brotherDays = 5
  hPartition : totalDays = travelDays + grandparentsDays + brotherDays + sisterDays

theorem vacation_trip_total (m : VacationTripModel) : m.totalDays = 21 := by
  cases m <;> simp_all <;> omega

theorem vacation_trip_travel (m : VacationTripModel) : m.travelDays = 6 := by
  cases m <;> simp_all <;> omega

theorem vacation_trip_sister (m : VacationTripModel) : m.sisterDays = 5 := by
  have h1 := vacation_trip_total m
  have h2 := vacation_trip_travel m
  cases m <;> simp_all <;> omega

structure PaintingsConventional where
  stillLifes : ℕ
  portraits : ℕ
  total : ℕ
  hTotal : total = 80
  hPartition : total = stillLifes + portraits
  hFourTimes : stillLifes = 4 * portraits

theorem paintings_conventional_portraits (m : PaintingsConventional) : m.portraits = 16 := by
  cases m <;> simp_all <;> omega

structure PaintingsLiteral where
  stillLifes : ℕ
  portraits : ℕ
  total : ℕ
  hTotal : total = 80
  hPartition : total = stillLifes + portraits
  hFourTimesMore : stillLifes = portraits + 4 * portraits

theorem paintings_literal_impossible (m : PaintingsLiteral) : False := by
  cases m <;> simp_all <;> omega

theorem paintings_readings_differ : (16 : ℚ) ≠ 40 / 3 := by
  norm_num

structure FudgeModel where
  tomasHalfPounds : ℕ
  katyaHalfPounds : ℕ
  borisHalfPounds : ℕ
  totalHalfPounds : ℕ
  ounces : ℕ
  hTomas : tomasHalfPounds = 3
  hKatya : katyaHalfPounds = 1
  hBoris : borisHalfPounds = 4
  hTotal : totalHalfPounds = tomasHalfPounds + katyaHalfPounds + borisHalfPounds
  hOunces : ounces = totalHalfPounds * 8

theorem fudge_total_half_pounds (m : FudgeModel) : m.totalHalfPounds = 8 := by
  cases m <;> simp_all <;> omega

theorem fudge_total_ounces (m : FudgeModel) : m.ounces = 64 := by
  have h := fudge_total_half_pounds m
  cases m <;> simp_all <;> omega

structure SandModel where
  cityAHalfTons : ℕ
  cityBHalfTons : ℕ
  cityCHalfTons : ℕ
  cityDHalfTons : ℕ
  totalHalfTons : ℕ
  hA : cityAHalfTons = 33
  hB : cityBHalfTons = 52
  hC : cityCHalfTons = 49
  hTotal : totalHalfTons = 190
  hPartition : totalHalfTons = cityAHalfTons + cityBHalfTons + cityCHalfTons + cityDHalfTons

theorem sand_known_half_tons (m : SandModel) : m.cityAHalfTons + m.cityBHalfTons + m.cityCHalfTons = 134 := by
  cases m <;> simp_all <;> omega

theorem sand_city_d_half_tons (m : SandModel) : m.cityDHalfTons = 56 := by
  have h := sand_known_half_tons m
  cases m <;> simp_all <;> omega

theorem sand_city_d_tons (m : SandModel) : m.cityDHalfTons / 2 = 28 := by
  have h := sand_city_d_half_tons m
  omega

structure CountryConventional where
  usSixths : ℕ
  canadaSixths : ℕ
  russiaSixths : ℕ
  hUS : usSixths = 6
  hCanada : 2 * canadaSixths = 3 * usSixths
  hRussia : 3 * russiaSixths = 4 * canadaSixths

theorem country_conventional_canada (m : CountryConventional) : m.canadaSixths = 9 := by
  cases m <;> simp_all <;> omega

theorem country_conventional_russia (m : CountryConventional) : m.russiaSixths = 12 := by
  have h := country_conventional_canada m
  cases m <;> simp_all <;> omega

theorem country_conventional_ratio (m : CountryConventional) : (m.russiaSixths : ℚ) / m.usSixths = 2 := by
  have h1 := country_conventional_canada m
  have h2 := country_conventional_russia m
  cases m <;> norm_num

structure CountryLiteral where
  usSixths : ℕ
  canadaSixths : ℕ
  russiaSixths : ℕ
  hUS : usSixths = 6
  hCanada : 2 * canadaSixths = 5 * usSixths
  hRussia : 3 * russiaSixths = 4 * canadaSixths

theorem country_literal_canada (m : CountryLiteral) : m.canadaSixths = 15 := by
  cases m <;> simp_all <;> omega

theorem country_literal_russia (m : CountryLiteral) : m.russiaSixths = 20 := by
  have h := country_literal_canada m
  cases m <;> simp_all <;> omega

theorem country_literal_ratio (m : CountryLiteral) : (m.russiaSixths : ℚ) / m.usSixths = 10 / 3 := by
  have h1 := country_literal_canada m
  have h2 := country_literal_russia m
  cases m <;> norm_num

theorem country_readings_differ : (2 : ℚ) ≠ 10 / 3 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint0930A16P2
