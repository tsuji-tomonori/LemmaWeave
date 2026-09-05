import Mathlib.Data.Nat.Basic
import Mathlib.Algebra.Group.Basic
import LemmaWeave.Audit.Extract
import LemmaWeave.Audit.Fixtures.Shared

namespace LemmaWeave.Tests

def OnlyInType (n : Nat) : Prop := n = n
theorem typeOnly (n : Nat) : OnlyInType n := rfl
theorem explicitBase (n : Nat) : n + 0 = n := Nat.add_zero n
theorem wrapper (n : Nat) : n + 0 = n := explicitBase n
theorem implicitSimp (n : Nat) : n + 0 = n := by simp
theorem classDependency {α : Type} [AddMonoid α] (a : α) : a + 0 = a := add_zero a

theorem sharedWrapper (n : ℕ) : n + 0 = n := LemmaWeave.Audit.Fixtures.shared_add_zero n

-- These are deliberately invalid trust fixtures, isolated from the library root.
axiom forbiddenFixture : False
theorem hiddenForbidden : False := forbiddenFixture

#print axioms wrapper
#print axioms hiddenForbidden
#lw_dependencies LemmaWeave.Tests.wrapper to "work/wrapper-graph.json"
#lw_dependencies LemmaWeave.Tests.typeOnly to "work/type-only-graph.json"
#lw_dependencies LemmaWeave.Tests.implicitSimp to "work/simp-graph.json"
#lw_dependencies LemmaWeave.Tests.classDependency to "work/class-graph.json"
#lw_dependencies LemmaWeave.Tests.hiddenForbidden to "work/forbidden-graph.json"

#lw_dependencies LemmaWeave.Tests.sharedWrapper to "work/shared-graph.json"
#lw_dependencies LemmaWeave.Audit.Fixtures.even_two to "work/mutual-graph.json"

end LemmaWeave.Tests
