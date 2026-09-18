# 住宅の増築面積

5200平方フィートと7300平方フィートの家があり、増築後の合計が16000平方フィートになるときの増築面積を求める。

**取得済み固定GSM8Kの1問。**

- 元の2軒の合計と新しい合計の差を取る。

## house_original_total：元の合計面積

条件：2軒は5200平方フィートと7300平方フィート。

根拠：

得られること：元の合計は12500平方フィート。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.house_original_total`。

## house_expansion：増築面積

条件：新しい合計16000から元の合計12500を引く。

根拠：

得られること：増築面積は3500平方フィート。

既習の根拠：差の関係。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.house_expansion`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918A.house_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
