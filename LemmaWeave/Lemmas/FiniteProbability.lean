import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Tactic

/- Four disjoint events: A∩B, A∩¬B, ¬A∩B, ¬A∩¬B.
   This is a finite rational probability model, not a claim that all probability
   spaces have four outcomes or rational weights. No independence is assumed. -/
namespace LemmaWeave.Lemmas.FiniteProbability

structure Table where
  ab : ℚ
  an : ℚ
  nb : ℚ
  nn : ℚ
  ab_nonneg : 0 ≤ ab
  an_nonneg : 0 ≤ an
  nb_nonneg : 0 ≤ nb
  nn_nonneg : 0 ≤ nn
  normalized : ab + an + nb + nn = 1

def probA (t : Table) : ℚ := t.ab + t.an
def probNotA (t : Table) : ℚ := t.nb + t.nn
def probB (t : Table) : ℚ := t.ab + t.nb
def probNotB (t : Table) : ℚ := t.an + t.nn
def givenA (t : Table) : ℚ := t.ab / probA t
def givenNotA (t : Table) : ℚ := t.nb / probNotA t

/-- Conditional probability is the proportion inside a positive-probability row. -/
theorem multiply_given (t : Table) (h : probA t ≠ 0) :
    t.ab = probA t * givenA t := by
  unfold givenA
  field_simp

 theorem multiply_given_complement (t : Table) (h : probNotA t ≠ 0) :
    t.nb = probNotA t * givenNotA t := by
  unfold givenNotA
  field_simp

/-- The two parts are disjoint by construction; their union is B. -/
theorem split_event (t : Table) : probB t = t.ab + t.nb := rfl

theorem total_probability (t : Table) (ha : probA t ≠ 0) (hn : probNotA t ≠ 0) :
    probB t = probA t * givenA t + probNotA t * givenNotA t := by
  rw [split_event, ← multiply_given t ha, ← multiply_given_complement t hn]

theorem complement (t : Table) : probB t = 1 - probNotB t := by
  unfold probB probNotB
  linarith [t.normalized]

/-- An intersection is contained in either marginal; nonnegative cell weights justify it. -/
theorem intersection_bounds (t : Table) : 0 ≤ t.ab ∧ t.ab ≤ probA t := by
  exact ⟨t.ab_nonneg, le_add_of_nonneg_right t.an_nonneg⟩

/-- The product of marginals needs this EXTRA hypothesis (independence). -/
def Independent (t : Table) : Prop := t.ab = probA t * probB t

theorem independent_product (t : Table) (h : Independent t) :
    t.ab = probA t * probB t := h

/-- Equal-likelihood counting: the denominator is the full, nonempty population. -/
def yellowChance (yellow : ℕ) : ℚ := (yellow : ℚ) / (7 + 11 + yellow)

theorem ratio_cross_multiply (x n p : ℚ) (hn : n ≠ 0) (h : x / n = p) :
    x = p * n := (div_eq_iff hn).mp h

end LemmaWeave.Lemmas.FiniteProbability
