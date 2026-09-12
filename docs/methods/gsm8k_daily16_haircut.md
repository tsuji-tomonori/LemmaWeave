# 週末の散髪代

月曜の散髪代が18ドルで週末は50%高いとき、前日の日曜の代金を求める。

**取得済み固定GSM8Kの1問。**

- 月曜の前日は日曜で、週末料金を適用する。

## haircut_increase：週末の増額

条件：平日18ドルの50%を加算する。

根拠：

得られること：増額は9ドル。

既習の根拠：50%は半分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.haircut_increase`。

## haircut_weekend：日曜の散髪代

条件：平日18ドルに増額9ドルを加える。

根拠：

得られること：日曜なら27ドル。

既習の根拠：基準額と増額の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.haircut_weekend`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909E.haircut_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
