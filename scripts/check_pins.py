#!/usr/bin/env python3
"""Reject dependency revision drift after Lake resolves the pinned project."""
import json
import pathlib
import subprocess

root = pathlib.Path(__file__).resolve().parents[1]
pins = json.loads((root / 'environment/pins.json').read_text())
manifest = json.loads((root / 'lake-manifest.json').read_text())
actual = {p['name']: p['rev'] for p in manifest['packages']}
if actual != pins['dependency_commits']:
    raise SystemExit('Lake dependency lock differs from pinned commits: ' + repr(actual))
for name, commit in actual.items():
    observed = subprocess.check_output(['git', 'rev-parse', 'HEAD'],
        cwd=root / '.lake/packages' / name, text=True).strip()
    if observed != commit:
        raise SystemExit('Installed dependency differs: ' + name)
if (root / 'lean-toolchain').read_text().strip() != pins['lean_toolchain']:
    raise SystemExit('Lean toolchain drift')
print('All nine dependency commits and toolchain file match their pins.')
