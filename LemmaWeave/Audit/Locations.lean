import Lean
import Lean.OriginalConstKind

/- Source-location sidecar. Existing hash-bound raw graphs remain immutable.
   Module identity comes from Lean's environment, not a name-prefix heuristic. -/
namespace LemmaWeave.Audit
open Lean Elab Command

def locations (root : Name) : CommandElabM Json := do
  let env ← getEnv
  let kernel := env.checked.get
  let mut todo : Array Name := #[root]
  let mut i := 0
  let mut seen : NameSet := {}
  let mut result : Array Json := #[]
  while i < todo.size do
    let name := todo[i]!
    i := i + 1
    if seen.contains name then continue
    seen := seen.insert name
    match kernel.find? name with
    | none =>
      result := result.push <| Json.mkObj [("name", toJson name.toString),
        ("status", toJson "unavailable_declaration")]
    | some info =>
      let moduleName := match env.getModuleIdxFor? name with
        | some idx => env.allImportedModuleNames[idx.toNat]!
        | none => env.mainModule
      let ranges ← Lean.findDeclarationRanges? name
      result := result.push <| Json.mkObj [("name", toJson name.toString),
        ("source_module", toJson moduleName.toString),
        ("module_relative_file", toJson (moduleName.toString.replace "." "/" ++ ".lean")),
        ("range", toJson (ranges.map reprStr)),
        ("status", toJson (if ranges.isSome then "module_and_range" else "module_only_no_recorded_range")),
        ("original_kind", toJson (reprStr (Lean.getOriginalConstKind? env name)))]
      todo := todo ++ info.type.getUsedConstants
      if let some body := info.value? (allowOpaque := true) then
        todo := todo ++ body.getUsedConstants
      match info with
      | .inductInfo value => todo := todo ++ value.ctors.toArray
      | .recInfo value =>
        for rule in value.rules do
          todo := todo.push rule.ctor ++ rule.rhs.getUsedConstants
      | _ => pure ()
  return Json.mkObj [("schema_version", toJson "0.1"), ("root", toJson root.toString),
    ("source_mapping", Json.arr result),
    ("policy", toJson "Generated declarations and primitives may have no original token range; absence is retained.")]

elab "#lw_locations " name:ident " to " path:str : command => do
  let result ← locations name.getId
  if let some parent := (System.FilePath.mk path.getString).parent then
    liftIO <| IO.FS.createDirAll parent
  liftIO <| IO.FS.writeFile path.getString result.compress

end LemmaWeave.Audit
