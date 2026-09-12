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
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0907BModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0907CModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0907DModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0907EModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0908AModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0908BModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0908CModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0908DModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0908EModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0908FModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0909AModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0909BModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0909CModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0909DModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0909EModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0910AModels'],
    # Register every daily model explicitly so a missing build target cannot pass unnoticed.
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0910BModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0910CModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0910DModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0910EModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0911AModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0911BModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0911CModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0911DModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0911EModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0912AModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0912BModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0912CModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0912DModels'],
    ['python3', 'scripts/run_method_targets.py'],
    ['python3', 'scripts/check_method_recipes.py', '--render'],
    ['python3', '-m', 'unittest', 'discover', '-s', 'tests', '-v'],
    ['python3', 'scripts/lw.py', 'validate'],
    ['python3', 'scripts/inventory.py', '--write'],
    ['python3', 'scripts/analyze_corpus.py'],
    ['python3', 'scripts/acceptance_report.py'],
    ['python3', 'scripts/lw.py', 'report'],
]

# The method-target sweep grows with the number of registered individual
# solutions.  Keep its timeout below the outer 1800-second replay bound while
# allowing the complete sweep to finish as the corpus grows.
METHOD_TARGET_TIMEOUT = 1500
DEFAULT_COMMAND_TIMEOUT = 900


def command_timeout(argv):
    if argv == ['python3', 'scripts/run_method_targets.py']:
        return METHOD_TARGET_TIMEOUT
    return DEFAULT_COMMAND_TIMEOUT


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--show-commands', action='store_true')
    args = parser.parse_args()
    if args.show_commands:
        print(json.dumps(COMMANDS, indent=2))
        return 0
    for argv in COMMANDS:
        result = subprocess.run([sys.executable, 'scripts/run.py', '--timeout', str(command_timeout(argv)), '--'] + argv,
                                cwd=ROOT, check=False)
        if result.returncode:
            return result.returncode
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
