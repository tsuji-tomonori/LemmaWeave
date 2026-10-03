import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest


SCRIPT = Path(__file__).resolve().parents[1] / 'scripts/check_changed_models.py'
PREFIX = 'LemmaWeave/Problems/GSM8K/'
GOOD = 'structure FixtureModel where\n  first : Nat\n  hFirst : first = 2\n'
GROUPED = 'structure FixtureModel where\n  first second : Nat\n  hFirst : first = 2\n'


class ChangedModelsCLI(unittest.TestCase):
    def setUp(self):
        self.directory = tempfile.TemporaryDirectory()
        self.addCleanup(self.directory.cleanup)
        self.root = Path(self.directory.name) / 'checkout'
        self.root.mkdir()
        self.git('init', '-q')
        self.git('config', 'user.name', 'Preflight tests')
        self.git('config', 'user.email', 'preflight@example.invalid')
        self.git('config', 'core.autocrlf', 'false')
        self.write('.gitignore', '.lake/\n')
        self.write('lakefile.toml', 'name = "fixture"\n\n[[lean_lib]]\nname = "LemmaWeave"\n')
        # CI installs elan without a global default. The temporary checkout
        # must select the same pinned toolchain as the real repository.
        self.write('lean-toolchain', (SCRIPT.parent.parent / 'lean-toolchain').read_text())
        # A default whole-library build must never be substituted for the
        # explicit model list, even when that list is empty.
        self.write('LemmaWeave.lean', 'this aggregate deliberately does not compile\n')
        self.base = self.commit()
        self.bin = Path(self.directory.name) / 'bin'
        self.bin.mkdir()
        self.log = Path(self.directory.name) / 'lake-argv.json'
        self.history = Path(self.directory.name) / 'lake-history.jsonl'
        fake_lake = self.bin / 'lake'
        fake_lake.write_text(
            '#!' + sys.executable + '\n'
            'import json, os, pathlib, sys, time\n'
            'pathlib.Path(os.environ["LAKE_TEST_LOG"]).write_text(json.dumps(sys.argv[1:]))\n'
            'with open(os.environ["LAKE_TEST_HISTORY"], "a") as history:\n'
            '    history.write(json.dumps(sys.argv[1:]) + "\\n")\n'
            'if os.environ.get("LAKE_TEST_MUTATE"):\n'
            '    pathlib.Path(os.environ["LAKE_TEST_MUTATE"]).write_text("changed during build")\n'
            'time.sleep(float(os.environ.get("LAKE_TEST_SLEEP", "0")))\n'
            'for module in sys.argv[2:]:\n'
            '    source = pathlib.Path(module.replace(".", "/") + ".lean").read_text()\n'
            '    if "first second : Nat" in source:\n'
            '        print("simulated compiler rejection of grouped Nat model", file=sys.stderr)\n'
            '        sys.exit(19)\n'
            'sys.exit(int(os.environ.get("LAKE_TEST_EXIT", "0")))\n')
        fake_lake.chmod(0o755)
        self.env = {**os.environ, 'PATH': str(self.bin) + os.pathsep + os.environ['PATH'],
                    'LAKE_TEST_LOG': str(self.log), 'LAKE_TEST_HISTORY': str(self.history)}

    def git(self, *args):
        return subprocess.run(['git', '-C', str(self.root), *args],
                              capture_output=True, text=True, check=True).stdout.strip()

    def write(self, name, contents=GOOD):
        path = self.root / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(contents)
        return path

    def commit(self):
        self.git('add', '--all')
        self.git('-c', 'commit.gpgsign=false', 'commit', '-qm', 'fixture')
        return self.git('rev-parse', 'HEAD')

    def check(self, *extra, base=None, head='HEAD', env=None):
        result = subprocess.run(
            [sys.executable, str(SCRIPT), '--base=' + (base or self.base),
             '--head=' + head, *extra], cwd=self.root,
            env=env or self.env, capture_output=True, text=True, timeout=60)
        return result, json.loads(result.stdout)

    def test_builds_added_modified_and_renamed_models_once(self):
        self.write(PREFIX + 'ModifiedModels.lean')
        self.write(PREFIX + 'OldModels.lean', '-- old\n' + GOOD)
        self.write(PREFIX + 'UnchangedModels.lean', '-- unchanged\n' + GOOD)
        self.base = self.commit()
        self.write(PREFIX + 'ModifiedModels.lean', GOOD + '-- modified\n')
        self.write(PREFIX + 'AddedModels.lean', GOOD + '-- added\n')
        self.git('mv', PREFIX + 'OldModels.lean', PREFIX + 'RenamedModels.lean')
        self.write(PREFIX + 'Solution.lean', 'malformed non-model\n')
        self.write('Elsewhere/IgnoredModels.lean', 'malformed outside scope\n')
        head = self.commit()
        result, report = self.check('--combined')
        paths = [PREFIX + name + 'Models.lean' for name in ('Added', 'Modified', 'Renamed')]
        modules = [path[:-5].replace('/', '.') for path in paths]
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(report['status'], 'build_passed')
        self.assertEqual(report['head'], head)
        self.assertEqual(report['selected_models'], paths)
        self.assertEqual(json.loads(self.log.read_text()), ['build', *modules])
        self.assertEqual(report['renamed_models'], [
            {'from': PREFIX + 'OldModels.lean', 'to': PREFIX + 'RenamedModels.lean'}])

    def test_empty_set_never_builds_default_targets(self):
        result, report = self.check()
        self.assertEqual(result.returncode, 2)
        self.assertEqual(report['status'], 'no_changed_models')
        self.assertIsNone(report['command'])
        self.assertFalse(self.log.exists())
        result, report = self.check('--serial')
        self.assertEqual(result.returncode, 2)
        self.assertEqual(report['commands'], [])
        self.assertFalse(self.log.exists())
        result, report = self.check('--dry-run')
        self.assertEqual(result.returncode, 0)
        self.assertEqual(report['status'], 'dry_run')
        self.assertNotIn('build_exit_code', report)
        self.assertFalse(self.log.exists())

    def test_dry_run_validates_but_does_not_claim_build(self):
        self.write(PREFIX + 'NewModels.lean')
        self.commit()
        result, report = self.check('--dry-run')
        self.assertEqual(result.returncode, 0)
        self.assertEqual(report['status'], 'dry_run')
        self.assertFalse(self.log.exists())
        self.assertNotIn('build_exit_code', report)

    def test_missing_invalid_and_option_like_refs_fail_before_build(self):
        for kwargs in ({'base': 'missing'}, {'head': 'missing'},
                       {'base': '--all'}, {'base': 'HEAD:file'}, {'base': 'HEAD..HEAD'}):
            with self.subTest(kwargs=kwargs):
                result, report = self.check(**kwargs)
                self.assertEqual(result.returncode, 2)
                self.assertEqual(report['status'], 'preflight_failed')
                self.assertFalse(self.log.exists())

    def test_both_revision_arguments_are_required(self):
        for args in ([], ['--base', 'HEAD'], ['--head', 'HEAD']):
            result = subprocess.run([sys.executable, str(SCRIPT), *args],
                                    cwd=self.root, capture_output=True, text=True)
            self.assertEqual(result.returncode, 2)
            self.assertFalse(self.log.exists())

    def test_head_must_be_checkout_even_for_dry_run(self):
        self.write(PREFIX + 'NewModels.lean')
        self.commit()
        result, report = self.check('--dry-run', head=self.base)
        self.assertEqual(result.returncode, 2)
        self.assertIn('checked-out HEAD', report['error'])
        self.assertFalse(self.log.exists())

    def test_unstaged_and_hidden_dirty_selected_inputs_fail(self):
        path = PREFIX + 'DirtyModels.lean'
        self.write(path)
        self.commit()
        self.git('update-index', '--assume-unchanged', path)
        self.write(path, GOOD + '-- changed after commit\n')
        result, report = self.check()
        self.assertEqual(result.returncode, 2)
        self.assertIn('unstaged changes', report['error'])
        self.assertFalse(self.log.exists())

    def test_staged_changes_fail_even_if_worktree_bytes_match_head(self):
        path = PREFIX + 'DirtyModels.lean'
        self.write(path)
        self.commit()
        self.write(path, GOOD + '-- staged change\n')
        self.git('add', path)
        self.write(path, GOOD)
        result, report = self.check()
        self.assertEqual(result.returncode, 2)
        self.assertIn('staged changes', report['error'])
        self.assertFalse(self.log.exists())

    def test_selected_input_changed_during_build_cannot_pass(self):
        path = PREFIX + 'DirtyModels.lean'
        self.write(path)
        self.commit()
        self.env['LAKE_TEST_MUTATE'] = path
        result, report = self.check()
        self.assertEqual(report['build_exit_code'], 0)
        self.assertEqual(result.returncode, 2)
        self.assertEqual(report['status'], 'preflight_failed')

    def test_deleted_models_fail_with_explicit_list(self):
        path = PREFIX + 'DeletedModels.lean'
        self.write(path)
        self.base = self.commit()
        self.git('rm', path)
        self.commit()
        result, report = self.check()
        self.assertEqual(result.returncode, 2)
        self.assertEqual(report['deleted_models'], [path])
        self.assertIn('review removals separately', report['error'])
        self.assertFalse(self.log.exists())

    def test_rename_away_from_model_scope_fails(self):
        path = PREFIX + 'MovedModels.lean'
        self.write(path)
        self.base = self.commit()
        destination = self.root / 'Elsewhere/MovedModels.lean'
        destination.parent.mkdir()
        self.git('mv', path, str(destination))
        self.commit()
        result, report = self.check()
        self.assertEqual(result.returncode, 2)
        self.assertEqual(report['deleted_models'], [path])
        self.assertFalse(self.log.exists())

    def test_symlink_model_is_rejected(self):
        self.write('Shared.lean')
        path = self.root / (PREFIX + 'LinkedModels.lean')
        path.parent.mkdir(parents=True)
        path.symlink_to('../../../Shared.lean')
        self.commit()
        result, report = self.check()
        self.assertEqual(result.returncode, 2)
        self.assertIn('regular tracked file', report['error'])
        self.assertFalse(self.log.exists())

    def test_unsupported_module_filename_is_rejected(self):
        self.write(PREFIX + 'Bad.NameModels.lean')
        self.commit()
        result, report = self.check()
        self.assertEqual(result.returncode, 2)
        self.assertIn('unsupported Lean module path', report['error'])
        self.assertFalse(self.log.exists())

    def test_compiler_failure_is_propagated_for_grouped_nat_model(self):
        self.write(PREFIX + 'BrokenModels.lean', GROUPED)
        self.commit()
        result, report = self.check()
        self.assertEqual(result.returncode, 19)
        self.assertEqual(report['status'], 'build_failed')
        self.assertEqual(report['build_exit_code'], 19)
        self.assertEqual(json.loads(self.log.read_text()),
                         ['build', 'LemmaWeave.Problems.GSM8K.BrokenModels'])

    def test_build_timeout_is_failure(self):
        self.write(PREFIX + 'NewModels.lean')
        self.commit()
        self.env['LAKE_TEST_SLEEP'] = '30'
        result, report = self.check('--timeout', '1')
        self.assertEqual(result.returncode, 124)
        self.assertEqual(report['status'], 'timed_out')

    def test_default_serial_build_order_and_failure_stop(self):
        for name, source in (('Zulu', GOOD), ('Alpha', GOOD), ('Middle', GROUPED)):
            self.write(PREFIX + name + 'Models.lean', source)
        self.commit()
        result, report = self.check()
        commands = [['lake', 'build', 'LemmaWeave.Problems.GSM8K.' + name + 'Models']
                    for name in ('Alpha', 'Middle', 'Zulu')]
        self.assertEqual(report['commands'], commands)
        self.assertIsNone(report['command'])
        self.assertEqual(result.returncode, 19)
        self.assertEqual(report['status'], 'build_failed')
        self.assertEqual([json.loads(line) for line in self.history.read_text().splitlines()],
                         [command[1:] for command in commands[:2]])
        self.assertEqual(report['build_results'], [
            {'command': commands[0], 'exit_code': 0, 'status': 'passed'},
            {'command': commands[1], 'exit_code': 19, 'status': 'failed'},
        ])
        self.write(PREFIX + 'MiddleModels.lean', GOOD)
        self.commit()
        self.history.unlink()
        result, report = self.check('--serial')
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(report['status'], 'build_passed')
        self.assertEqual([json.loads(line) for line in self.history.read_text().splitlines()],
                         [command[1:] for command in commands])
        self.assertEqual([entry['exit_code'] for entry in report['build_results']], [0, 0, 0])

    def test_serial_timeout_budget_is_shared(self):
        for name in ('Alpha', 'Beta', 'Gamma'):
            self.write(PREFIX + name + 'Models.lean')
        self.commit()
        self.env['LAKE_TEST_SLEEP'] = '0.7'
        result, report = self.check('--serial', '--timeout', '1')
        self.assertEqual(result.returncode, 124)
        self.assertEqual(report['status'], 'timed_out')
        self.assertIsNone(report['build_exit_code'])
        self.assertEqual([entry['status'] for entry in report['build_results']],
                         ['passed', 'timed_out'])
        self.assertEqual(len(self.history.read_text().splitlines()), 2)

    def test_real_lean_rejects_broken_models_and_accepts_corrected_model(self):
        lake = os.environ.get('LW_TEST_LAKE') or shutil.which('lake')
        if not lake:
            self.skipTest('lake unavailable; set LW_TEST_LAKE to a local Lake executable')
        real_env = {**os.environ,
                    'PATH': str(Path(lake).resolve().parent) + os.pathsep + os.environ['PATH']}
        path = PREFIX + 'FixtureModels.lean'
        for source in (GROUPED, 'def broken : Nat := )\n'):
            with self.subTest(source=source):
                self.write(path, source)
                self.commit()
                result, report = self.check(env=real_env)
                self.assertNotEqual(result.returncode, 0, result.stderr)
                self.assertEqual(report['status'], 'build_failed')
                self.assertIn('error', result.stderr)
                self.assertEqual(report['commands'],
                                 [['lake', 'build', 'LemmaWeave.Problems.GSM8K.FixtureModels']])
        self.write(path, GOOD)
        self.commit()
        result, report = self.check(env=real_env)
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(report['status'], 'build_passed')


if __name__ == '__main__':
    unittest.main()
