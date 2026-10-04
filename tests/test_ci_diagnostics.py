import json
import sys
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))

import collect_ci_diagnostics


class CompactDiagnostics(unittest.TestCase):
    def test_load_json_recovers_legacy_literal_newline(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            report = root / 'report.json'
            report.write_text(json.dumps({'ok': True}) + '\\n')
            with patch.object(collect_ci_diagnostics, 'ROOT', root):
                self.assertEqual(
                    collect_ci_diagnostics.load_json('report.json'),
                    {'ok': True})

    def test_load_json_preserves_bounded_corruption_evidence(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            report = root / 'report.json'
            report.write_text('{"ok": true} trailing')
            with patch.object(collect_ci_diagnostics, 'ROOT', root):
                result = collect_ci_diagnostics.load_json('report.json')
            self.assertEqual(result['diagnostic_status'], 'invalid_json')
            self.assertEqual(result['path'], 'report.json')
            self.assertIn('Extra data', result['error'])
            self.assertIn('trailing', result['text_tail'])


if __name__ == '__main__':
    unittest.main()
