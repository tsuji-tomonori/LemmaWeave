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
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0912EModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0913AModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0913BModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0913CModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0914AModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0914BModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0914CModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0914DModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0914EModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0915AModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0915BModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0915CModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0915DModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0915EModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0917AModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0917BModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0917CModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0917DModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0917EModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0918AModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0918BModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Daily0918CModels'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A01Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A02Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A03Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A04Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A05Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A06Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A07Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A08Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A09Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A10Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A11Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A12Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A13Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A14Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A15Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A16Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A17Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A18Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A19Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A20Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A21Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A22Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A23Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A24Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A25Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A26Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A27Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A28Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A29Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A30Models'],
    ['lake', 'build', 'LemmaWeave.Problems.GSM8K.Sprint0919A31Models'],
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
