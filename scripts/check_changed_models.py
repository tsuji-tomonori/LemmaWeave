#!/usr/bin/env python3
"""Compile the finite changed-model set between two explicit Git commits.

Run from the intended checkout, for example:
  python3 scripts/check_changed_models.py --base <base-sha> --head HEAD

Only added, modified, or renamed *Models.lean below LemmaWeave/Problems are
built. Deletions (including renames away from that scope) fail closed; review
them separately. A model-to-model rename builds its new module. An empty set
exits 2 without verification (except --dry-run) and never invokes a bare
`lake build`. JSON goes to stdout and build logs to stderr.
Builds are serial by default: one selected module at a time within one total
timeout budget, stopping on the first failure. --combined explicitly opts into
one Lake command, which may compile models concurrently and use more memory.
JSON commands lists the actual plan; command is null in serial mode and
build_results records attempted commands.

This is a compilation preflight, not source-meaning review, an axiom/dependency
audit, registration-completeness check, proof evidence, or a replacement for
the existing full quality gates.
Only selected model inputs are checked for dirtiness; other dependencies and
the installed toolchain remain the caller's responsibility.
"""

import argparse
import json
import os
from pathlib import Path, PurePosixPath
import re
import signal
import subprocess
import sys
import time


class PreflightError(ValueError):
    """The requested comparison cannot safely be compiled."""


def git(root, *args):
    result = subprocess.run(
        ['git', '-C', str(root), *args], capture_output=True, timeout=30,
        env={**os.environ, 'GIT_OPTIONAL_LOCKS': '0'}, check=False)
    if result.returncode:
        detail = result.stderr.decode(errors='replace').strip()
        raise PreflightError(f'git {args[0]} failed: {detail}')
    return result.stdout


def resolve_commit(root, revision):
    return git(root, 'rev-parse', '--verify', '--end-of-options',
               revision + '^{commit}').decode().strip()


def is_model(path):
    return path.startswith('LemmaWeave/Problems/') and path.endswith('Models.lean')


def module_name(path):
    parts = PurePosixPath(path).with_suffix('').parts
    if not all(re.fullmatch(r'[A-Za-z_][A-Za-z0-9_]*', part) for part in parts):
        raise PreflightError(f'unsupported Lean module path: {path!r}')
    return '.'.join(parts)


def make_plan(root, base, head):
    base_sha = resolve_commit(root, base)
    head_sha = resolve_commit(root, head)
    if resolve_commit(root, 'HEAD') != head_sha:
        raise PreflightError('--head must resolve to the checked-out HEAD')
    # Do not path-filter the Git comparison: cross-directory renames must retain
    # their old and new paths, including a model moved outside Problems.
    fields = git(root, 'diff', '--no-ext-diff', '--name-status', '-z',
                 '--find-renames', base_sha, head_sha, '--').split(b'\0')
    selected, deleted, renamed = set(), set(), []
    cursor = 0
    while cursor < len(fields) - 1:
        status = fields[cursor].decode('ascii')
        path = os.fsdecode(fields[cursor + 1])
        cursor += 2
        if status.startswith(('R', 'C')):
            destination = os.fsdecode(fields[cursor])
            cursor += 1
            if is_model(destination):
                selected.add(destination)
            if status.startswith('R') and is_model(path):
                if is_model(destination):
                    renamed.append({'from': path, 'to': destination})
                else:
                    deleted.add(path)
        elif status == 'D':
            if is_model(path):
                deleted.add(path)
        elif status in ('A', 'M', 'T'):
            if is_model(path):
                selected.add(path)
        else:
            raise PreflightError(f'unsupported Git change status: {status!r}')
    paths = sorted(selected)
    modules = [module_name(path) for path in paths]
    return {
        'base': base_sha,
        'head': head_sha,
        'selected_models': paths,
        'modules': modules,
        'renamed_models': sorted(renamed, key=lambda item: item['to']),
        'deleted_models': sorted(deleted),
        'command': ['lake', 'build', *modules] if modules else [],
        'scope': 'changed_model_compilation_only',
    }


def validate_checkout(root, plan):
    if resolve_commit(root, 'HEAD') != plan['head']:
        raise PreflightError('checkout HEAD changed during preflight')
    paths = plan['selected_models']
    if not paths:
        return
    staged = git(root, 'diff', '--cached', '--name-only', '-z',
                 plan['head'], '--', *paths)
    if staged:
        raise PreflightError('selected model has staged changes: ' +
                             ', '.join(os.fsdecode(p) for p in staged.split(b'\0') if p))
    for path in paths:
        entry = git(root, 'ls-tree', '-z', plan['head'], '--', path)
        if not entry.startswith((b'100644 blob ', b'100755 blob ')):
            raise PreflightError(f'selected model is not a regular tracked file: {path}')
        target = root / path
        if target.is_symlink() or target.resolve() != target or not target.is_file():
            raise PreflightError(f'selected model is missing or traverses a symlink: {path}')
        # Compare actual bytes, even if assume-unchanged or skip-worktree hides
        # a local edit from ordinary git status/diff checks.
        expected = git(root, 'cat-file', 'blob', f"{plan['head']}:{path}")
        if target.read_bytes() != expected:
            raise PreflightError(f'selected model has unstaged changes: {path}')


def build(root, command, timeout):
    process = subprocess.Popen(
        command, cwd=root, stdout=sys.stderr, stderr=sys.stderr,
        start_new_session=(os.name == 'posix'))
    try:
        return process.wait(timeout=timeout)
    except (subprocess.TimeoutExpired, KeyboardInterrupt):
        # Stop Lean children too; they must not keep writing outputs after a
        # timed-out preflight has returned.
        if os.name == 'posix':
            try:
                os.killpg(process.pid, signal.SIGKILL)
            except ProcessLookupError:
                pass
        else:
            process.kill()
        process.wait()
        raise


def main():
    parser = argparse.ArgumentParser(description=__doc__,
                                     formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('--base', required=True, help='explicit base Git commit or ref')
    parser.add_argument('--head', required=True, help='Git commit or ref matching checkout HEAD')
    parser.add_argument('--dry-run', action='store_true', help='validate and print plan without building')
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument('--serial', dest='serial', action='store_true', default=True,
                      help='build selected modules one at a time (default)')
    mode.add_argument('--combined', dest='serial', action='store_false',
                      help='opt into one Lake command, which may build modules concurrently')
    parser.add_argument('--timeout', type=int, default=900,
                        help='total build budget in seconds (default: 900)')
    args = parser.parse_args()
    if args.timeout <= 0:
        parser.error('--timeout must be positive')
    report = {'status': 'preflight_failed', 'exit_code': 2}
    try:
        root = Path(os.fsdecode(git(Path.cwd(), 'rev-parse', '--show-toplevel')).strip()).resolve()
        report.update(make_plan(root, args.base, args.head))
        report['commands'] = ([['lake', 'build', module] for module in report['modules']]
                              if args.serial else
                              [report['command']] if report['modules'] else [])
        if args.serial:
            report['command'] = None
        if report['deleted_models']:
            raise PreflightError('deleted or renamed-away models cannot be compiled; '
                                 'review removals separately')
        validate_checkout(root, report)
        if args.dry_run:
            report.update(status='dry_run', exit_code=0)
        elif not report['modules']:
            report.update(status='no_changed_models', exit_code=2,
                          error='empty changed-model scope; no compilation was verified')
        else:
            report['build_results'] = []
            deadline = time.monotonic() + args.timeout
            for command in report['commands']:
                report['build_exit_code'] = None
                remaining = deadline - time.monotonic()
                if remaining <= 0:
                    raise subprocess.TimeoutExpired(command, args.timeout)
                outcome = {'command': command, 'exit_code': None, 'status': 'running'}
                report['build_results'].append(outcome)
                try:
                    code = build(root, command, remaining)
                except subprocess.TimeoutExpired:
                    outcome['status'] = 'timed_out'
                    raise
                except OSError:
                    outcome['status'] = 'start_failed'
                    raise
                except KeyboardInterrupt:
                    outcome['status'] = 'interrupted'
                    raise
                outcome.update(exit_code=code, status='passed' if code == 0 else 'failed')
                report['build_exit_code'] = code
                validate_checkout(root, report)
                if code:
                    break
            report.update(status='build_passed' if code == 0 else 'build_failed',
                          exit_code=code if code >= 0 else 128 - code)
    except subprocess.TimeoutExpired as exc:
        report.update(status='timed_out', exit_code=124, error=f'command timed out: {exc.cmd}')
    except (PreflightError, OSError) as exc:
        report.update(status='preflight_failed', exit_code=2, error=str(exc))
    except KeyboardInterrupt:
        report.update(status='interrupted', exit_code=130)
    print(json.dumps(report, indent=2))
    return report['exit_code']


if __name__ == '__main__':
    raise SystemExit(main())
