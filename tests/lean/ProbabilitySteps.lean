import LemmaWeave.Problems.Probability.Model
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.ProbabilitySteps
open LemmaWeave.Lemmas.FiniteProbability LemmaWeave.Problems.Probability

-- Eggs: every named statement below corresponds to one written solution line.
theorem eggs_positive (t : Table) (h : Eggs t) : probA t ≠ 0 ∧ probNotA t ≠ 0 := by
  rcases h with ⟨ha, hn, _, _⟩
  rw [ha, hn]
  norm_num

theorem eggs_blue (t : Table) (h : Eggs t) : t.ab = (4/5 : ℚ) * (1/4) := by
  rw [multiply_given t (eggs_positive t h).1, h.1, h.2.2.1]

theorem eggs_purple (t : Table) (h : Eggs t) : t.nb = (1/5 : ℚ) * (1/2) := by
  rw [multiply_given_complement t (eggs_positive t h).2, h.2.1, h.2.2.2]

theorem eggs_sum (t : Table) (h : Eggs t) :
    probB t = (4/5 : ℚ) * (1/4) + (1/5 : ℚ) * (1/2) := by
  rw [split_event, eggs_blue t h, eggs_purple t h]

theorem eggs_fraction (t : Table) (h : Eggs t) : probB t = 3/10 := by
  rw [eggs_sum t h]
  norm_num

theorem eggs_percent (t : Table) (h : Eggs t) : 100 * probB t = 30 := by
  rw [eggs_fraction t h]
  norm_num

/-- One consistent population: 2 blue/five, 6 blue/one, 1 purple/five, 1 purple/one. -/
def eggsWitness : Table := ⟨1/5, 3/5, 1/10, 1/10, by norm_num, by norm_num,
  by norm_num, by norm_num, by norm_num⟩

theorem eggs_exists : ∃ t, Eggs t := by
  exact ⟨eggsWitness, by norm_num [Eggs, givenA, givenNotA, probA, probNotA, eggsWitness]⟩

theorem eggs_solution : (∃ t, Eggs t) ∧ ∀ t, Eggs t → 100 * probB t = 30 :=
  ⟨eggs_exists, eggs_percent⟩

-- Marbles: the probability model, denominator condition, equivalence and integral answer.
theorem marbles_total (y : ℕ) : (7 + 11 + (y : ℚ)) = 18 + y ∧ 0 < (18 + (y : ℚ)) := by
  constructor
  · ring
  · positivity

theorem marbles_ratio (y : ℕ) (h : Marbles y) : (y : ℚ) / (18 + y) = 1/4 := by
  unfold Marbles yellowChance at h
  rw [(marbles_total y).1] at h
  exact h

theorem marbles_balance (y : ℕ) (h : Marbles y) : (y : ℚ) = (1/4 : ℚ) * (18 + y) := by
  exact ratio_cross_multiply _ _ _ (ne_of_gt (marbles_total y).2) (marbles_ratio y h)

theorem marbles_linear (y : ℕ) (h : Marbles y) : 3 * (y : ℚ) = 18 := by
  linarith [marbles_balance y h]

theorem marbles_unique (y : ℕ) (h : Marbles y) : y = 6 := by
  have hy : (y : ℚ) = 6 := by linarith [marbles_linear y h]
  exact_mod_cast hy

theorem marbles_exists : Marbles 6 := by norm_num [Marbles, yellowChance]

theorem marbles_solution (y : ℕ) : Marbles y ↔ y = 6 := by
  constructor
  · exact marbles_unique y
  · rintro rfl
    exact marbles_exists

-- Candidates: the answer's independence assumption is absent in the problem.
theorem candidates_nights (t : Table) (h : Candidates t) : probB t = 3/10 := by
  rw [complement, h.2]
  norm_num

theorem candidates_bounds (t : Table) (h : Candidates t) : 0 ≤ t.ab ∧ t.ab ≤ 1/5 := by
  have hb := intersection_bounds t
  rw [h.1] at hb
  exact hb

/-- Every x in the claimed interval is feasible, so the bounds are sharp. -/
def candidatesWitness (x : ℚ) (hx : 0 ≤ x) (hu : x ≤ 1/5) : Table where
  ab := x
  an := 1/5 - x
  nb := 3/10 - x
  nn := 1/2 + x
  ab_nonneg := hx
  an_nonneg := sub_nonneg.mpr hu
  nb_nonneg := by linarith
  nn_nonneg := by linarith
  normalized := by ring

theorem candidates_attain (x : ℚ) (hx : 0 ≤ x) (hu : x ≤ 1/5) :
    ∃ t, Candidates t ∧ t.ab = x := by
  refine ⟨candidatesWitness x hx hu, ?_, rfl⟩
  change (x + (1/5 - x) = 1/5) ∧ ((1/5 - x) + (1/2 + x) = 7/10)
  constructor <;> ring

theorem candidates_range (x : ℚ) : (∃ t, Candidates t ∧ t.ab = x) ↔ 0 ≤ x ∧ x ≤ 1/5 := by
  constructor
  · rintro ⟨t, ht, rfl⟩
    exact candidates_bounds t ht
  · rintro ⟨hx, hu⟩
    exact candidates_attain x hx hu

theorem candidates_not_unique : ¬ ∃ p : ℚ, ∀ t, Candidates t → t.ab = p := by
  obtain ⟨t0, h0, v0⟩ := (candidates_range 0).mpr (by norm_num)
  obtain ⟨t1, h1, v1⟩ := (candidates_range (1/5)).mpr (by norm_num)
  rintro ⟨p, hp⟩
  have eq0 := hp t0 h0
  have eq1 := hp t1 h1
  rw [v0] at eq0
  rw [v1] at eq1
  linarith

theorem candidates_if_independent (t : Table) (h : Candidates t) (hi : Independent t) :
    100 * t.ab = 6 := by
  rw [independent_product t hi, h.1, candidates_nights t h]
  norm_num

theorem candidates_solution :
    (∀ x : ℚ, (∃ t, Candidates t ∧ t.ab = x) ↔ 0 ≤ x ∧ x ≤ 1/5) ∧
    (¬ ∃ p : ℚ, ∀ t, Candidates t → t.ab = p) ∧
    (∀ t, Candidates t → Independent t → 100 * t.ab = 6) :=
  ⟨candidates_range, candidates_not_unique, candidates_if_independent⟩

end LemmaWeave.Tests.ProbabilitySteps

#print axioms LemmaWeave.Tests.ProbabilitySteps.eggs_solution
#print axioms LemmaWeave.Tests.ProbabilitySteps.marbles_solution
#print axioms LemmaWeave.Tests.ProbabilitySteps.candidates_solution
#lw_dependencies LemmaWeave.Tests.ProbabilitySteps.eggs_solution to "work/probability-eggs-graph.json"
#lw_dependencies LemmaWeave.Tests.ProbabilitySteps.marbles_solution to "work/probability-marbles-graph.json"
#lw_dependencies LemmaWeave.Tests.ProbabilitySteps.candidates_solution to "work/probability-candidates-graph.json"
