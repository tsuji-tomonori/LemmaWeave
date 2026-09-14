# 男女比と分配

子ども180人の男女比5対7から男子数を求め、3900ドルを等分する。

**取得済み固定GSM8Kの1問。**

- 比の12部分中5部分が男子。

## ratio_boys：男子数

条件：総数180、比5対7。

根拠：

得られること：男子75人。

既習の根拠：全12部分のうち5部分を取る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.ratio_boys`。

## ratio_each：1人分

条件：75人で3900ドルを等分。

根拠：

得られること：1人52ドル。

既習の根拠：総額=人数×1人分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.ratio_each`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914E.ratio_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
