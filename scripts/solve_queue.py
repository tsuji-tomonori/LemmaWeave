#!/usr/bin/env python3
"""全件の作業割当と完了予測。数学の解答は生成しない。"""
import argparse
import csv
import datetime as dt
import gzip
import hashlib
import io
import json
import math
from pathlib import Path
from zoneinfo import ZoneInfo
from lw import read, verify_run, local_import_closure

ROOT = Path(__file__).resolve().parents[1]

def finish_date(start, remaining, per_day):
    if remaining == 0:
        return start.isoformat()
    if per_day <= 0:
        return None
    return (start + dt.timedelta(days=math.ceil(remaining / per_day) - 1)).isoformat()

def current_ready(root):
    """過去の件数表示だけでは昇格しない。レシピと実行入力を再照合する。"""
    ready, recipes, checked_runs = set(), {}, set()
    for p in sorted((root / 'knowledge/recipes').glob('*.json')):
        r = read(p)
        if r.get('collection_id'):
            recipes[r['problem_id']] = r
    for result in read(root / 'reports/method-recipes.json'):
        if not result.get('solution_ready'):
            continue
        matches = [r for r in recipes.values() if r['id'] == result['recipe']]
        if len(matches) != 1:
            continue
        r = matches[0]
        digest = hashlib.sha256(json.dumps(r, sort_keys=True, ensure_ascii=False).encode()).hexdigest()
        if result.get('recipe_sha256') != digest:
            continue
        evidence = result.get('proof_evidence', {})
        key = (evidence.get('run'), r['lean_file'])
        try:
            if key not in checked_runs:
                required = local_import_closure(root, [r['lean_file']])
                required += ['lean-toolchain', 'lake-manifest.json', 'lakefile.toml']
                verify_run(root, evidence['run'], required, ['lake', 'env', 'lean', r['lean_file']])
                checked_runs.add(key)
            raw = gzip.decompress((root / result['graph_archive']).read_bytes())
            if hashlib.sha256(raw).hexdigest() != evidence['raw_graph_sha256']:
                continue
            ready.add(r['problem_id'])
        except (OSError, KeyError, ValueError):
            continue
    return ready, recipes

def weekly_rate(logs, today, start):
    # 最初の7暦日が完了するまでは実測見込みを出さない。
    if today < start + dt.timedelta(days=7):
        return None
    first = today - dt.timedelta(days=7)
    by_day = {first + dt.timedelta(days=i): set() for i in range(7)}
    seen = set()
    for log in sorted(logs, key=lambda x: x.get('started_at', '')):
        date = dt.date.fromisoformat(log['date'])
        ids = set(log.get('completed_problem_ids', []))
        new = ids - seen
        seen.update(ids)
        if date in by_day:
            by_day[date].update(new)
    return sum(map(len, by_day.values())) / 7

def deferred_ids(logs, today):
    deferred = set()
    for log in logs:
        for item in log.get('deferred', []):
            if dt.date.fromisoformat(item['retry_on']) > today:
                deferred.add(item['problem_id'])
    return deferred

def make_plan(root, today):
    config = read(root / 'operations/solve-plan.json')
    imported = read(root / 'corpus/imports/gsm8k.json')
    ready, recipes = current_ready(root)
    collection = config['collection_id']
    items = []
    for split, count in imported['counts']['split_rows'].items():
        for index in range(count):
            pid = f'{collection}:{split}:{index:05d}'
            r = recipes.get(pid)
            status = ('solution_ready' if pid in ready else
                      'needs_line_expansion' if r and r.get('solution_format') != 'individual_lines_v1' else
                      'awaiting_verification' if r else 'pending')
            items.append({'problem_id': pid, 'split': split, 'source_line_1based': index+1,
                          'status': status, 'recipe_id': r['id'] if r else None})
    if len(items) != imported['counts']['exact_question_unique'] or len({x['problem_id'] for x in items}) != len(items):
        raise ValueError('queue count or identity differs from fixed manifest')
    priority = config.get('priority_source_lines', [])
    pending = [x for x in items if x['status'] != 'solution_ready']
    # 検証待ち→旧形式の仕上げ→指定された次問→未着手の順。数学の分類ではない。
    pending.sort(key=lambda x: ({'awaiting_verification': 0, 'needs_line_expansion': 1}.get(x['status'], 2),
                                0 if x['split'] == 'train' and x['source_line_1based'] in priority else 1,
                                0 if x['split'] == 'train' else 1, x['source_line_1based']))
    start = dt.date.fromisoformat(config['start_date'])
    logs = [read(p) for p in (root / 'operations/daily').glob('*.json')]
    deferred = deferred_ids(logs, today)
    eligible = [p for p in pending if p['problem_id'] not in deferred]
    # 日報だけで完了件数を増やせない。
    for log in logs:
        log['completed_problem_ids'] = [p for p in log.get('completed_problem_ids', []) if p in ready]
    rate = weekly_rate(logs, today, start)
    hours = config['local_hours']
    if len(hours) != config['runs_per_day'] or len(set(hours)) != len(hours) or config['target_per_day'] != config['target_per_run'] * len(hours):
        raise ValueError('schedule and daily target disagree')
    rows = []
    for offset in range(0, len(pending), config['target_per_run']):
        batch = pending[offset:offset+config['target_per_run']]
        slot = offset // config['target_per_run']
        date = max(today, start) + dt.timedelta(days=slot // len(hours))
        hour = hours[slot % len(hours)]
        for p in batch:
            p['planned_date'] = date.isoformat()
            p['planned_local_hour'] = hour
        rows.append({'date': date.isoformat(), 'local_hour': hour, 'target': len(batch),
                     'problem_ids': ' '.join(p['problem_id'] for p in batch)})
    progress = {'plan_id': config['id'], 'as_of_date': today.isoformat(), 'timezone': config['timezone'],
                'total': len(items), 'solution_ready': len(items)-len(pending), 'remaining': len(pending),
                'target_per_day': config['target_per_day'], 'initial_target_date': config['initial_target_date'],
                'planning_forecast_date': finish_date(max(today, start), len(pending), config['target_per_day']),
                'measured_completed_per_day_7d': rate,
                'measured_forecast_date': None if rate is None else finish_date(max(today, start), len(pending), rate),
                'forecast_status': 'not_yet_measured' if rate is None else 'stalled' if rate == 0 else 'measured',
                'deferred': sorted(deferred & {p['problem_id'] for p in pending}),
                'next_batch': eligible[:config['target_per_run']],
                'limitation_ja': '計画値と実測見込みを区別。全世界の問題・全分野の完了日ではない。'}
    return items, rows, progress

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--write', action='store_true')
    parser.add_argument('--as-of')
    args = parser.parse_args()
    today = dt.date.fromisoformat(args.as_of) if args.as_of else dt.datetime.now(ZoneInfo('Asia/Tokyo')).date()
    items, rows, progress = make_plan(ROOT, today)
    if args.write:
        raw = ''.join(json.dumps(x, ensure_ascii=False, separators=(',', ':'))+'\n' for x in items).encode()
        (ROOT / 'corpus/work_queue/gsm8k.jsonl.gz').write_bytes(gzip.compress(raw, mtime=0))
        out = io.StringIO()
        writer = csv.DictWriter(out, fieldnames=['date', 'local_hour', 'target', 'problem_ids'], lineterminator='\n')
        writer.writeheader(); writer.writerows(rows)
        (ROOT / 'operations/daily-assignments.csv').write_text(out.getvalue())
        (ROOT / 'reports/solve-progress.json').write_text(json.dumps(progress, ensure_ascii=False, indent=2)+'\n')
    print(json.dumps(progress, ensure_ascii=False, indent=2))

if __name__ == '__main__':
    main()
