import Lean
import Lean.Util.CollectAxioms

/- Draft extractor for Lean 4.33.1. NOT compiled in the initial session.
   This metaprogram inspects kernel declarations; it is not an exam proof.
   Missing imported bodies must remain unresolved, even when collectAxioms succeeds. -/
namespace LemmaWeave.Audit
open Lean Elab Command

private def kindOf : ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"
  | .quotInfo _ => "quotient_primitive"

private def edge (src dst : Name) (kind : String) : Json :=
  Json.mkObj [("from", toJson src.toString), ("to", toJson dst.toString),
    ("kind", toJson kind)]

/-- Export direct references and traverse their closure with an explicit node limit. -/
def extract (root : Name) (limit : Nat := 100000) : CommandElabM Json := do
  let env ← getEnv
  let kernel := env.checked.get
  if (kernel.find? root).isNone then
    throwError "Missing kernel declaration {root}"
  let mut todo : Array Name := #[root]
  let mut index := 0
  let mut visited : NameSet := {}
  let mut nodes : Array Json := #[]
  let mut edges : Array Json := #[]
  let mut boundaries : Array Json := #[]
  while index < todo.size && nodes.size < limit do
    let name := todo[index]!
    index := index + 1
    if visited.contains name then
      continue
    visited := visited.insert name
    match kernel.find? name with
    | none =>
      nodes := nodes.push (Json.mkObj [("name", toJson name.toString),
        ("kind", toJson "unknown"), ("body_status", toJson "unavailable")])
      boundaries := boundaries.push (Json.mkObj [("name", toJson name.toString),
        ("reason", toJson "not_in_checked_environment")])
    | some info =>
      let mut refs : Array (Name × String) :=
        info.type.getUsedConstants.map fun n => (n, "type_reference")
      let mut bodyStatus := "kernel_primitive"
      let mut body : Json := Json.null
      if let some value := info.value? (allowOpaque := true) then
        bodyStatus := "available"
        body := toJson (reprStr value)
        let bodyRefs := value.getUsedConstants
        if bodyRefs.contains ``sorryAx then
          bodyStatus := "erased_or_untrusted"
        let refKind := if info.isTheorem then "proof_reference" else "definition_reference"
        refs := refs ++ bodyRefs.map fun n => (n, refKind)
      else if info.isAxiom then
        bodyStatus := "axiom"
      else if info.hasValue (allowOpaque := true) then
        bodyStatus := "unavailable"
      match info with
      | .inductInfo value =>
        refs := refs ++ value.ctors.toArray.map fun n => (n, "constructor_reference")
      | .recInfo value =>
        for rule in value.rules do
          refs := refs.push (rule.ctor, "recursor_rule_constructor")
          refs := refs ++ rule.rhs.getUsedConstants.map fun n => (n, "recursor_rule_reference")
      | _ => pure ()
      for (target, refKind) in refs do
        edges := edges.push (edge name target refKind)
        if !visited.contains target then
          todo := todo.push target
      nodes := nodes.push (Json.mkObj [("name", toJson name.toString),
        ("kind", toJson (kindOf info)), ("type_expr", toJson (reprStr info.type)),
        ("body_expr", body), ("body_status", toJson bodyStatus),
        ("unsafe", toJson info.isUnsafe), ("source_location", Json.null),
        ("source_location_status", toJson "not_resolved")])
  let truncated : Bool := decide (index < todo.size)
  if truncated then
    boundaries := boundaries.push (Json.mkObj [("reason", toJson "node_limit"),
      ("limit", toJson limit), ("pending", toJson (todo.size - index))])
  let axioms ← Lean.collectAxioms root
  return Json.mkObj [("schema_version", toJson "0.1"),
    ("extractor_status", toJson "draft_not_validated"),
    ("roots", toJson #[root.toString]), ("nodes", Json.arr nodes),
    ("edges", Json.arr edges), ("truncated", toJson truncated),
    ("unresolved_boundaries", Json.arr boundaries),
    ("lean_collected_axioms", toJson (axioms.map Name.toString)),
    ("classification_status", toJson "not_started"),
    ("instance_and_generated_edge_subtypes", toJson "not_inferred"),
    ("closure_status", toJson "requires_fixture_validation_and_body_availability_review")]

elab "#lw_dependencies " name:ident " to " path:str : command => do
  let result ← extract name.getId
  liftIO <| IO.FS.writeFile path.getString result.compress

end LemmaWeave.Audit
