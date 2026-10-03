# 30%短縮後のCM時間

30秒のCMを30%短縮した後の長さを求める。

**取得済み固定GSM8Kの1問。**

- 30%を短縮後の割合ではなく取り除く長さへ適用し、元の長さから引く。

## commercial_reduction：短縮する秒数

条件：元のCMは30秒で、その30%を短縮する。

根拠：

得られること：短縮量は9秒。

既習の根拠：100×短縮量＝割合×元の量の比例式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.commercial_reduction`。

## commercial_final：短縮後の長さ

条件：元の30秒から9秒を取り除く。

根拠：

得られること：短縮後は21秒。

既習の根拠：元の長さ＝短縮量＋残る長さ。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.commercial_final`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912A.commercial_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
