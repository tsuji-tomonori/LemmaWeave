# LemmaWeave（レマウィーブ）開始状態

ローカルプロジェクト名 `lemmaweave`、Lean名前空間 `LemmaWeave`。
この一式はPhase 1の**開始用チェックポイント**であり、検証済み問題集ではありません。

## 最初に読むファイル

- `AGENTS.md`、`REQUIREMENTS.md`、`docs/DATA_CONTRACT.md`、`docs/ACCEPTANCE.md`、`docs/MIGRATION.md`、`docs/ROADMAP.md`：受領版の正本を保持。
- `reports/SESSION_REPORT.md`：今回の実績・阻害要因・コマンド。
- `docs/RESUME.md`：次に実行する具体的操作。
- `corpus/scopes/BATCH-0001.json`：最初の5小問候補。解答欄数を小問数としない。
- `environment/pins.json`：公式の対応確認と、実行確認の区別。

既存の公開リポジトリ `tsuji-tomonori/LemmaWeave` は空でした。リモート名は観測した大文字表記を保持し、ローカル名のみ要求どおり小文字です。リモート改名・作成・push・公開・マージは実施していません。

Lean/Lake/elanはこの実行環境にありません。数学の証明試行回数は0です。環境の失敗を数学の不可能性として扱いません。教材本文やUIは作成していません。

## ローカルCLI

Python 3.12の標準ライブラリのみで動きます。

```bash
python3 scripts/lw.py --help
python3 scripts/lw.py validate
python3 scripts/lw.py report
python3 scripts/lw.py accept
python3 scripts/run.py -- lake build
python3 -m unittest discover -s tests -v
```

`validate`の終了コード0は台帳構造の検査だけです。`accept`は実装中の受入ゲートで、現段階では必ず終了コード2で不合格にします。実績の昇格を行うコマンドはまだありません。

`scripts/run.py`はシェルを介さず指定コマンドを実行し、実際の終了コードを返します。出力に秘密が含まれるコマンドには使用しないでください。環境変数全体や資格情報は収集しません。

## 検証の境界

`LemmaWeave/Audit/Extract.lean`と`tests/lean/`は未コンパイルです。Pythonテストはグラフ・台帳処理のテストであり、Lean抽出器の実行検証や数学の証明ではありません。`tests/lean/DependencyFixtures.lean`の独自公理は検出器の負例専用で、ライブラリ集約にも入試件数にも含めません。

原問題の係数等をテキスト抽出の文字化けから推測せず、Model/Goalsはまだ作成していません。原PDF・ページ画像・原文相当の転記はこの一式に含めていません。
