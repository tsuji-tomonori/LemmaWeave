# 雌牛と妊娠中の雌牛の頭数を求める

44頭の半数が雌、その雌の半数が妊娠中であるときの頭数を求める。

**取得済み固定GSM8Kの1問。**

- 二つ目の50%は全44頭ではなく雌22頭に適用する。

## cows_female：雌牛の頭数を求める

条件：44頭の50%が雌。

根拠：

得られること：雌は22頭。

既習の根拠：44÷2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.cows_female`。

## cows_pregnant：妊娠中の雌牛を求める

条件：雌22頭の50%が妊娠中。

根拠：

得られること：妊娠中の雌牛は11頭。

既習の根拠：22÷2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.cows_pregnant`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913C.cows_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
