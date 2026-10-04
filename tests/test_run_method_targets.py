import json
import sys
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))

from run_method_targets import (build_target_plan, build_target_plans,
                                run_lean_target, write_json)


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
        self.assertEqual(run.call_args.args[0][:7], [
            sys.executable, 'scripts/run.py', '--timeout', '900', '--',
            'lake', 'build'])

    @patch('run_method_targets.subprocess.run')
    def test_successful_batch_build_runs_once_for_all_imports(self, run):
        run.return_value.returncode = 0
        plans = [
            {'target': 'tests/lean/A.lean', 'project_imports': ['LemmaWeave.A', 'LemmaWeave.Shared']},
            {'target': 'tests/lean/B.lean', 'project_imports': ['LemmaWeave.B', 'LemmaWeave.Shared']},
        ]
        outcomes = build_target_plans(plans)
        self.assertEqual(set(outcomes), {'tests/lean/A.lean', 'tests/lean/B.lean'})
        self.assertTrue(all(o['dependency_build_exit_code'] == 0 for o in outcomes.values()))
        run.assert_called_once_with(
            [sys.executable, 'scripts/run.py', '--timeout', '900', '--',
             'lake', 'build', 'LemmaWeave.A', 'LemmaWeave.B', 'LemmaWeave.Shared'],
            cwd=Path(__file__).resolve().parents[1], check=False)

    def test_json_writer_uses_a_real_trailing_newline(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / 'checkpoint.json'
            write_json(path, {'ok': True})
            self.assertTrue(path.read_text().endswith('\n'))
            self.assertEqual(json.loads(path.read_text()), {'ok': True})

    @patch('run_method_targets.subprocess.run')
    def test_lean_check_uses_evidence_wrapper(self, run):
        run.return_value.returncode = 0
        self.assertEqual(run_lean_target('tests/lean/Healthy.lean'), 0)
        argv = run.call_args.args[0]
        self.assertEqual(argv[:4], [
            sys.executable, 'scripts/run.py', '--timeout', '900'])
        self.assertEqual(argv[-3:], [
            'lake', 'env', 'lean', 'tests/lean/Healthy.lean'][-3:])


if __name__ == '__main__':
    unittest.main()
