#!/usr/bin/env python3
"""Replay the complete fixed-environment audit pipeline without promoting ledger states.

Run under `python3 scripts/run.py --timeout 1800 -- python3 scripts/replay.py`
on a fresh runner after installing the pinned dependencies. All subprocesses
must succeed; incomplete Phase 1 acceptance is reported separately.
"""
import argparse
import json
from pathlib import Path
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]
COMMANDS = [
    ['python3', 'scripts/check_pins.py'],
    ['lake', 'build'],
    ['python3', 'scripts/run_targets.py'],
    ['python3', 'scripts/run_locations.py'],
    ['python3', 'scripts/check_locations.py'],
    ['lake', 'build', 'LemmaWeave.Audit.Fixtures.Shared', 'LemmaWeave.Audit.Fixtures.Exported'],
    ['lake', 'env', 'lean', 'tests/lean/Smoke.lean'],
    ['lake', 'env', 'lean', 'tests/lean/DependencyFixtures.lean'],
    ['python3', 'scripts/check_extractor.py'],
    ['lake', 'build', 'LemmaWeave.Lemmas.QuadraticMethods'],
    ['lake', 'build', 'LemmaWeave.Lemmas.ArithmeticMethods', 'LemmaWeave.Problems.GSM8K.Goals'],
    ['lake', 'build', 'LemmaWeave.Problems.Probability.Model'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.NextModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0907Models', 'LemmaWeave.Lemmas.FiniteExpectation'],
    ['python3', 'scripts/run_method_targets.py'],
    ['python3', 'scripts/check_method_recipes.py', '--render'],
    ['python3', '-m', 'unittest', 'discover', '-s', 'tests', '-v'],
    ['python3', 'scripts/lw.py', 'validate'],
    ['python3', 'scripts/inventory.py', '--write'],
    ['python3', 'scripts/analyze_corpus.py'],
    ['python3', 'scripts/acceptance_report.py'],
    ['python3', 'scripts/lw.py', 'report'],
]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--show-commands', action='store_true')
    args = parser.parse_args()
    if args.show_commands:
        print(json.dumps(COMMANDS, indent=2))
        return 0
    for argv in COMMANDS:
        result = subprocess.run([sys.executable, 'scripts/run.py', '--timeout', '900', '--'] + argv,
                                cwd=ROOT, check=False)
        if result.returncode:
            return result.returncode
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
