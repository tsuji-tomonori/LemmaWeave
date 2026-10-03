#!/usr/bin/env python3
"""固定したローカルGSM8K原資料と解法バッチの対応を照合する。本文は出力しない。"""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
from import_gsm8k import normalize_question
from lw import read

ROOT = Path(__file__).resolve().parents[1]


def digest(value):
    return hashlib.sha256(value).hexdigest()


def check(source, batch, manifest):
    commit = subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=source, text=True).strip()
    if commit != batch['source_commit'] or commit != manifest['upstream_commit']:
        raise ValueError('source commit mismatch')
    data = (source / 'grade_school_math/data/train.jsonl').read_bytes()
    if digest(data) != batch['source_file_sha256'] or digest(data) != manifest['source_files'][0]['sha256']:
        raise ValueError('source file differs from imported bytes')
    if digest((source / 'LICENSE').read_bytes()) != manifest['source_files'][2]['sha256']:
        raise ValueError('source license changed')
    if (source / 'LICENSE').read_bytes() != (ROOT / batch['license_notice']).read_bytes():
        raise ValueError('license notice is not preserved')
    lines = data.decode('utf-8').splitlines()
    for problem in batch['problems']:
        index = problem['source_line_1based'] - 1
        if index < 0:
            raise ValueError('source line must be positive')
        line = lines[index]
        item = json.loads(line)
        expected_id = f"{manifest['collection_id']}:train:{index:05d}"
        if problem['problem_id'] != expected_id:
            raise ValueError('source occurrence ID mismatch')
        actual = {'source_record_sha256': digest(line.encode()),
                  'raw_question_sha256': digest(item['question'].encode()),
                  'normalized_question_sha256': digest(normalize_question(item['question']).encode())}
        if any(problem[k] != value for k, value in actual.items()):
            raise ValueError('source record or question differs from reviewed item')
    return {'batch': batch['id'], 'source_commit': commit, 'source_file_sha256': digest(data),
            'records_matched': len(batch['problems']), 'license_notice_preserved': True,
            'semantic_review': 'self_review_only', 'source_text_in_output': False}


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('source_checkout', type=Path)
    args = parser.parse_args()
    print(json.dumps(check(args.source_checkout, read(ROOT / 'corpus/method_batches/GSM8K-METHOD-0001.json'),
                           read(ROOT / 'corpus/imports/gsm8k.json')), ensure_ascii=False))
