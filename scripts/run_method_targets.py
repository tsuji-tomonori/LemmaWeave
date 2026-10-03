#!/usr/bin/env python3
"""現在証拠がないレシピを含むLean対象だけを安全に再実行する。"""
import argparse
from concurrent.futures import ThreadPoolExecutor
import gzip
import hashlib
import json
import os
import re
import shutil
import tempfile
from pathlib import Path
import subprocess
import sys
from lw import confined, graph_audit, local_import_closure, read, verify_run
from check_method_recipes import proof_evidence, validate_recipe

ROOT = Path(__file__).resolve().parents[1]


def evidence_is_current(root, recipe):
    """Use the same freshness gate that later promotes a recipe."""
    graph = root / recipe['graph']
    archived = root / 'reports/dependencies/methods' / (recipe['id'] + '.json.gz')
    try:
        raw = graph.read_bytes() if graph.exists() else gzip.decompress(archived.read_bytes())
        proof_evidence(root, recipe, raw)
        return True
    except (OSError, KeyError, ValueError):
        return False


def select_targets(recipes, is_current):
    """Select a whole Lean target when any recipe in that target is stale."""
    grouped = {}
    for recipe in recipes:
        grouped.setdefault(recipe['lean_file'], []).append(recipe)
    return sorted(target for target, members in grouped.items()
                  if any(not is_current(recipe) for recipe in members))


def dependency_directive_present(source, root, graph):
    """Accept a qualified root or a short root opened by its exact namespace."""
    names = [root]
    if '.' in root:
        namespace, short_root = root.rsplit('.', 1)
        open_directive = r'^\s*open\s+' + re.escape(namespace) + r'\s*$'
        if re.search(open_directive, source, re.MULTILINE):
            names.append(short_root)
    for name in names:
        directive = (r'#lw_dependencies\s+' + re.escape(name) +
                     r'\s+to\s+"' + re.escape(graph) + r'"')
        if re.search(directive, source, re.MULTILINE):
            return True
    return False


def missing_graph_directives(root, recipes):
    """Return malformed recipes and sources missing the required graph directive."""
    sources = {}
    missing = []
    required = ('id', 'lean_file', 'root', 'graph')
    for recipe in recipes:
        missing_fields = [field for field in required if not recipe.get(field)]
        if missing_fields:
            missing.append({
                'id': recipe.get('id'),
                'lean_file': recipe.get('lean_file'),
                'root': recipe.get('root'),
                'graph': recipe.get('graph'),
                'missing_fields': missing_fields,
            })
            continue
        target = recipe['lean_file']
        if target not in sources:
            sources[target] = (root / target).read_text()
        if not dependency_directive_present(
                sources[target], recipe['root'], recipe['graph']):
            missing.append({'id': recipe['id'], 'lean_file': target,
                            'root': recipe['root'], 'graph': recipe['graph']})
    return missing


def target_plan(root, target):
    confined(root, target)
    source = (root / target).read_text()
    project_imports = sorted(set(re.findall(
        r'^\s*import\s+(LemmaWeave(?:\.[A-Za-z0-9_]+)+)\s*$',
        source, re.MULTILINE)))
    return {'target': target, 'project_imports': project_imports}


def build_target_plan(plan):
    """Build one target's imports and return its isolated outcome.

    A failed imported model is isolated to the targets that actually import it.
    Builds stay serial because different targets may share imported modules and
    therefore write the same Lake outputs.
    """
    imports = plan['project_imports']
    dependency = subprocess.run(['lake', 'build', *imports], cwd=ROOT, check=False) \
        if imports else None
    dependency_exit = dependency.returncode if dependency is not None else 0
    return {
        'target': plan['target'],
        'dependency_build_exit_code': dependency_exit,
        'lean_exit_code': None,
    }


def run_lean_target(target):
    """Produce evidence for one target after its dependencies have built."""
    return subprocess.run(
        [sys.executable, 'scripts/run.py', '--timeout', '900', '--',
         'lake', 'env', 'lean', target],
        cwd=ROOT, check=False).returncode



def lean_tokens(source):
    """Mask comments and strings, retaining string spans for literal exports."""
    masked, strings = list(source), {}
    i = 0
    while i < len(source):
        start = i
        if source.startswith('--', i):
            end = source.find('\n', i)
            i = len(source) if end < 0 else end
        elif source.startswith('/-', i):
            i += 2
            depth = 1
            while i < len(source) and depth:
                if source.startswith('/-', i):
                    depth += 1
                    i += 2
                elif source.startswith('-/', i):
                    depth -= 1
                    i += 2
                else:
                    i += 1
            if depth:
                raise ValueError('unclosed Lean comment')
        elif source[i] == '"':
            i += 1
            while i < len(source):
                if source[i] == '\\':
                    i += 2
                elif source[i] == '"':
                    i += 1
                    break
                else:
                    i += 1
            else:
                raise ValueError('unclosed Lean string')
            strings[start] = i
        else:
            i += 1
            continue
        for j in range(start, i):
            if masked[j] not in '\r\n':
                masked[j] = ' '
    return ''.join(masked), strings


def graph_exports(root, target):
    """Inventory every explicit export, including non-recipe/individual roots.

    This opt-in path fails closed on unsupported syntax or ambiguous short
    names. It does not infer an omitted audit target from a successful #check.
    """
    source = safe_path(root, target).read_text()
    masked, strings = lean_tokens(source)
    opened = set(re.findall(r'^\s*open\s+([A-Za-z_][\w.]*)\s*$', masked, re.M))
    exports = {}
    for token in re.finditer(r'#lw_dependencies\b', masked):
        match = re.match(r'#lw_dependencies\s+([A-Za-z_][\w.]*)\s+to\b',
                         masked[token.start():])
        if match is None:
            raise ValueError('unrecognized dependency export: ' + target)
        end = token.start() + match.end()
        positions = [start for start in strings if start >= end]
        start = min(positions) if positions else None
        if start is None or masked[end:start].strip():
            raise ValueError('dependency output must be a literal path: ' + target)
        graph = json.loads(source[start:strings[start]])
        if not re.fullmatch(r'work/[A-Za-z0-9_.-]+-graph\.json', graph):
            raise ValueError('unconfined graph output: ' + str(graph))
        safe_path(root, graph)
        declaration = match[1]
        if '.' not in declaration:
            if len(opened) != 1:
                raise ValueError('ambiguous short dependency root: ' + declaration)
            declaration = next(iter(opened)) + '.' + declaration
        if graph in exports and exports[graph] != declaration:
            raise ValueError('different roots overwrite one graph: ' + graph)
        exports[graph] = declaration
    if not exports:
        raise ValueError('target has no explicit dependency exports: ' + target)
    return exports


def safe_path(root, relative):
    """Reject symlinks, traversal and nonregular existing storage paths."""
    if Path(relative).is_absolute() or '..' in Path(relative).parts:
        raise ValueError('unsafe storage path: ' + str(relative))
    path = root / relative
    if confined(root, str(relative)) != path or path.is_symlink():
        raise ValueError('storage path traverses a symlink: ' + str(relative))
    if path.exists() and not path.is_file():
        raise ValueError('storage path is not a regular file: ' + str(relative))
    return path


def file_state(path):
    if not path.exists():
        return None
    stat = path.stat()
    return (stat.st_dev, stat.st_ino, stat.st_size, stat.st_mtime_ns, stat.st_ctime_ns)


def stream_sha(stream):
    digest = hashlib.sha256()
    for chunk in iter(lambda: stream.read(1024 * 1024), b''):
        digest.update(chunk)
    return digest.hexdigest()


def file_sha(path):
    with path.open('rb') as stream:
        return stream_sha(stream)


def gzip_sha(path):
    with gzip.open(path, 'rb') as stream:
        return stream_sha(stream)


def archive_raw(root, relative, raw_sha):
    """Write an immutable path-and-content-addressed archive and read it back."""
    raw = safe_path(root, relative)
    key = hashlib.sha256(relative.encode()).hexdigest()
    name = f'reports/dependencies/method-exports/{key}/{raw_sha}.json.gz'
    archive = safe_path(root, name)
    archive.parent.mkdir(parents=True, exist_ok=True)
    if archive.exists():
        if gzip_sha(archive) != raw_sha:
            raise ValueError('existing content archive is corrupt: ' + name)
        return name
    fd, temporary = tempfile.mkstemp(prefix='.graph-', dir=archive.parent)
    temp = Path(temporary)
    try:
        with os.fdopen(fd, 'wb') as output:
            with gzip.GzipFile(filename='', fileobj=output, mode='wb', mtime=0) as compressed:
                with raw.open('rb') as source:
                    shutil.copyfileobj(source, compressed, 1024 * 1024)
            output.flush()
            os.fsync(output.fileno())
        if gzip_sha(temp) != raw_sha:
            raise ValueError('gzip round trip changed raw bytes: ' + relative)
        try:
            os.link(temp, archive)
        except FileExistsError:
            if gzip_sha(archive) != raw_sha:
                raise ValueError('concurrent archive collision: ' + name)
        return name
    finally:
        temp.unlink(missing_ok=True)


def recipe_archive(root, recipe, canonical, raw_sha):
    """Refresh the existing consumer alias, preserving any previous gzip bytes."""
    rid = recipe['id']
    if not re.fullmatch(r'[A-Za-z0-9_.-]+', rid) or rid in {'.', '..'}:
        raise ValueError('unsafe recipe archive id: ' + str(rid))
    name = 'reports/dependencies/methods/' + rid + '.json.gz'
    alias = safe_path(root, name)
    source = safe_path(root, canonical)
    if gzip_sha(source) != raw_sha:
        raise ValueError('canonical archive changed: ' + canonical)
    alias.parent.mkdir(parents=True, exist_ok=True)
    before = file_state(alias)
    previous = None
    if before is not None:
        old_sha = file_sha(alias)
        old_raw_sha = gzip_sha(alias)  # Refuse to silently overwrite corruption.
        if old_raw_sha == raw_sha:
            return name, None
        previous = f'reports/dependencies/method-alias-history/{rid}/{old_sha}.json.gz'
        backup = safe_path(root, previous)
        backup.parent.mkdir(parents=True, exist_ok=True)
        if backup.exists():
            if file_sha(backup) != old_sha:
                raise ValueError('historical alias collision: ' + previous)
        else:
            # Copy rather than hard-linking the mutable alias; a later writer
            # must not be able to change the preserved historical bytes.
            with backup.open('xb') as output, alias.open('rb') as content:
                shutil.copyfileobj(content, output, 1024 * 1024)
                output.flush()
                os.fsync(output.fileno())
        if file_sha(backup) != old_sha or gzip_sha(backup) != old_raw_sha:
            raise ValueError('historical alias backup failed: ' + previous)
    fd, temporary = tempfile.mkstemp(prefix='.alias-', dir=alias.parent)
    temp = Path(temporary)
    try:
        with os.fdopen(fd, 'wb') as output, source.open('rb') as content:
            shutil.copyfileobj(content, output, 1024 * 1024)
            output.flush()
            os.fsync(output.fileno())
        if gzip_sha(temp) != raw_sha or file_state(alias) != before:
            raise ValueError('recipe archive changed during replacement: ' + name)
        os.replace(temp, alias)
        if gzip_sha(alias) != raw_sha:
            raise ValueError('recipe archive readback failed: ' + name)
        return name, previous
    finally:
        temp.unlink(missing_ok=True)


def record_target(root, target):
    """Run the unchanged recorder and obtain this invocation's exact record."""
    before = set((root / 'runs').glob('*/run.json'))
    result = subprocess.run(
        [sys.executable, 'scripts/run.py', '--timeout', '900', '--',
         'lake', 'env', 'lean', target], cwd=root, check=False,
        capture_output=True, text=True)
    if result.stdout:
        print(result.stdout, end='')
    if result.stderr:
        print(result.stderr, end='', file=sys.stderr)
    if result.returncode:
        return result.returncode, None
    message = json.loads(result.stdout)
    name = message['run']
    if not re.fullmatch(r'runs/[A-Za-z0-9_-]+/run\.json', name):
        raise ValueError('recorder returned an unsafe run path')
    record = safe_path(root, name)
    if record in before or message.get('exit_code') != 0:
        raise ValueError('recorder did not produce a new successful run')
    return 0, name



def preserve_existing_graphs(root, target, exports):
    """Preserve old raw bytes before a build or Lean can overwrite their paths.

    This is a recovery copy, not evidence of a current successful proof. Its
    immutable manifest is durable before the writer is launched.
    """
    before, backups = {}, []
    for relative in exports:
        raw = safe_path(root, relative)
        state = file_state(raw)
        before[relative] = state
        if state is None:
            continue
        digest = file_sha(raw)
        archive = archive_raw(root, relative, digest)
        if file_state(raw) != state or file_sha(raw) != digest:
            raise ValueError('existing raw graph changed during preservation: ' + relative)
        backups.append({'raw_path': relative, 'raw_sha256': digest, 'archive': archive,
                        'archive_sha256': file_sha(root / archive), 'raw_state': state})
    if not backups:
        return before, None
    manifest = {'target': target, 'purpose': 'recoverable preexisting raw bytes; not current proof evidence',
                'entries': backups}
    encoded = json.dumps(manifest, sort_keys=True, indent=2) + '\n'
    key = hashlib.sha256(encoded.encode()).hexdigest()
    name = f'reports/method-graph-preserved/{key}.json'
    path = safe_path(root, name)
    path.parent.mkdir(parents=True, exist_ok=True)
    try:
        with path.open('x') as output:
            output.write(encoded)
            output.flush()
            os.fsync(output.fileno())
    except FileExistsError:
        if path.read_text() != encoded:
            raise ValueError('preexisting graph manifest collision')
    if path.read_text() != encoded:
        raise ValueError('preexisting graph manifest readback failed')
    return before, name


def archive_target(root, target, members, exports, before, run_path, nodes):
    """Preserve all current exports before removing any newly generated copy.

    Validation failures are archived as failures and returned to the caller;
    archival never turns dependency, axiom, line or semantic failure into pass.
    Missing/corrupt provenance aborts before deleting any raw graph.
    """
    required = local_import_closure(root, [target])
    required += ['lean-toolchain', 'lake-manifest.json', 'lakefile.toml']
    run = verify_run(root, run_path, required, ['lake', 'env', 'lean', target])
    entries, errors = [], []
    by_graph = {}
    for recipe in members:
        by_graph.setdefault(recipe['graph'], []).append(recipe)
    for relative, declaration in exports.items():
        raw = safe_path(root, relative)
        state = file_state(raw)
        if state is None or state == before[relative]:
            raise ValueError('expected graph was not regenerated: ' + relative)
        digest = file_sha(raw)
        if run.get('artifact_sha256', {}).get(relative) != digest:
            raise ValueError('recorded raw graph hash mismatch: ' + relative)
        graph = read(raw)
        if graph.get('roots') != [declaration]:
            raise ValueError('exported root differs from directive: ' + relative)
        audit = graph_audit(graph)
        if audit['status'] != 'passed':
            errors.append({'graph': relative, 'error': 'graph audit ' + audit['status']})
        collector = graph.get('lean_collected_axioms')
        if not isinstance(collector, list) or not all(isinstance(a, str) for a in collector):
            errors.append({'graph': relative, 'error': 'missing or malformed Lean axiom collector'})
        elif set(audit['axioms']) != set(collector):
            errors.append({'graph': relative, 'error': 'Lean axiom collector differs from graph audit'})
        for recipe in by_graph.get(relative, []):
            try:
                validate_recipe(recipe, nodes, graph)
                if graph['roots'] != [recipe['root']]:
                    raise ValueError('recipe export must have exactly one matching root')
            except (KeyError, ValueError) as exc:
                errors.append({'recipe': recipe['id'], 'graph': relative, 'error': str(exc)})
        canonical = archive_raw(root, relative, digest)
        aliases, previous = [], []
        for recipe in by_graph.get(relative, []):
            alias, old = recipe_archive(root, recipe, canonical, digest)
            aliases.append(alias)
            if old:
                previous.append(old)
        entries.append({'raw_path': relative, 'root': declaration, 'raw_sha256': digest,
                        'archive': canonical, 'archive_sha256': file_sha(root / canonical),
                        'recipe_archives': aliases, 'previous_recipe_archives': previous,
                        'raw_existed_before': before[relative] is not None,
                        'raw_state': state})
    if set(by_graph) - set(exports):
        raise ValueError('recipe outputs missing from full export inventory')
    manifest = {'schema_version': '1', 'target': target, 'run': run_path,
                'git_commit': run['inputs']['git_commit'], 'entries': entries,
                'validation_errors': errors, 'validation_status': 'failed' if errors else 'passed',
                'scope': 'lossless storage plus graph/recipe checks; no semantic or ready promotion'}
    name = 'reports/method-graph-archives/' + Path(run_path).parent.name + '.json'
    manifest_path = safe_path(root, name)
    manifest_path.parent.mkdir(parents=True, exist_ok=True)
    encoded = json.dumps(manifest, ensure_ascii=False, indent=2) + '\n'
    # Exclusive creation keeps each original run's provenance immutable.
    with manifest_path.open('x') as output:
        output.write(encoded)
        output.flush()
        os.fsync(output.fileno())
    if manifest_path.read_text() != encoded:
        raise ValueError('archive manifest readback failed')
    for entry in entries:
        raw = safe_path(root, entry['raw_path'])
        if (file_state(raw) != entry['raw_state'] or file_sha(raw) != entry['raw_sha256']
                or gzip_sha(safe_path(root, entry['archive'])) != entry['raw_sha256']):
            raise ValueError('graph changed before recoverable cleanup: ' + entry['raw_path'])
    # Only paths absent before this invocation may be removed. Existing raw
    # files remain in place, even after an identical verified compressed copy.
    for entry in entries:
        if not entry['raw_existed_before']:
            raw = safe_path(root, entry['raw_path'])
            if file_state(raw) != entry['raw_state'] or file_sha(raw) != entry['raw_sha256']:
                raise ValueError('raw graph changed during cleanup: ' + entry['raw_path'])
            raw.unlink()
    return {'manifest': name, 'export_count': len(entries),
            'raw_copies_removed': sum(not e['raw_existed_before'] for e in entries),
            'validation_errors': errors}


def archived_replay(root, recipes, targets, all_targets, all_requested):
    """Opt-in, one-driver-at-a-time bounded raw storage; defaults are unchanged."""
    if not all_requested or sorted(targets) != sorted(all_targets):
        raise ValueError('archive mode requires the full --all target set')
    root = root.resolve()
    nodes = {p.stem: read(p) for p in sorted((root / 'knowledge/method_nodes').glob('*.json'))}
    grouped = {}
    ids = set()
    for recipe in recipes:
        if recipe['id'] in ids:
            raise ValueError('duplicate recipe archive id: ' + recipe['id'])
        ids.add(recipe['id'])
        grouped.setdefault(recipe['lean_file'], []).append(recipe)
    # Preflight the complete registry, even when only stale targets are selected.
    # Different drivers may repeat the same root, but may never overwrite an
    # output path with a different root.
    inventory, owners = {}, {}
    for target in all_targets:
        exports = graph_exports(root, target)
        inventory[target] = exports
        for relative, declaration in exports.items():
            if relative in owners and owners[relative] != declaration:
                raise ValueError('cross-target graph root collision: ' + relative)
            owners[relative] = declaration
    results = []
    for target in targets:
        plan = target_plan(root, target)
        result = {'target': target, 'dependency_build_exit_code': None, 'lean_exit_code': None,
                  'project_imports': plan['project_imports'],
                  'recipes': [r['id'] for r in grouped[target]], 'missing_graphs': [],
                  'exit_code': 1}
        results.append(result)
        try:
            exports = inventory[target]
            before, preserved = preserve_existing_graphs(root, target, exports)
            result['preexisting_graph_manifest'] = preserved
            outcome = build_target_plan(plan)
            result.update(outcome, exit_code=outcome['dependency_build_exit_code'])
            if result['exit_code']:
                continue
            code, run_path = record_target(root, target)
            result['lean_exit_code'] = code
            result['exit_code'] = code
            if code:
                # Failed Lean may leave partial raw output. Preserve it and stop
                # rather than accumulating unverified output without a bound.
                break
            stored = archive_target(root, target, grouped[target], exports, before, run_path, nodes)
            result['graph_storage'] = stored
            result['exit_code'] = int(bool(stored['validation_errors']))
        except (OSError, EOFError, KeyError, ValueError) as exc:
            result['storage_error'] = str(exc)
            result['exit_code'] = 1
            break
    reports = root / 'reports'
    reports.mkdir(exist_ok=True)
    (reports / 'method-targets.json').write_text(json.dumps(results, indent=2) + '\n')
    selection = {'mode': 'all' if all_requested else 'stale_evidence_only',
                 'registered_target_count': len(all_targets), 'selected_target_count': len(targets),
                 'skipped_current_target_count': len(all_targets) - len(targets),
                 'selected_targets': targets, 'attempted_target_count': len(results),
                 'unattempted_targets': targets[len(results):], 'jobs': 1,
                 'graph_storage': 'verified_lossless_gzip_serial_opt_in',
                 'dependency_build_strategy': 'serial_build_record_verify_archive_per_target',
                 'safety_gate': 'exact recorded input/output hashes; all exports; graph/axiom/recipe checks'}
    (reports / 'method-target-selection.json').write_text(json.dumps(selection, indent=2) + '\n')
    return int(len(results) != len(targets) or any(r['exit_code'] for r in results))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--all', action='store_true',
                        help='replay every registered method target')
    parser.add_argument('--archive-graphs', action='store_true',
                        help='requires --all; serial replay with verified lossless graph archives; no promotion')
    parser.add_argument('--jobs', type=int, default=None,
                        help='number of independent Lean targets to check concurrently (1-4)')
    args = parser.parse_args()
    if args.archive_graphs and not args.all:
        parser.error('--archive-graphs requires --all to retain all-export validation coverage')
    args.jobs = args.jobs if args.jobs is not None else (1 if args.archive_graphs else 2)
    if args.archive_graphs and args.jobs != 1:
        parser.error('--archive-graphs requires --jobs 1')
    if not 1 <= args.jobs <= 4:
        parser.error('--jobs must be between 1 and 4')
    recipes = [read(p) for p in sorted((ROOT / 'knowledge/recipes').glob('*.json'))]
    missing_directives = missing_graph_directives(ROOT, recipes)
    if missing_directives:
        print(json.dumps({'error': 'missing_graph_directives',
                          'recipes': missing_directives}, ensure_ascii=False, indent=2),
              file=sys.stderr)
        return 1
    all_targets = sorted({r['lean_file'] for r in recipes})
    targets = all_targets if args.all else select_targets(
        recipes, lambda r: evidence_is_current(ROOT, r))
    if args.archive_graphs:
        return archived_replay(ROOT, recipes, targets, all_targets, args.all)
    plans = [target_plan(ROOT, target) for target in targets]
    outcomes = {plan['target']: build_target_plan(plan) for plan in plans}
    runnable = [plan['target'] for plan in plans
                if outcomes[plan['target']]['dependency_build_exit_code'] == 0]
    with ThreadPoolExecutor(max_workers=args.jobs) as executor:
        lean_codes = dict(zip(runnable, executor.map(run_lean_target, runnable)))
    for target, lean_exit in lean_codes.items():
        outcomes[target]['lean_exit_code'] = lean_exit
    results = []
    for plan in plans:
        target = plan['target']
        outcome = outcomes[target]
        members = [r for r in recipes if r['lean_file'] == target]
        missing_graphs = [r['graph'] for r in members
                          if not (ROOT / r['graph']).is_file()]
        dependency_exit = outcome['dependency_build_exit_code']
        lean_exit = outcome['lean_exit_code']
        exit_code = dependency_exit or lean_exit or int(bool(missing_graphs))
        results.append({
            'target': target,
            'exit_code': exit_code,
            'dependency_build_exit_code': dependency_exit,
            'lean_exit_code': lean_exit,
            'project_imports': plan['project_imports'],
            'recipes': [r['id'] for r in members],
            'missing_graphs': missing_graphs,
        })
    (ROOT / 'reports/method-targets.json').write_text(
        json.dumps(results, indent=2) + '\n')
    selection = {
        'mode': 'all' if args.all else 'stale_evidence_only',
        'registered_target_count': len(all_targets),
        'selected_target_count': len(targets),
        'skipped_current_target_count': len(all_targets) - len(targets),
        'selected_targets': targets,
        'jobs': args.jobs,
        'dependency_build_strategy':
            'serial_per_target_build_then_parallel_isolated_check_continue_on_failure',
        'safety_gate':
            'check_method_recipes.proof_evidence over Lean import closure and graph hash',
    }
    (ROOT / 'reports/method-target-selection.json').write_text(
        json.dumps(selection, indent=2) + '\n')
    return int(any(r['exit_code'] for r in results))


if __name__ == '__main__':
    raise SystemExit(main())
