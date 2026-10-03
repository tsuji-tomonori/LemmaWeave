#!/usr/bin/env python3
"""Import one pinned GSM8K release into a separate, unverified collection.

Only metadata belongs in Git; --output and --archive must be outside the repo.
No LLM calls, model training, solution extraction, or Lean verification occur.
"""
from __future__ import annotations

import argparse
from collections import Counter, defaultdict
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import tempfile
import unicodedata
import urllib.request
import zipfile

COMMIT = '3101c7d5072418e28b9008a6636bde82a006892c'
BASE = f'https://raw.githubusercontent.com/openai/grade-school-math/{COMMIT}/'
FILES = {
    'train.jsonl': 'grade_school_math/data/train.jsonl',
    'test.jsonl': 'grade_school_math/data/test.jsonl',
    'LICENSE': 'LICENSE',
}
COLLECTION = 'external-gsm8k-main-' + COMMIT[:12]
LIMIT = 32 * 1024 * 1024


def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def write_json(path: Path, value: object) -> None:
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')


def normalize_question(text: str) -> str:
    # Deliberately conservative: do not erase punctuation, case, numbers or units.
    return ' '.join(unicodedata.normalize('NFC', text).split())


def fetch(url: str) -> bytes:
    request = urllib.request.Request(url, headers={'User-Agent': 'LemmaWeave-corpus-import/1.0'})
    with urllib.request.urlopen(request, timeout=60) as response:
        data = response.read(LIMIT + 1)
    if len(data) > LIMIT:
        raise ValueError('Source exceeds per-file size limit')
    return data


def import_collection(output: Path) -> dict:
    output.mkdir(parents=True, exist_ok=True)
    if any(output.iterdir()):
        raise ValueError('Output must be empty; preserve previous attempt records in their own directory')
    started = datetime.now(timezone.utc).isoformat()
    attempts: list[dict] = []
    try:
        for filename, relative in FILES.items():
            attempt = {'filename': filename, 'url': BASE + relative, 'status': 'started'}
            attempts.append(attempt)
            write_json(output / 'attempts.json', attempts)
            try:
                data = fetch(attempt['url'])
                (output / filename).write_bytes(data)
                attempt.update(status='succeeded', byte_count=len(data), sha256=sha(data))
            except Exception as exc:
                attempt.update(status='failed', error_type=type(exc).__name__, error=str(exc))
                raise
            finally:
                write_json(output / 'attempts.json', attempts)
        license_text = (output / 'LICENSE').read_text(encoding='utf-8')
        if 'MIT License' not in license_text or 'Copyright (c) 2021 OpenAI' not in license_text:
            raise ValueError('Pinned license does not match expected MIT notice')
        rows = []
        raw_questions: Counter[str] = Counter()
        canonical_questions: Counter[str] = Counter()
        splits: dict[str, set[str]] = defaultdict(set)
        split_counts: dict[str, int] = {}
        for split in ('train', 'test'):
            lines = (output / f'{split}.jsonl').read_text(encoding='utf-8').splitlines()
            split_counts[split] = len(lines)
            for index, line in enumerate(lines):
                item = json.loads(line)
                if not isinstance(item, dict) or not all(isinstance(item.get(key), str) and item[key].strip() for key in ('question', 'answer')):
                    raise ValueError(f'Invalid source record at {split}:{index + 1}')
                normalized = normalize_question(item['question'])
                raw_hash = sha(item['question'].encode())
                canonical_hash = sha(normalized.encode())
                raw_questions[raw_hash] += 1
                canonical_questions[canonical_hash] += 1
                splits[split].add(canonical_hash)
                rows.append({
                    'occurrence_id': f'{COLLECTION}:{split}:{index:05d}',
                    'collection_id': COLLECTION,
                    'upstream_commit': COMMIT,
                    'split': split,
                    'source_line_1based': index + 1,
                    'source_record_sha256': sha(line.encode()),
                    'question': item['question'],
                    'normalized_question': normalized,
                    'raw_question_sha256': raw_hash,
                    'normalized_question_sha256': canonical_hash,
                    'source_answer': item['answer'],
                    'source_answer_status': 'unverified_reference',
                    'semantic_status': 'not_reviewed',
                    'method_extraction_status': 'not_started',
                    'lean_proof_status': 'not_started',
                    'curriculum_mapping_status': 'not_reviewed',
                    'japanese_entrance_exam': False,
                })
        normalized_path = output / 'normalized.jsonl'
        with normalized_path.open('w', encoding='utf-8') as stream:
            for row in rows:
                stream.write(json.dumps(row, ensure_ascii=False, sort_keys=True) + '\n')
        manifest = {
            'schema_version': '1.0',
            'collection_id': COLLECTION,
            'import_status': 'succeeded',
            'started_at': started,
            'finished_at': datetime.now(timezone.utc).isoformat(),
            'upstream_repository': 'https://github.com/openai/grade-school-math',
            'upstream_commit': COMMIT,
            'license': 'MIT',
            'license_evidence': ['https://huggingface.co/datasets/openai/gsm8k', BASE + 'LICENSE'],
            'license_notice_preserved_in_archive': True,
            'source_files': attempts,
            'counts': {
                'source_rows': len(rows),
                'split_rows': split_counts,
                'exact_question_unique': len(raw_questions),
                'exact_question_duplicate_excess': len(rows) - len(raw_questions),
                'normalized_question_unique': len(canonical_questions),
                'normalized_question_duplicate_excess': len(rows) - len(canonical_questions),
                'normalized_cross_split_overlap': len(splits['train'] & splits['test']),
                'semantic_checked': 0,
                'method_extracted': 0,
                'lean_verified': 0,
            },
            'normalization': 'Unicode NFC then collapse whitespace; no semantic-equivalence claim',
            'normalized_artifact': {'filename': 'normalized.jsonl', 'sha256': sha(normalized_path.read_bytes()), 'byte_count': normalized_path.stat().st_size},
            'source_answer_status': 'unverified_reference',
            'japanese_entrance_exam': False,
            'japanese_curriculum_coverage': 'not_reviewed',
            'evaluation_note': 'Preserve original test split; imported benchmark items are not unseen evaluation data.',
            'scope_note': 'Separate external collection; do not add these rows to the existing Japanese entrance-exam problem count.',
            'attempt_note': 'Only this attempt is recorded here; prior failed attempts must not be promoted to success.',
        }
        write_json(output / 'manifest.json', manifest)
        return manifest
    except Exception as exc:
        write_json(output / 'manifest.json', {'collection_id': COLLECTION, 'import_status': 'failed', 'started_at': started, 'finished_at': datetime.now(timezone.utc).isoformat(), 'attempts': attempts, 'error_type': type(exc).__name__, 'error': str(exc)})
        raise


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--archive', type=Path, required=True)
    parser.add_argument('--manifest', type=Path, required=True)
    args = parser.parse_args()
    repo = Path(__file__).resolve().parents[1]
    for target in (args.output, args.archive):
        if target.resolve().is_relative_to(repo):
            parser.error('Raw dataset/output archive must be outside the repository')
    if args.archive.exists():
        parser.error('Archive already exists; preserve previous evidence')
    manifest = import_collection(args.output)
    args.archive.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.NamedTemporaryFile(dir=args.archive.parent, suffix='.zip', delete=False) as temporary:
        archive_temp = Path(temporary.name)
    try:
        with zipfile.ZipFile(archive_temp, 'w', compression=zipfile.ZIP_DEFLATED) as archive:
            for file in sorted(args.output.iterdir()):
                archive.write(file, arcname=f'gsm8k/{file.name}')
        archive_temp.replace(args.archive)
    finally:
        archive_temp.unlink(missing_ok=True)
    manifest['archive'] = {'filename': args.archive.name, 'sha256': sha(args.archive.read_bytes()), 'byte_count': args.archive.stat().st_size}
    # External manifest adds the final archive hash without recursive self-hashing.
    args.manifest.parent.mkdir(parents=True, exist_ok=True)
    write_json(args.manifest, manifest)
    print(json.dumps({'collection_id': COLLECTION, 'counts': manifest['counts'], 'archive': manifest['archive']}, ensure_ascii=False))


if __name__ == '__main__':
    main()
