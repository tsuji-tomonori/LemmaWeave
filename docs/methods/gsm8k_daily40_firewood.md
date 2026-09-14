# 薪の残りの担当量

3人の合計35ポンドから2人分を引き、Elaの量を求める。

**取得済み固定GSM8Kの1問。**

- 3人の収集量は重複せず合計できる。

## firewood_known：既知の2人分

条件：Kimberleyが10、Houstonが12ポンド。

根拠：

得られること：2人で22ポンド。

既習の根拠：既知量を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.firewood_known`。

## firewood_ela：Elaの量

条件：3人合計35ポンドから既知の22ポンドを引く。

根拠：

得られること：Elaは13ポンド。

既習の根拠：未知の一部分=全体−既知部分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.firewood_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915A.firewood_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
