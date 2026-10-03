"""Safety checks for the fixed-head syntax repair and audit-root inventory."""
import hashlib
import importlib.util
import json
import re
from pathlib import Path
import unittest
import tempfile
from unittest.mock import patch

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('repair_hidden_driver_syntax', ROOT / 'scripts/repair_hidden_driver_syntax.py')
repair = importlib.util.module_from_spec(spec)
spec.loader.exec_module(repair)


class HiddenDriverSyntaxTests(unittest.TestCase):
    def test_preserve_comments_strings_and_multiline_to(self):
        source = '''/- namespace P := Wrong /- #lw_dependencies wrong -/ -/
namespace P := Exact.Model
-- P.fake and #lw_dependencies fake
#check "P.fake \\" #lw_dependencies fake"
#lw_dependencies Exact.Model.step /- comment -/
  to "work/final.json"
#lw_dependencies P.step -- keep this comment
'''
        expected = source.replace('namespace P := Exact.Model', '').replace(
            '#lw_dependencies P.step', '#check Exact.Model.step')
        actual, roots = repair.transform(source)
        self.assertEqual(actual, expected)
        self.assertEqual(roots, ['P.step'])

    def test_preserve_identifier_boundaries(self):
        source = 'namespace P := Exact.Model\n#check P.step\n#check Outer.P.step\n#check XP.step\n'
        actual, _ = repair.transform(source)
        self.assertEqual(actual, '\n#check Exact.Model.step\n#check Outer.P.step\n#check XP.step\n')

    def test_reject_unclosed_or_ambiguous_lexical_input(self):
        for source in ['/- unclosed', '"unclosed', 'namespace /- keep -/ P := Exact.Model']:
            with self.assertRaises(ValueError):
                repair.transform(source)

    def test_individual_graph_keeps_uncovered_root_and_comments(self):
        source = '#lw_dependencies Exact.Model.alternative -- keep\n'
        actual, roots = repair.transform(source, individual_graphs={'Exact.Model.alternative': 'work/line-alternative-graph.json'})
        self.assertEqual(actual, '#lw_dependencies Exact.Model.alternative to "work/line-alternative-graph.json" -- keep\n')
        self.assertEqual(roots, ['Exact.Model.alternative'])
        with self.assertRaises(ValueError):
            repair.transform(source, individual_graphs={'Exact.Model.alternative': '../elsewhere.json'})

    def test_inferred_wrapper_gets_exact_model_type_and_arguments(self):
        model = 'namespace Exact.Model\nstructure Quantity where\n  value : Nat\ntheorem answer (m : Quantity) : m.value = m.value := rfl\nend Exact.Model\n'
        source = 'import Exact.ModelModels\n-- theorem answer := ignored\ntheorem answer := Exact.Model.answer -- preserve\n#lw_dependencies answer to "work/answer.json"\n'
        actual, roots = repair.transform(source, model)
        self.assertIn('theorem answer (m : Exact.Model.Quantity) : m.value = m.value := Exact.Model.answer m -- preserve', actual)
        self.assertIn('import LemmaWeave.Audit.Extract\n', actual)
        self.assertIn('-- theorem answer := ignored\n', actual)
        self.assertEqual(roots, [])
        with self.assertRaises(ValueError):
            repair.transform(source)

    def test_already_repaired_source_rejects_frozen_input_drift(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / 'driver.lean').write_text('#check Nat\n')
            (root / 'model.lean').write_text('original model\n')
            (root / 'knowledge/recipes').mkdir(parents=True)
            recipe = root / 'knowledge/recipes/example.json'
            recipe.write_text('{"id": "example"}\n')
            row = {'path': 'driver.lean', 'after_sha256': hashlib.sha256((root / 'driver.lean').read_bytes()).hexdigest(),
                   'model_path': 'model.lean', 'model_sha256': hashlib.sha256((root / 'model.lean').read_bytes()).hexdigest(),
                   'bare_roots': [{'recipe': 'example', 'recipe_sha256': hashlib.sha256(recipe.read_bytes()).hexdigest()}]}
            manifest = root / 'manifest.json'
            manifest.write_text(json.dumps({'base_head': 'fixed', 'targets': [row]}))
            for drift in [root / 'model.lean', recipe]:
                original = drift.read_bytes()
                drift.write_bytes(original + b'changed')
                with patch.object(repair, 'ROOT', root), patch.object(repair, 'MANIFEST', manifest), patch('sys.argv', ['repair']):
                    with self.assertRaisesRegex(ValueError, 'hash mismatch'):
                        repair.main()
                drift.write_bytes(original)

    def test_missing_binders_keep_explicit_conclusions(self):
        model = 'namespace Exact.Model\nstructure Quantity where\n  value : Nat\n' + ''.join(
            f'theorem t{i} (m:Quantity) : m.value=m.value := rfl\n' for i in range(47))
        source = ''.join(f'theorem t{i} : m.value=m.value := Exact.Model.t{i}\n' for i in range(47))
        fixed = repair.bind_missing_model_parameters(source, model)
        self.assertEqual(fixed.count('(m:Exact.Model.Quantity)'), 47)
        self.assertEqual(fixed.count(' : m.value=m.value :='), 47)
        self.assertIn(':= Exact.Model.t46 m\n', fixed)
        with self.assertRaisesRegex(ValueError, 'conclusion differs'):
            repair.bind_missing_model_parameters(source.replace('m.value=m.value', 'm.value=0', 1), model)

    def test_explicit_root_collision_changes_only_its_output(self):
        source = '#lw_dependencies Exact.first to "work/shared-graph.json"\n#lw_dependencies Exact.second to "work/shared-graph.json"\n'
        fixed, _ = repair.transform(source, explicit_output_changes=[{'root': 'Exact.first', 'old_graph': 'work/shared-graph.json', 'new_graph': 'work/first-graph.json'}])
        self.assertEqual(fixed, '#lw_dependencies Exact.first to "work/first-graph.json"\n#lw_dependencies Exact.second to "work/shared-graph.json"\n')

    def test_explicit_outputs_do_not_overwrite_distinct_roots(self):
        manifest = json.loads(repair.MANIFEST.read_text())
        paths = {}
        count = 0
        for target in manifest['targets']:
            source = (ROOT / target['path']).read_text()
            masked = repair.mask_lean(source)
            opens = re.findall(r'^\s*open ([\w.]+)\s*$', masked, re.M)
            for command in re.finditer(r'#lw_dependencies\s+([\w.]+)\s+to\s+"([^"\n]+)"', source):
                if not masked[command.start():].startswith('#lw_dependencies'):
                    continue
                name = command[1] if '.' in command[1] else opens[0] + '.' + command[1]
                paths.setdefault(command[2], set()).add(name)
                count += 1
        self.assertEqual(count, 938)
        self.assertTrue(all(len(roots) == 1 for roots in paths.values()))

    def test_every_retired_audit_root_remains_a_frozen_recipe_line(self):
        manifest = json.loads(repair.MANIFEST.read_text())
        self.assertEqual(len(manifest['targets']), 107)
        self.assertEqual(sum(len(t['bare_roots']) for t in manifest['targets']), 805)
        self.assertFalse({t['path'] for t in manifest['targets']} & set(manifest['excluded28']))
        for target in manifest['targets']:
            source = (ROOT / target['path']).read_bytes()
            self.assertEqual(hashlib.sha256(source).hexdigest(), target['after_sha256'])
            for audit in target['bare_roots']:
                path = ROOT / 'knowledge/recipes' / (audit['recipe'] + '.json')
                self.assertEqual(hashlib.sha256(path.read_bytes()).hexdigest(), audit['recipe_sha256'])
                recipe = json.loads(path.read_text())
                self.assertEqual(recipe['solution_format'], 'individual_lines_v1')
                self.assertEqual(recipe['lean_file'], target['path'])
                self.assertEqual(recipe['root'], audit['final_root'])
                self.assertEqual(recipe['graph'], audit['graph'])
                step = next(s for s in recipe['steps'] if s['id'] == audit['step'])
                self.assertEqual(step['lean_declaration'], audit['declaration'])


if __name__ == '__main__':
    unittest.main()
