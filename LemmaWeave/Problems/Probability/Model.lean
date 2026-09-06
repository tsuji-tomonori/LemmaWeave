import LemmaWeave.Lemmas.FiniteProbability

namespace LemmaWeave.Problems.Probability
open LemmaWeave.Lemmas.FiniteProbability

/-- GSM8K train 1787: A = blue, ¬A = purple, B = five candies.
    A random egg is interpreted as uniform selection among the eggs. -/
def Eggs (t : Table) : Prop :=
  probA t = 4/5 ∧ probNotA t = 1/5 ∧ givenA t = 1/4 ∧ givenNotA t = 1/2

/-- GSM8K train 2060: the yellow count is a natural number; all marbles are equally likely. -/
def Marbles (yellow : ℕ) : Prop := yellowChance yellow = 1/4

/-- GSM8K train 7275: A = Excel, B = willing to work nights.
    Day-only means not willing to work nights. The two attributes are NOT assumed independent. -/
def Candidates (t : Table) : Prop := probA t = 1/5 ∧ probNotB t = 7/10

end LemmaWeave.Problems.Probability
