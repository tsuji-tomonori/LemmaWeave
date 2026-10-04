import sys
import gzip
import hashlib
import json
from types import SimpleNamespace
import unittest
from pathlib import Path
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))

import run_method_targets as storage
from run_method_targets import build_target_plan, run_lean_target


class MethodTargetIsolation(unittest.TestCase):
    @patch('run_method_targets.subprocess.run')
    def test_dependency_failure_is_returned_without_running_lean(self, run):
        run.return_value.returncode = 1
        outcome = build_target_plan({
            'target': 'tests/lean/Broken.lean',
            'project_imports': ['LemmaWeave.Problems.Broken'],
        })
        self.assertEqual(outcome['dependency_build_exit_code'], 1)
        self.assertIsNone(outcome['lean_exit_code'])
        run.assert_called_once()

    @patch('run_method_targets.subprocess.run')
    def test_lean_check_uses_evidence_wrapper(self, run):
        run.return_value.returncode = 0
        self.assertEqual(run_lean_target('tests/lean/Healthy.lean'), 0)
        argv = run.call_args.args[0]
        self.assertEqual(argv[:4], [
            sys.executable, 'scripts/run.py', '--timeout', '900'])
        self.assertEqual(argv[-3:], [
            'lake', 'env', 'lean', 'tests/lean/Healthy.lean'][-3:])



class BoundedGraphStorage(unittest.TestCase):
    """Synthetic recorder fixtures test storage, never claim Lean execution."""

    def setUp(self):
        import tempfile
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name).resolve()
        self.target = 'tests/lean/Fixture.lean'
        self.model = 'LemmaWeave/Problems/FixtureModels.lean'
        self.exports = {'work/fixture-graph.json': 'Fixture.solution',
                        'work/individual-line-graph.json': 'Fixture.other'}
        self.write(self.model, 'theorem placeholder : True := True.intro\n')
        self.source = 'import LemmaWeave.Problems.FixtureModels\n' + ''.join(
            f'#lw_dependencies {name} to "{path}"\n'
            for path, name in self.exports.items())
        self.write(self.target, self.source)
        for name in ['lean-toolchain', 'lake-manifest.json', 'lakefile.toml']:
            self.write(name, 'fixed fixture\n')
        self.recipe = {
            'id': 'fixture', 'lean_file': self.target,
            'graph': 'work/fixture-graph.json', 'root': 'Fixture.solution',
            'solution_format': 'individual_lines_v1', 'authorship': 'llm_individual',
            'semantic_review_status': 'self_review_only',
            'author_review': {'status': 'checked', 'checks_ja': ['synthetic fixture']},
            'steps': [{'id': 'answer', 'lean_declaration': 'Fixture.solution',
                       'requires_steps': [], 'uses_nodes': [], 'baseline_ja': 'fixture',
                       'condition_ja': 'fixture', 'conclusion_ja': 'fixture'}],
        }
        self.before = {p: None for p in self.exports}
        self.run_path = 'runs/synthetic-new/run.json'

    def write(self, name, text):
        path = self.root / name
        path.parent.mkdir(parents=True, exist_ok=True)
        if isinstance(text, bytes):
            path.write_bytes(text)
        else:
            path.write_text(text)
        return path

    def generated(self):
        for path, name in self.exports.items():
            graph = {'roots': [name], 'nodes': [{'name': name, 'kind': 'theorem',
                                               'body_status': 'available'}],
                     'edges': [], 'lean_collected_axioms': []}
            self.write(path, json.dumps(graph))
        self.record()

    def record(self):
        required = [self.target, self.model, 'lean-toolchain', 'lake-manifest.json', 'lakefile.toml']
        stdout = self.write('runs/synthetic-new/stdout.log', 'synthetic test output\n')
        stderr = self.write('runs/synthetic-new/stderr.log', '')
        record = {'status': 'succeeded', 'exit_code': 0,
                  'argv': ['lake', 'env', 'lean', self.target],
                  'inputs': {'git_commit': 'synthetic-commit',
                             'files': {p: storage.file_sha(self.root / p) for p in required}},
                  'environment': {'github_run_id': None},
                  'stdout_log': str(stdout.relative_to(self.root)),
                  'stderr_log': str(stderr.relative_to(self.root)),
                  'output_sha256': {'stdout.log': storage.file_sha(stdout),
                                    'stderr.log': storage.file_sha(stderr)},
                  'artifact_sha256': {p: storage.file_sha(self.root / p) for p in self.exports
                                      if (self.root / p).exists()}}
        self.write(self.run_path, json.dumps(record))

    def archive(self):
        return storage.archive_target(self.root, self.target, [self.recipe], self.exports,
                                      self.before, self.run_path, {})

    def test_inventory_ignores_nested_comments_strings_and_preserves_all_exports(self):
        source = '''/- #lw_dependencies Bad.root to "work/bad-graph.json"
/- nested -/ -/
-- #lw_dependencies Bad.root to "work/bad-graph.json"
#check "#lw_dependencies Bad.root to \\"work/bad-graph.json\\""
open Fixture
#lw_dependencies solution /- before to -/
 to /- before path -/ "work/fixture-graph.json"
#lw_dependencies Fixture.other to "work/individual-line-graph.json"
'''
        self.write(self.target, source)
        self.assertEqual(storage.graph_exports(self.root, self.target), self.exports)

    def test_inventory_rejects_missing_paths_traversal_ambiguity_and_collisions(self):
        for source in [
            '#lw_dependencies Fixture.solution\n',
            '#lw_dependencies Fixture.solution to "../escape-graph.json"\n',
            'open First\nopen Second\n#lw_dependencies solution to "work/a-graph.json"\n',
            '#lw_dependencies Fixture.one to "work/a-graph.json"\n'
            '#lw_dependencies Fixture.two to "work/a-graph.json"\n',
        ]:
            with self.subTest(source=source):
                self.write(self.target, source)
                with self.assertRaises(ValueError):
                    storage.graph_exports(self.root, self.target)

    def test_round_trip_all_exports_and_recipe_freshness_without_raw_files(self):
        self.generated()
        expected = {p: (self.root / p).read_bytes() for p in self.exports}
        result = self.archive()
        self.assertEqual(result['export_count'], 2)
        self.assertEqual(result['raw_copies_removed'], 2)
        self.assertEqual(result['validation_errors'], [])
        manifest = json.loads((self.root / result['manifest']).read_text())
        self.assertEqual(manifest['run'], self.run_path)
        self.assertEqual(manifest['git_commit'], 'synthetic-commit')
        for entry in manifest['entries']:
            self.assertFalse((self.root / entry['raw_path']).exists())
            compressed = self.root / entry['archive']
            self.assertEqual(gzip.decompress(compressed.read_bytes()), expected[entry['raw_path']])
            self.assertEqual(entry['raw_sha256'], hashlib.sha256(expected[entry['raw_path']]).hexdigest())
        self.assertTrue(storage.evidence_is_current(self.root, self.recipe))

    def test_existing_raw_is_not_deleted_and_old_alias_bytes_are_preserved(self):
        raw = self.write(self.recipe['graph'], 'old raw bytes')
        self.before[self.recipe['graph']] = storage.file_state(raw)
        previous = gzip.compress(b'old recoverable graph', mtime=123)
        alias = self.write('reports/dependencies/methods/fixture.json.gz', previous)
        self.generated()
        result = self.archive()
        self.assertEqual(result['raw_copies_removed'], 1)
        self.assertTrue(raw.exists())
        manifest = json.loads((self.root / result['manifest']).read_text())
        history = manifest['entries'][0]['previous_recipe_archives']
        self.assertEqual(len(history), 1)
        self.assertEqual((self.root / history[0]).read_bytes(), previous)
        self.assertEqual(gzip.decompress(alias.read_bytes()), raw.read_bytes())

    def test_missing_export_preserves_every_raw_copy(self):
        self.generated()
        (self.root / 'work/individual-line-graph.json').unlink()
        with self.assertRaisesRegex(ValueError, 'not regenerated'):
            self.archive()
        self.assertTrue((self.root / self.recipe['graph']).exists())

    def test_unchanged_preexisting_export_is_not_fresh_execution(self):
        self.generated()
        self.before = {p: storage.file_state(self.root / p) for p in self.exports}
        with self.assertRaisesRegex(ValueError, 'not regenerated'):
            self.archive()
        self.assertTrue(all((self.root / p).exists() for p in self.exports))

    def test_raw_hash_and_input_drift_are_rejected_before_cleanup(self):
        for corrupt in ['raw', 'input', 'log', 'run_failed', 'wrong_command']:
            with self.subTest(corrupt=corrupt):
                self.generated()
                if corrupt == 'raw':
                    self.write(self.recipe['graph'], '{}')
                elif corrupt == 'input':
                    self.write(self.model, 'changed input')
                elif corrupt == 'log':
                    self.write('runs/synthetic-new/stdout.log', 'changed log')
                else:
                    record = json.loads((self.root / self.run_path).read_text())
                    if corrupt == 'run_failed':
                        record.update(status='failed', exit_code=1)
                    else:
                        record['argv'] = ['different-command']
                    self.write(self.run_path, json.dumps(record))
                with self.assertRaises(ValueError):
                    self.archive()
                self.assertTrue(all((self.root / p).exists() for p in self.exports))

    def test_wrong_export_root_is_not_archived(self):
        self.generated()
        graph = json.loads((self.root / self.recipe['graph']).read_text())
        graph['roots'] = ['Other.solution']
        self.write(self.recipe['graph'], json.dumps(graph))
        self.record()
        with self.assertRaisesRegex(ValueError, 'root differs'):
            self.archive()
        self.assertTrue(all((self.root / p).exists() for p in self.exports))

    def test_bad_graph_and_semantic_status_remain_failures_after_archival(self):
        self.generated()
        graph = json.loads((self.root / 'work/individual-line-graph.json').read_text())
        graph['nodes'].append({'name': 'Bad.axiom', 'kind': 'axiom', 'body_status': 'axiom'})
        graph['edges'].append({'from': 'Fixture.other', 'to': 'Bad.axiom'})
        graph['lean_collected_axioms'] = ['Bad.axiom']
        self.write('work/individual-line-graph.json', json.dumps(graph))
        self.recipe['semantic_review_status'] = 'changes_requested'
        self.record()
        result = self.archive()
        self.assertEqual(len(result['validation_errors']), 2)
        manifest = json.loads((self.root / result['manifest']).read_text())
        self.assertEqual(manifest['validation_status'], 'failed')
        self.assertFalse(any((self.root / p).exists() for p in self.exports))
        self.assertEqual(self.recipe['author_review']['status'], 'checked')

    def test_missing_written_line_remains_failure(self):
        self.generated()
        self.recipe['steps'][0]['lean_declaration'] = 'Missing.line'
        result = self.archive()
        self.assertIn('written line', result['validation_errors'][0]['error'])

    def test_axiom_collector_mismatch_remains_failure(self):
        self.generated()
        graph = json.loads((self.root / self.recipe['graph']).read_text())
        graph['lean_collected_axioms'] = ['propext']
        self.write(self.recipe['graph'], json.dumps(graph))
        self.record()
        result = self.archive()
        self.assertTrue(any('collector' in e['error'] for e in result['validation_errors']))

    def test_missing_or_malformed_axiom_collector_never_passes(self):
        for value in [None, 'propext', [42]]:
            with self.subTest(collector=value):
                self.generated()
                graph = json.loads((self.root / self.recipe['graph']).read_text())
                if value is None:
                    del graph['lean_collected_axioms']
                else:
                    graph['lean_collected_axioms'] = value
                self.write(self.recipe['graph'], json.dumps(graph))
                self.record()
                # Distinct manifests model independent recorder invocations.
                self.run_path = 'runs/synthetic-' + str(value is None) + str(type(value).__name__) + '/run.json'
                self.record()
                result = self.archive()
                self.assertTrue(any('malformed Lean axiom collector' in e['error']
                                    for e in result['validation_errors']))

    def test_preexisting_bytes_are_archived_before_build_can_overwrite(self):
        self.write(self.recipe['graph'], b'old raw with no compressed copy')
        def build(plan):
            manifests = list((self.root / 'reports/method-graph-preserved').glob('*.json'))
            self.assertEqual(len(manifests), 1)
            manifest = json.loads(manifests[0].read_text())
            entry = manifest['entries'][0]
            self.assertEqual(gzip.decompress((self.root / entry['archive']).read_bytes()),
                             b'old raw with no compressed copy')
            self.generated()
            return {'target': self.target, 'dependency_build_exit_code': 0, 'lean_exit_code': None}
        with patch.object(storage, 'build_target_plan', side_effect=build), \
             patch.object(storage, 'record_target', return_value=(0, self.run_path)):
            code = storage.archived_replay(self.root, [self.recipe], [self.target], [self.target], True)
        self.assertEqual(code, 0)
        self.assertTrue((self.root / self.recipe['graph']).exists())

    def test_corrupt_existing_content_archive_retains_raw(self):
        self.generated()
        raw_sha = storage.file_sha(self.root / self.recipe['graph'])
        key = hashlib.sha256(self.recipe['graph'].encode()).hexdigest()
        self.write(f'reports/dependencies/method-exports/{key}/{raw_sha}.json.gz', gzip.compress(b'wrong'))
        with self.assertRaisesRegex(ValueError, 'corrupt'):
            self.archive()
        self.assertTrue(all((self.root / p).exists() for p in self.exports))

    def test_corrupt_existing_recipe_archive_is_never_overwritten(self):
        self.generated()
        alias = self.write('reports/dependencies/methods/fixture.json.gz', b'not gzip')
        with self.assertRaises(OSError):
            self.archive()
        self.assertEqual(alias.read_bytes(), b'not gzip')
        self.assertTrue(all((self.root / p).exists() for p in self.exports))

    def test_roundtrip_failure_never_removes_raw(self):
        self.generated()
        with patch.object(storage, 'gzip_sha', return_value='wrong'):
            with self.assertRaisesRegex(ValueError, 'round trip'):
                self.archive()
        self.assertTrue(all((self.root / p).exists() for p in self.exports))

    def test_mutation_during_archival_prevents_cleanup(self):
        self.generated()
        original = storage.archive_raw
        def mutate(root, relative, digest):
            result = original(root, relative, digest)
            if relative == self.recipe['graph']:
                (root / relative).write_text('concurrent writer')
            return result
        with patch.object(storage, 'archive_raw', side_effect=mutate):
            with self.assertRaisesRegex(ValueError, 'changed before recoverable cleanup'):
                self.archive()
        self.assertTrue(all((self.root / p).exists() for p in self.exports))

    def test_symlink_storage_is_rejected(self):
        outside = self.root / 'outside'
        outside.mkdir()
        (self.root / 'work').symlink_to(outside, target_is_directory=True)
        with self.assertRaisesRegex(ValueError, 'symlink'):
            storage.graph_exports(self.root, self.target)

    def test_cross_target_root_collision_is_rejected_before_build(self):
        other = 'tests/lean/Other.lean'
        self.write(other, '#lw_dependencies Other.solution to "work/fixture-graph.json"\n')
        with patch.object(storage, 'build_target_plan') as build:
            with self.assertRaisesRegex(ValueError, 'cross-target'):
                storage.archived_replay(self.root, [self.recipe], [self.target, other], [self.target, other], True)
            build.assert_not_called()

    def test_archive_mode_requires_all_and_serial_execution(self):
        for arguments in [['--archive-graphs'], ['--all', '--archive-graphs', '--jobs', '2']]:
            with self.subTest(arguments=arguments), patch.object(sys, 'argv', ['runner', *arguments]):
                with self.assertRaises(SystemExit) as error:
                    storage.main()
                self.assertEqual(error.exception.code, 2)
        with self.assertRaisesRegex(ValueError, 'full --all target set'):
            storage.archived_replay(self.root, [self.recipe], [], [self.target], False)
        with self.assertRaisesRegex(ValueError, 'full --all target set'):
            storage.archived_replay(self.root, [self.recipe], [], [self.target], True)

    def test_bounded_replay_records_failure_and_unattempted_targets(self):
        other = 'tests/lean/Other.lean'
        self.write(other, '#lw_dependencies Other.solution to "work/other-graph.json"\n')
        other_recipe = {**self.recipe, 'id': 'other', 'lean_file': other,
                        'root': 'Other.solution', 'graph': 'work/other-graph.json'}
        with patch.object(storage, 'build_target_plan', return_value={
                'target': self.target, 'dependency_build_exit_code': 0, 'lean_exit_code': None}), \
             patch.object(storage, 'record_target', return_value=(1, None)) as run:
            code = storage.archived_replay(self.root, [self.recipe, other_recipe],
                                           [self.target, other], [self.target, other], True)
        self.assertEqual(code, 1)
        run.assert_called_once()
        selection = json.loads((self.root / 'reports/method-target-selection.json').read_text())
        self.assertEqual(selection['unattempted_targets'], [other])
        self.assertEqual(selection['attempted_target_count'], 1)

    def test_bounded_replay_success_uses_archives_instead_of_final_raw_check(self):
        self.generated()
        # The invocation must begin without its newly generated outputs.
        contents = {p: (self.root / p).read_bytes() for p in self.exports}
        for p in self.exports:
            (self.root / p).unlink()
        def run(root, target):
            for p, content in contents.items():
                self.write(p, content)
            self.record()
            return 0, self.run_path
        with patch.object(storage, 'build_target_plan', return_value={
                'target': self.target, 'dependency_build_exit_code': 0, 'lean_exit_code': None}), \
             patch.object(storage, 'record_target', side_effect=run):
            code = storage.archived_replay(self.root, [self.recipe], [self.target], [self.target], True)
        self.assertEqual(code, 0)
        results = json.loads((self.root / 'reports/method-targets.json').read_text())
        self.assertEqual(results[0]['missing_graphs'], [])
        self.assertEqual(results[0]['graph_storage']['export_count'], 2)
        self.assertTrue(storage.evidence_is_current(self.root, self.recipe))

    def test_record_target_rejects_reused_success_record(self):
        self.generated()
        result = SimpleNamespace(returncode=0, stdout=json.dumps({'run': self.run_path, 'exit_code': 0}), stderr='')
        with patch.object(storage.subprocess, 'run', return_value=result):
            with self.assertRaisesRegex(ValueError, 'new successful run'):
                storage.record_target(self.root, self.target)


if __name__ == '__main__':
    unittest.main()
