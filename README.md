# LemmaWeave（レマウィーブ）

公開されている日本の大学入試数学を原題に忠実にLean 4で形式化・証明し、使用した定義・補題・定理と依存関係を追跡するPhase 1プロジェクトです。

現在は環境構築と監査基盤の検証中です。実問題のLean検証済み件数は0です。未実行・失敗・部分完了を成功とは扱いません。

- [開始状態](START_HERE.md)
- [最新の環境構築試行](reports/environment-retry.json)
- [初回報告](reports/SESSION_REPORT.md)
- [再開手順](docs/RESUME.md)
- [要件](REQUIREMENTS.md)
- [受入条件](docs/ACCEPTANCE.md)

Lean名前空間は `LemmaWeave`、ローカルプロジェクト名は `lemmaweave` です。固定版は `leanprover/lean4:v4.33.1` です。GitHub Actionsで構築を試しています。

教科書全文と教材UIは今回の対象外です。原資料のPDFや画像はこのリポジトリに含みません。

受領時のREADMEとチェックサムは `docs/RECEIVED_PACKAGE_README.md` と `environment/received-package.SHA256SUMS` に保持しています。
