# 時給を分給に換算する

時給12ドルで50分の子守をしたWengの報酬は？

**既に収集したGSM8Kの1問。入試問題数・新規収集数には加えない。**

- 端数時間も比例配分する有理数モデル。実在の給与規則を追加しない。

## earnings_minute：分給

条件：1時間60分、時間比例で途中丸めなし。

根拠：

得られること：12÷60=1/5ドル/分。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.earnings_minute`。

## earnings_pay：50分の報酬

条件：分給1/5ドルで50分。

根拠：

得られること：(1/5)×50=10ドル。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.earnings_pay`。

## earnings_units：単位換算の整合

条件：時間と分をそろえる。

根拠：[単価と時間の単位を換算する](rate_conversion.md)

得られること：(12÷60)×50=12×(50÷60)。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.earnings_units`。

## earnings_exists：充足例

条件：報酬10ドルを元の比例式へ戻す。

根拠：

得られること：10=(12÷60)×50で条件を満たす。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.earnings_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KFirstSteps.earnings_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
